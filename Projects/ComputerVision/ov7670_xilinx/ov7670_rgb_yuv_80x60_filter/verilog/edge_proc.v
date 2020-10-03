//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   edge_proc.v
//   Takes an image from a memory, applies a simple edge processing (sobel)
//   and saves in another memory
//

module edge_proc
  # (parameter
      // VGA
      //c_img_cols    = 640, // 10 bits
      //c_img_rows    = 480, //  9 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;
      // c_nb_img_pxls = log2i(c_img_pxls-1) + 1
      //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288
      // QQVGA
      //c_img_cols    = 160, // 8 bits
      //c_img_rows    = 120, //  7 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_img_pxls =  15,  //160*120=19.200 -> 2^15
      // QQVGA /2
      c_img_cols    = 80, // 7 bits
      c_img_rows    = 60, //  6 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls =  13,  //80*60=4800 -> 2^13
      c_nb_line_pxls = 7, // log2i(c_img_cols-1) + 1;
      c_nb_rows     = 6, // log2i(c_img_rows-1) + 1;

    c_nb_buf_gray  =  8,  // n bits for gray in the buffer (memory)
    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)
    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)
    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)
    // word width of the memory (buffer)
    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue
  )
  (
    input          rst,       //reset, active high
    input          clk,       //fpga clock
    // x0: no filter; 01: horizontal; 11: vertical
    input  [1:0]   edgefilter, // color filter to be applied
    // Address and pixel of original image
    input  [c_nb_buf-1:0]      orig_pxl,  //pixel from original image
    output [c_nb_img_pxls-1:0] orig_addr, //pixel mem address original img
    // Address and pixel of processed image
    output                     proc_we,  //write enable, to write processed pxl
    output reg [c_nb_buf_gray-1:0] proc_pxl, // processed pixel to be written
    output [c_nb_img_pxls-1:0] proc_addr // address of processed pixel
  );

  wire        filter_on;  // edge filter on
  wire        vfilter;    // vertical filter

  reg [c_nb_img_pxls-1:0]  cnt_pxl;
  // this is the pixel number entering, since it comes delayed from the memory
  reg [c_nb_img_pxls-1:0]  pxl_in_num;
  wire        end_pxl_cnt;
  reg         receiving;

  parameter  BLACK_PXL = {c_nb_img_pxls{1'b0}};

  // pixel kernel ordering. gray leves are 8 bits
  //  p00 p01 p02
  //  p10 p11 p12
  //  p20 p21 p22
  reg [c_nb_buf_gray-1:0]  p00, p01, p02;
  reg [c_nb_buf_gray-1:0]  p10, p11, p12;
  reg [c_nb_buf_gray-1:0]  p20, p21, p22;

  // sobel operations
  // Horizontal
  wire [c_nb_buf_gray:0]   p_22_20, p_02_00; //1bit more
  wire [c_nb_buf_gray+1:0] p_top, p_bot;     //2bits more
  // one more bit for the sign
  //wire [c_nb_buf_gray+2:0] p_sobel_hor_sign; //3bits more
  wire [c_nb_buf_gray+2:0] p_sobel_hor_abs;  //3bits more
  // final result, same number of bits
  wire [c_nb_buf_gray-1:0] p_sobel_hor; 

  // Vertical
  wire [c_nb_buf_gray:0]   p_22_02, p_20_00; //1bit more
  wire [c_nb_buf_gray+1:0] p_left, p_right;  //2bits more
  // one more bit for the sign
  //wire [c_nb_buf_gray+2:0] p_sobel_ver_sign; //3bits more
  wire [c_nb_buf_gray+2:0] p_sobel_ver_abs;  //3bits more
  // final result, same number of bits
  wire [c_nb_buf_gray-1:0] p_sobel_ver;

  
  // substract 3 because 3 pixels are out of the buffer to compute the kernel
  reg   [c_nb_buf_gray-1:0] cirbuf1[0:c_img_cols-1-3];
  reg   [c_nb_buf_gray-1:0] cirbuf2[0:c_img_cols-1-3];

  // buffers' pointer
  reg   [c_nb_line_pxls-1:0] buf_pt;
  // end of the buffers count
  wire   end_buf_cnt;

  // row and col number to avoid making divisions and multiplications
  reg [c_nb_rows-1:0]      rownum;
  reg [c_nb_line_pxls-1:0] colnum;

  // borders of the image
  wire last_col, last_row, first_col, first_row;
  wire image_border;

  // when the pxl0 (left-upper corner of image) is in the center of the kernel
  wire    pxl0_p11;


  // memory address count
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      cnt_pxl    <= 0;
      pxl_in_num <= 0;
      receiving  <= 1'b0;
    end
    else begin
      receiving <= 1'b1; // starts receiving one clock cycle later
      // data from memory received one clock cycle later
      pxl_in_num <= cnt_pxl;
      if (end_pxl_cnt )
        cnt_pxl <= 0;
      else
        cnt_pxl <= cnt_pxl + 1;
    end
  end

  assign end_pxl_cnt = (cnt_pxl == c_img_pxls-1) ? 1'b1 : 1'b0;
  assign orig_addr = cnt_pxl;


  // when the last pixel of the image is in the center of the kernel
  assign lastpxl_p11 = (pxl_in_num == c_img_cols + 1)? 1'b1 : 1'b0;

  // buffer pointer, row and column count
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      buf_pt   <= 0;
    else begin
      if (receiving) begin
        if (end_buf_cnt)
          buf_pt <= 0;
        else
          buf_pt <= buf_pt + 1;
      end
    end
  end

  // col and row numbers, to avoid division
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      colnum   <= 0;
      rownum   <= 0;
    end
    else begin
      if (receiving) begin
        if (lastpxl_p11) begin // last row and last column (last pixel)
          rownum <= 0;
          colnum <= 0;
        end
        else if (last_col) begin
          colnum <= 0;
          rownum <= rownum + 1;
        end
        else
          colnum <= colnum + 1;
      end
    end
  end

  assign end_buf_cnt  = (buf_pt == c_img_cols-1-3)? 1'b1 : 1'b0;
  assign first_col    = (colnum == 0)? 1'b1 : 1'b0;
  assign last_col     = (colnum == c_img_cols-1)? 1'b1 : 1'b0;
  assign first_row    = (rownum == 0)? 1'b1 : 1'b0;
  assign last_row     = (rownum == c_img_rows-1)? 1'b1 : 1'b0;
  assign image_border = first_col || last_col || first_row || last_row;

  // this can be a bram
  always @ (posedge clk)
  begin
    if (receiving) begin
      cirbuf1[buf_pt] <= p20;
      cirbuf2[buf_pt] <= p10;
    end
  end

  // kernel
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      p22 <= 0;
      p21 <= 0;
      p20 <= 0;
      p12 <= 0;
      p11 <= 0;
      p10 <= 0;
      p02 <= 0;
      p01 <= 0;
      p00 <= 0;
    end
    else begin
      p22 <= orig_pxl[c_nb_buf_gray-1:0];
      p21 <= p22;
      p20 <= p21;
      p12 <= cirbuf1[buf_pt];
      p11 <= p12;
      p10 <= p11;
      p02 <= cirbuf2[buf_pt];
      p01 <= p02;
      p00 <= p01;
    end
  end

  // sobel processing // check if timming is enough
  // Horizontal |(p22 + 2xp21 + p20) - (p02 + 2xp01 + p00)|
  // Horizontal top
  assign p_22_20 = p22 + p20; // p22 + p20
  assign p_top   = p_22_20 + (2*p21); // (p22+p20)+ 2xp21
  // Horizontal bottom
  assign p_02_00 = p02 + p00; // p02 + p00
  assign p_bot   = p_02_00 + (2*p01); // (p02+p00)+ 2xp01

  assign p_sobel_hor_abs = (p_top > p_bot) ? {1'b0, p_top} - {1'b0, p_bot}:
                                             {1'b0, p_bot} - {1'b0, p_top};
          
  // check if the result has overflown
  assign p_sobel_hor =(p_sobel_hor_abs[c_nb_buf_gray+2:c_nb_buf_gray]==3'b000) ?
                             p_sobel_hor_abs[c_nb_buf_gray-1:0]:
                             {(c_nb_buf_gray){1'b1}}; //max value (unsigned)
          
  // Vertical   |(p22 + 2xp12 + p02) - (p20 + 2xp10 + p00)|
  // Vertical right
  assign p_22_02 = p22 + p02; // p22 + p02
  assign p_right = p_22_02 + (2*p12); // (p22+p02)+ 2xp12
  // Vertical left
  assign p_20_00 = p20 + p00; // p20 + p00
  assign p_left  = p_20_00 + (2*p10); // (p20+p00)+ 2xp10

  assign p_sobel_ver_abs = (p_right > p_left) ? {1'b0, p_right}-{1'b0, p_left}:
                                                {1'b0, p_left}-{1'b0, p_right};

  // check if the result has overflown
  assign p_sobel_ver =(p_sobel_ver_abs[c_nb_buf_gray+2:c_nb_buf_gray]==3'b000) ?
                             p_sobel_ver_abs[c_nb_buf_gray-1 :0]:
                             {(c_nb_buf_gray){1'b1}}; //max value (unsigned)

  assign filter_on = edgefilter[0];
  assign vfilter   = edgefilter[1];

  // the central pixel of the kernel is one row and one pixel behind
  // and one pixel behind the pixel is comming (pxl_in_num)
  assign proc_addr = (pxl_in_num>=(c_img_cols+2)) ? pxl_in_num-(c_img_cols + 2):
                                     pxl_in_num+((c_img_pxls)-(c_img_cols+2));
  assign proc_we   = receiving;

  always @ (*)
  begin
    if (filter_on == 1'b0)
      proc_pxl <= p11; //Filter off, the same pixel
    else begin // filter ON
      if (image_border) 
        proc_pxl <= 0;
      else if (vfilter == 1'b0) // horizontal filter
        proc_pxl <= p_sobel_hor;
      else
        proc_pxl <= p_sobel_ver;
    end
  end

endmodule
