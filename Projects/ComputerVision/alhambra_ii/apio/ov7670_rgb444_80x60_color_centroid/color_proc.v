//------------------------------------------------------------------------------
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
      c_nb_img_pxls = $clog2(c_img_pxls), // 13,  //80*60=4800 -> 2^13

      // number of bits of the image colums and rows
      c_nb_cols     = 7,
      c_nb_rows     = 6,

      // inner frame size
      c_inframe_cols = 64, // 6 bits (0 to 63)
      c_inframe_rows = 48, // 6 bits (0 to 47)
      // total pixels in the inner frame
      c_inframe_pxls = c_inframe_cols * c_inframe_rows, // 64x48 = 3072
      // number of bits for the number of total pixels in the inner frame
      c_nb_inframe_pxls = $clog2(c_inframe_pxls), // = 12

      // histogram
      // number of bins (buckets)
      c_hist_bins = 8, // 7:0
      // number of bits needed for the histogram bins: 8 bins -> 3 bits
      c_nb_hist_bins = $clog2(c_hist_bins), // 3 bits
      // since we have 48 rows and 8 column in each ben
      // for each bin 384 (48 x 8) is the max number: 9 bits
      c_nb_hist_val = $clog2(c_inframe_rows * (c_inframe_cols/c_hist_bins)), // = 9,

      // centroid has 8 bits, it is decoded, so its not a number, to match the leds
      c_nb_centroid = 8,

      // minimum number to consider an image detected and not being noise
      // change this value
      c_min_colorpixels = 32,

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
    input          proc_ctrl, //input to control the processing (select color)
    // Address and pixel of original image
    input  [c_nb_buf-1:0]      orig_pxl,  //pixel from original image
    output [c_nb_img_pxls-1:0] orig_addr, //pixel mem address original img
    // Address and pixel of processed image
    output reg                 proc_we,  //write enable, to write processed pxl
    output reg [c_nb_buf-1:0]  proc_pxl, // processed pixel to be written
    output [c_nb_img_pxls-1:0] proc_addr, // address of processed pixel
    output reg [c_nb_centroid-1:0] centroid,
    output reg new_centroid
  );

  reg [c_nb_img_pxls-1:0]  cnt_pxl;
  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;

  wire end_pxl_cnt;
  wire end_ln;
  wire inner_frame; //if we are in the inner frame col=[8,71], row=[6,53]
  wire color_threshold; // if color threshold is active
  
  parameter limite_azul = 4'b1001; // 9 en decimal
  parameter limite_verde = 4'b1001; // 9 en decimal
  parameter  BLACK_PXL = {c_nb_img_pxls{1'b0}};
  
  integer ind; 

  // from 0 to 79 columns, 0 to 7, and 72 to 79 are taken out
  // so column  8 -> 0
  //    column 71 -> 63
  // In the inner frame In each column there are 48 rows (inner frame),
  // c_nb_hist_val: number of  bits for the value of the histogram bins
  // c_hist_bins: number of bins of the histogram
  reg [c_nb_hist_val-1:0] histogram [c_hist_bins-1:0]; 

  // total number of pixels that are above the threshold
  reg [c_nb_inframe_pxls-1:0] colorpxls;

  // total number of pixels that are above the threshold on the left side
  // bins 0 to 3
  reg [c_nb_inframe_pxls-2:0] colorpxls_left;
  reg [c_nb_inframe_pxls-2:0] colorpxls_rght;

  // total number of pixels that are above the threshold on the bins 0to2
  reg [c_nb_inframe_pxls-2:0] colorpxls_bin012;
  reg [c_nb_inframe_pxls-2:0] colorpxls_bin567; // bins 5to7

  // total number of pixels that are above the threshold on the bins 0,1
  reg [c_nb_inframe_pxls-2:0] colorpxls_bin01;
  reg [c_nb_inframe_pxls-2:0] colorpxls_bin67; // bins 6to7

  // total color pixels divided by 2
  wire [c_nb_inframe_pxls-2:0] colorpxls_half;

  // result of the division of the total number of threshold pixels
  // initially, divided by 16, could be 8
  wire [c_nb_inframe_pxls-2:0] colorpxls_div;

  
  reg [c_nb_cols-1:0] col, col_rg;
  // col_inframe is a bit less, but just in case
  wire [c_nb_cols-1:0] col_inframe;

  // indicates in which bin we are
  wire [c_nb_hist_bins-1:0] hist_bin;

  // Row number
  reg [c_nb_rows-1:0] row_num;

  // temporal calculation of the centroid
  reg [c_nb_centroid-1:0] centroid_tmp;

  // indicates if there are more threshold pixels on the left half of the
  // inner frame
  wire left;

  // indicates the absolute difference (positive) between the pixels on the
  // right and left
  wire [c_nb_inframe_pxls-2:0] absdif_lft_rght;

  reg       proc_ctrl_rg1, proc_ctrl_rg2;
  wire      pulse_proc_ctrl;
  reg [2:0] rgb_filter;

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
  assign inner_frame = (col_rg >= 8 && col_rg <= 71 &&
                        row_num >= 6 && row_num <= 53) ? 1'b1 : 1'b0;


  // inner column, when we are out of the range it doesn't matter the value
  // because shouldnt be used
  assign col_inframe = col_rg - 7'd8;
  // divide col_inframe by 8, from 64 columns to 8 -> 3 bits
  assign hist_bin = col_inframe[c_nb_hist_bins+3-1:3];

  assign color_threshold = (orig_pxl[c_msb_red] && orig_pxl[7:4]< limite_verde &&
                            orig_pxl[3:0]< limite_azul) ? 1'b1 : 1'b0;

  //reg [c_nb_hist_val-1:0] histograma [c_hist_bins-1:0];
  // saves how many red pixels are in each column. Reset in each frame
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin  
      for(ind=0;ind<c_hist_bins;ind=ind+1) begin
        histogram[ind] <=  0; //c_nb_hist_val'd0; 
      end
      colorpxls         <= 0; // c_nb_inframe_pxls'd0;
      colorpxls_left    <= 0; // (c_nb_inframe_pxls-2)'d0
      colorpxls_rght    <= 0; // 4567
      colorpxls_bin012 <= 0;
      colorpxls_bin567 <= 0; 
      colorpxls_bin01  <= 0; 
      colorpxls_bin67  <= 0; 
    end 
    else begin 
      if (end_pxl_cnt) begin
        for(ind=0;ind<c_hist_bins;ind=ind+1) begin
          histogram[ind]  <= 0; //  c_nb_hist_val'd0; 
        end
        colorpxls         <= 0; // c_nb_inframe_pxls'd0;
        colorpxls_left    <= 0; // (c_nb_inframe_pxls-2)'d0
        colorpxls_rght    <= 0; // 4567
        colorpxls_bin012 <= 0;
        colorpxls_bin567 <= 0; 
        colorpxls_bin01  <= 0; 
        colorpxls_bin67  <= 0; 
      end
      else begin
        // taking inner frame from 8 to 71-> 64 columns.
        // Taking away 8 columns at each end
        // and 6 to 53-> 48 rows. Taking away 6 rows at each end
        if (inner_frame == 1'b1) begin
          if (color_threshold == 1'b1) begin 
            histogram[hist_bin] <= histogram[hist_bin] + 1'b1;
            colorpxls <= colorpxls + 1;
            // these increments could be done combinationally by adding histograms
            // bins. not sure what is more efficient, and if done combinationally
            // it may add too many delays
            case (hist_bin)
              //c_nb_hist_bins'd0: begin
              3'd0: begin
                colorpxls_left    <= colorpxls_left + 1'b1;    //0123
                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012
                colorpxls_bin01  <= colorpxls_bin01 + 1'b1;  //01
              end
              3'd1: begin
                colorpxls_left    <= colorpxls_left + 1'b1;    //0123
                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012
                colorpxls_bin01  <= colorpxls_bin01 + 1'b1;  //01
              end
              3'd2: begin
                colorpxls_left    <= colorpxls_left + 1'b1;    //0123
                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012
              end
              3'd3: begin
                colorpxls_left    <= colorpxls_left + 1'b1;    //0123
              end
              3'd4: begin
                colorpxls_rght    <= colorpxls_rght + 1'b1;    //4567
              end
              3'd5: begin
                colorpxls_rght    <= colorpxls_rght + 1'b1;     //4567
                colorpxls_bin567 <= colorpxls_bin567 + 1'b1;  //567
              end
              3'd6: begin
                colorpxls_rght    <= colorpxls_rght + 1'b1;     //4567
                colorpxls_bin567 <= colorpxls_bin567 + 1'b1;  //567
                colorpxls_bin67  <= colorpxls_bin67 + 1'b1;   //67
              end
              3'd7: begin
                colorpxls_rght    <= colorpxls_rght + 1'b1;     //4567
                colorpxls_bin567 <= colorpxls_bin567 + 1'b1;  //567
                colorpxls_bin67  <= colorpxls_bin67 + 1'b1;   //67
              end
            endcase
          end
        end
      end
    end
  end


  assign left = (colorpxls_left > colorpxls_rght) ? 1'b1 : 1'b0;
  assign absdif_lft_rght = (left == 1'b1) ? (colorpxls_left - colorpxls_rght) :
                                            (colorpxls_rght - colorpxls_left);

  // divided by 2 -> 1 bit
  assign colorpxls_half = colorpxls[c_nb_inframe_pxls-1:1];

  // divided by 16 -> 4 bits
  assign colorpxls_div = {4'b0 , colorpxls[c_nb_inframe_pxls-1:4]};

  always @(*) 
  begin
    centroid_tmp = 0; // default assignment
    // first if the difference between the colored pixels on de left is less than
    // 16 percent (maybe it could be 8%)
    if (colorpxls <= c_min_colorpixels) // not enough color pixels detected
      centroid_tmp = 0;
    else if (absdif_lft_rght < colorpxls_div)  // consider in the middle
      centroid_tmp[4:3] = 2'b11; // 0001 1000
      //centroid_tmp = 8'b00011000;
    else if (left) begin // more threshold pixels on the left
      // start checking from the edges
      if (histogram[0] >= colorpxls_half) 
        centroid_tmp[0] = 1'b1; // 1000 0000
      else if (colorpxls_bin01 >= colorpxls_half) 
        centroid_tmp[1] = 1'b1; // 0100 0000
      else if (colorpxls_bin012 >= colorpxls_half) 
        centroid_tmp[2] = 1'b1; // 0010 0000
      else if (colorpxls_left > colorpxls_half) 
        centroid_tmp[3] = 1'b1; // 0001 0000
    end
    else begin // more pixels on the right side
      // start checking from the edges
      if (histogram[7] >= colorpxls_half) 
        centroid_tmp[7] = 1'b1; // 0000 0001
      else if (colorpxls_bin67 >= colorpxls_half) 
        centroid_tmp[6] = 1'b1; // 0000 0010
      else if (colorpxls_bin567 >= colorpxls_half) 
        centroid_tmp[5] = 1'b1; // 0000 0100
      else if (colorpxls_rght > colorpxls_half) 
        centroid_tmp[4] = 1'b1; // 0000 1000
    end
  end


  // save the centroid when finishing the frame
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin
      centroid <= 0; 
      new_centroid <= 1'b0;
    end
    else if (end_pxl_cnt) begin
      centroid <= centroid_tmp; 
      new_centroid <= 1'b1;
    end
    else
      new_centroid <= 1'b0;
  end


  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      proc_ctrl_rg1 <= 1'b0;
      proc_ctrl_rg2 <= 1'b0;
    end
    else begin
      proc_ctrl_rg1 <= proc_ctrl;
      proc_ctrl_rg2 <= proc_ctrl_rg1;
    end
  end

  // detect a pulse in proc_ctrl
  assign pulse_proc_ctrl = (proc_ctrl_rg1 & ~proc_ctrl_rg2);
  
  // changes the filter
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      rgb_filter <= 3'b000; // no filter
    end
    else begin
      if (pulse_proc_ctrl) begin
        case (rgb_filter)
          3'b000: // no filter, output same as input
            rgb_filter <= 3'b100; // red filter
          3'b100: // red filter
            rgb_filter <= 3'b010; // green filter
          3'b010: // green filter
            rgb_filter <= 3'b001; // blue filter
          3'b001: // blue filter
            rgb_filter <= 3'b110; // red and green filter
          3'b110: // red and green filter
            rgb_filter <= 3'b101; // red and blue filter
          3'b101: // red and blue filter
            rgb_filter <= 3'b011; // green and blue filter
          3'b011: // green and blue filter
            rgb_filter <= 3'b111; // red, green and blue filter
          3'b111: // red, green and blue filter
            rgb_filter <= 3'b000; // no filter
        endcase
      end
    end
  end
  
  always @ (*) // should include RGB mode
  begin
    // check on RED
    case (rgb_filter)
      3'b000: // no filter, output same as input
        proc_pxl = orig_pxl;
      3'b100: begin // red filter
        // red is different from the rest, the others should be modified
        if (color_threshold)
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b010: begin // green filter
        if (orig_pxl[c_msb_green])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b001: begin // filter blue
        if (orig_pxl[c_msb_blue])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b110: begin // filter red and green
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b101: begin // filter red and blue
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_blue])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b011: begin // filter green and blue
        if (orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b111: begin // red, green and blue filter
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
    endcase
  end

endmodule
