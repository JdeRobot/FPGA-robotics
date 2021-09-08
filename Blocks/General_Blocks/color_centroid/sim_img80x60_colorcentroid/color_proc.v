//------------------------------------------------------------------------------
//   Richard A. Nicklas
//
//   color_proc.v
//   Takes an image from a memory, light leds depending on red pixel position on frame
//   
//

module color_proc
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

    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)
    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)
    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)
    // word width of the memory (buffer)
    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue,
    // position of the most significant bits of each color
    c_msb_blue  = c_nb_buf_blue-1,
    c_msb_red   = c_nb_buf-1,
    c_msb_green = c_msb_blue + c_nb_buf_green
  )
  (
    input          rst,       //reset, active high
    input          clk,       //fpga clock
    input  [2:0]   rgbfilter, // color filter to be applied
    // Address and pixel of original image
    input  [c_nb_buf-1:0]      orig_pxl,  //pixel from original image
    output [c_nb_img_pxls-1:0] orig_addr, //pixel mem address original img
    // Address and pixel of processed image
    output reg                 proc_we,  //write enable, to write processed pxl
    output reg [c_nb_buf-1:0]  proc_pxl, // processed pixel to be written
    output [c_nb_img_pxls-1:0] proc_addr, // address of processed pixel
   output [7-1:0] pos_col_ret,
   output reg [6-1:0] reg_histograma,
   output start
  );


  reg [c_nb_img_pxls-1:0]  cnt_pxl;
  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;

  wire end_pxl_cnt;
  wire end_ln;
  wire tmpw;
  wire inner_frame; //if we are in the inner frame col=[8,71], row=[6,53]
  wire color_threshold; // if color threshold is active
  
  parameter limite_azul = 4'b1001; // 9 en decimal
  parameter limite_verde = 4'b1001; // 9 en decimal
  parameter  BLACK_PXL = {c_nb_img_pxls{1'b0}};
  

  // from 0 to 79 columns, 0 to 7, and 72 to 79 are taken out
  // so column  8 -> 0
  //    column 71 -> 63
  // In the inner frame In each column there are 48 rows (inner frame),
  reg [5:0] histograma [63:0]; 
  integer i; 
  
  reg [6-1:0] prev_high;
  reg [7-1:0] col, col_rg, col_inframe;

  // Row number
  reg [6-1:0] row_num;

  // memory address count. Pixel counter from 0 to (80x60)-1 = 4799
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      cnt_pxl <= 0;
      cnt_pxl_proc <= 0;
      proc_we <= 1'b0;    
    end
    else begin
      proc_we <= 1'b1;
      // data from memory received a clock cycle later
      // data stored in processed memory is delayed one clock cycle
      cnt_pxl_proc <= cnt_pxl;
      if (end_pxl_cnt ) begin
        cnt_pxl <= 0;
      end
      else
        cnt_pxl <= cnt_pxl + 1'b1;
    end
  end
  
  assign start = end_pxl_cnt;
  // end of the frame
  assign end_pxl_cnt = (cnt_pxl == c_img_pxls-1) ? 1'b1 : 1'b0;
  assign orig_addr = cnt_pxl;
  assign proc_addr = cnt_pxl_proc;

  // end of the line (column number 79)
  assign end_ln = (col == c_img_cols-1)? 1'b1 : 1'b0;
  
  //Row counter, from 0 to 59
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin   
      row_num <=0;
    end 
    else if (end_pxl_cnt) begin
      row_num <= 0;
    end
    else if (end_ln) begin
      row_num <= row_num +1'b1;
    end 
  end

  // number of column counter. Counts columns, from 0 to 79
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin   
      col <=0;
    end 
    else if (end_ln) begin
      col <= 0;
    end
    else begin
      col <= col +1'b1;
    end 
  end

  assign pos_col_ret = col_rg;

  //delay col, (columns)
  always @ (posedge clk, posedge rst)
  begin
    if (rst) begin
      col_rg <= 0;
    end
    else begin
      col_rg <= col;
    end
  end 

  //if we are in the inner frame col=[8,71], row=[6,53]
  assign inner_frame = (col_rg >= 8 && col_rg <= 71 && row_num >= 6 && row_num <= 53) ? 1'b1 : 1'b0;


  // inner column, when we are out of the range, it doesn't matter the value because shouldnt be used
  assign col_inframe = col_rg - 7'd8;

  assign color_threshold = (orig_pxl[c_msb_red] && orig_pxl[7:4]< limite_verde && orig_pxl[3:0]< limite_azul) ? 1'b1 : 1'b0;

  //reg [5:0] histograma [63:0];
  //histograma almacena los pixeles rojos en cada columna, se resetea cada frame
  // saves how many red pixels are in each column. Reset in each frame
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin  
      for(i=0;i<=63;i=i+1) begin
        histograma[i] <= 6'd0; 
      end
    end 
    else begin 
      if (end_pxl_cnt) begin
        for(i=0;i<=63;i=i+1) begin
          histograma[i] <= 6'd0; 
        end
      end
      else begin
      // taking a inner frame from 8 to 71-> 64 columns. Taking away 8 columns at each end
      // and 6 to 53-> 48 rows. Taking away 6 rows at each end
      if (inner_frame == 1'b1) begin
        if (color_threshold == 1'b1) begin 
          histograma[col_inframe] <= histograma[col_inframe] + 1'b1;
        end
      end
    end
  end


  assign tmpw = (prev_high < histograma[col_rg])? 1'b1 : 1'b0;

//Si prev_high < el valor actual del histograma (tmpw) asignamos el nuevo maximo
// y guardamos la columna en col

  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin   
      prev_high <=0;
    end  
   else if (end_pxl_cnt) begin
    prev_high <=0;
   end
    else if(tmpw) begin
        prev_high <= histograma[col_rg];
    end 
  end


  always @ (orig_pxl, rgbfilter) // should include RGB mode
  begin
    // check on RED
    case (rgbfilter)
      3'b000: // no filter, output same as input
        proc_pxl <= orig_pxl;
      3'b100: begin // red filter
        if (color_threshold)
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b010: begin // green filter
        if (orig_pxl[c_msb_green])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b001: begin // filter blue
        if (orig_pxl[c_msb_blue])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b110: begin // filter red and green
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b101: begin // filter red and blue
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_blue])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b011: begin // filter green and blue
        if (orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b111: begin // red, green and blue filter
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
    endcase
  end

endmodule
