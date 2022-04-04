//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   color_proc.v
//   - Takes an image from a memory,
//   - Applies a color filter to the image
//   - Saves the processed image in another memory
//   - outputs the histogram, but a special one. Divides the X (columns) in
//     c_hist_bins (8 bins), and indicates how many pixels pass the filter in that
//     bin
//
//   No longer outputs the proximity and the centroid of the detected object.
//   It seems to have another module doing it, since it might change depending
//   on how many cameras there are. The histogram is more neutral for that
//
//   inputs:
//   ---------
//   new_frame_i: this signal comes from the ov7670 camera capture
//             indicates when a complete frame has been received
//             This signal is just a clock cycle 
//             After this signal is received, there are at least 30 camera
//             lines.
//             Each line is at least 784 x 2 ov7670_clk (pclk).
//             x2 because it takes 2 camera clk cycles to send a pixel
//             if pclk is 80ns, it would be around 125 us before the first
//             pixel is received. So it will be around 6272 FPGA clock cycles
//             (20ns-50MHz). 
//             With these times, the FPGA would be in the 39th line when the
//             first pixel is received, and since the FPGA process the image
//             faster than the pixels are received, the old frame will be
//             processed before the new frame fills the buffer.
//             The FPGA takes 160 x 120 x clkfpga (20ns) = 384 us.
//             And with a 30 fps would be 33 ms. Around 100 times slower 
//             Before, this module was constantly processing, so it was out of
//             sync with the camera capture module
//
//
//
//   outputs:
//   ----------
//   histogram_o: array of vectors
//      
//      [c_nb_hist_val-1:0] histogram_o [c_hist_bins-1:0]
//       value of each bin                number of bins
//
//       Separated in 8 bins, ports cannot be array of vectors
//       colorpxls_bin0 .... colorpxls_bin7
//
//      Represents the simplified spacial histogram of the image counting the
//      number of pixels that pass the colr filter . The histogram is
//      reduced in 8 bins (buckets) (given by parameter c_hist_bins)
//      The frame of the image is reduced, taking away the borders. Given by
//      parameters: c_inframe_cols (128) and c_inframe_rows (104)
//      So each bucket comprises 16 columns
//      Buckets are numbered from 0 to 7, being 0 the leftmost.
//      The maximum value of each bucket is 1664, since there are 104 inner
//      rows x 16 columns each bucket
//      
//      To simplify the calculations, the number of pixels above the threshold
//      in different bins groups are alos given. That is not always necessary
//      but could be useful:
//   colorpxls_left_o: number of pixels (above threshold) on the left side of
//      the image
//   colorpxls_rght_o: number of color pixels on the right side of the image
//   colorpxls_bin012_o : number of color pxls on the 3 bins on the left
//   colorpxls_bin567_o : number of color pxls on the 3 bins on the right
//   colorpxls_bin02_o : number of color pxls on the 2 bins on the left
//   colorpxls_bin67_o : number of color pxls on the 2 bins on the right
//      
//   new_frame_proc_o : pulse indicating a histogram of new image is generated
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
      c_img_cols    = 160, // 8 bits
      c_img_rows    = 120, //  7 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls = $clog2(c_img_pxls), // 15 -> 160*120=19,200 -> 2^15
      // QQVGA /2
      //c_img_cols    = 80, // 7 bits
      //c_img_rows    = 60, //  6 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_img_pxls = $clog2(c_img_pxls), // 13,  //80*60=4800 -> 2^13

      // number of bits of the image colums and rows
      c_nb_cols     = $clog2(c_img_cols),
      c_nb_rows     = $clog2(c_img_rows),

      // inner frame size
      // columns and rows taken away at each side
      c_outframe_cols = 16, // each side of the columns, 32 total
      c_outframe_rows = 8,  // each side of the rows 16 total
      // columns in the inner frame
      c_inframe_cols = c_img_cols-2*c_outframe_cols, // 128, 7 bits(0 to 127)
                                             // taking out 32, 16 each side
      c_inframe_rows = c_img_rows-2*c_outframe_rows, //104, 7 bits (0 to 107)
                                             // taking out 16, 8 each side
      // total pixels in the inner frame
      c_inframe_pxls = c_inframe_cols * c_inframe_rows, // 128x104 = 13312
      // number of bits for the number of total pixels in the inner frame
      c_nb_inframe_pxls = $clog2(c_inframe_pxls), // = 14
      c_nb_inframe_cols = $clog2(c_inframe_cols), // = 7

      // histogram
      // number of bins (buckets)
      c_hist_bins = 8, // 7:0
      // number of bits needed for the histogram bins: 8 bins -> 3 bits
      c_nb_hist_bins = 3, //$clog2(c_hist_bins), // 3 bits
      // since we have 104 rows and 16 columns in each bin
      // for each bin 1664 (104 x 16) is the max number: 11 bits
      c_nb_hist_val = 11, // $clog2(c_inframe_rows * (c_inframe_cols/c_hist_bins)), // = 11,

      // minimum number to consider an image detected and not being noise
      // change this value
      c_min_colorpixels = 128,  // having 159744 pixels, 128 seems reasonable

    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)
    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)
    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)
    // word width of the memory (buffer)
    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue
  )
  (
    input        rst,       //reset, active high
    input        clk,       //fpga clock
    // for simulation is an input: rgbfilter
    //input        pulse_proc_ctrl, //input to control the processing
    input [2:0] rgbfilter, //color of filter 
    input        new_frame_i, // a new frame has just ended
    // Address and pixel of original image
    input  [c_nb_buf-1:0]      orig_pxl,  //pixel from original image
    output [c_nb_img_pxls-1:0] orig_addr, //pixel mem address original img
    // Address and pixel of processed image
    output                     proc_we,  //write enable, to write processed pxl
    output [c_nb_buf-1:0]      proc_pxl, // processed pixel to be written
    output [c_nb_img_pxls-1:0] proc_addr, // address of processed pixel
    output reg   new_frame_proc_o, // the frame has been processed

    // total number of pixels that are above the threshold
    output reg [c_nb_inframe_pxls-1:0] colorpxls_o,
    // cannot have a port as an array
    //output reg [c_nb_hist_val-1:0] histogram_o [c_hist_bins-1:0], 
    output [c_nb_hist_val-1:0] colorpxls_bin0,
    output [c_nb_hist_val-1:0] colorpxls_bin1,
    output [c_nb_hist_val-1:0] colorpxls_bin2,
    output [c_nb_hist_val-1:0] colorpxls_bin3,
    output [c_nb_hist_val-1:0] colorpxls_bin4,
    output [c_nb_hist_val-1:0] colorpxls_bin5,
    output [c_nb_hist_val-1:0] colorpxls_bin6,
    output [c_nb_hist_val-1:0] colorpxls_bin7,
    // total number of pixels that are above the threshold on the left side
    // bins 0 to 3
    output reg [c_nb_inframe_pxls-2:0] colorpxls_left_o,
    output reg [c_nb_inframe_pxls-2:0] colorpxls_rght_o,

    // total number of pixels that are above the threshold on the bins 0to2
    output reg [c_nb_inframe_pxls-2:0] colorpxls_bin012_o,
    output reg [c_nb_inframe_pxls-2:0] colorpxls_bin567_o, // bins 5to7

    // total number of pixels that are above the threshold on the bins 0,1
    output reg [c_nb_inframe_pxls-2:0] colorpxls_bin01_o,
    output reg [c_nb_inframe_pxls-2:0] colorpxls_bin67_o // bins 6to7

    //output reg [2:0] rgbfilter // for simulation is a input port
  );

    // position of the most significant bits of each color
  localparam c_msb_red = c_nb_buf-1;
  localparam c_msb_blu = c_nb_buf_blue-1;
  localparam c_msb_grn = c_msb_blu + c_nb_buf_green;

  reg [c_nb_img_pxls-1:0]  cnt_pxl;
  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;
  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc_rg; // delayed for 1 clk segmentation

  wire end_pxl_cnt;
  wire end_ln;
  wire inner_frame; //if we are in the inner frame col=[8,71], row=[6,53]
  reg  inner_frame_rg; // registered for segmentation

  // RGB components
  wire [c_nb_buf_red-1:0]   red;
  wire [c_nb_buf_green-1:0] grn;
  wire [c_nb_buf_blue-1:0]  blu;

  wire [5:0] rgb222;

  reg    red_limit;
  reg    grn_limit; // green
  reg    blu_limit; // blue
  reg    yel_limit; // yellow
  reg    cya_limit; // cyan
  reg    mag_limit; // magenta
  reg    gra_limit; // gray
  reg    color_threshold; // if color threshold is active
  wire    whi_limit; // white

  //wire red_grn_eq, red_blu_eq, grn_blu_eq;
  wire red_gt_grn, red_gt_blu, grn_gt_blu;
  wire [c_nb_buf_red-1:0]  red_grn_absdif;
  wire [c_nb_buf_red-1:0]  red_blu_absdif;
  wire [c_nb_buf_green-1:0] grn_blu_absdif;
  localparam  [c_nb_buf_red-1:0] c_simil_limit = 2; // limit to consider similar
  localparam  [c_nb_buf_red-1:0] c_vdif_limit = 7; // limit to consider very different

  wire red_grn_simil, red_blu_simil, grn_blu_simil;
  wire red_grn_vdif, red_blu_vdif, grn_blu_vdif;
  
  localparam  C_BLACK_PXL = {c_nb_img_pxls{1'b0}};
  
  integer ind; 

  // from 0 to 159 columns, 0 to 15, and 144 to 159 are taken out
  // so column  16  -> 0
  //    column  143 -> 128
  // In the inner frame In each column there are 104 rows (inner frame),
  // c_nb_hist_val: number of  bits for the value of the histogram bins
  // c_hist_bins: number of bins of the histogram
  reg [c_nb_hist_val-1:0] histogram_tmp [c_hist_bins-1:0]; 
  reg [c_nb_hist_val-1:0] histogram     [c_hist_bins-1:0]; 

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

  reg [c_nb_cols-1:0] col, col_rg;
  // col_inframe is a bit less, but just in case
  wire [c_nb_cols-1:0] col_inframe;

  // indicates in which bin we are
  wire [c_nb_hist_bins-1:0] hist_bin;
  reg  [c_nb_hist_bins-1:0] hist_bin_rg; //registered for segmentation

  // Row number
  reg [c_nb_rows-1:0] row_num;

  reg       processing; // indicates if it is processing

  //pixel from original image, registered for the segmentation delay
  reg [c_nb_buf-1:0] orig_pxl_rg; 

  // get the RGB components
  assign red = orig_pxl[c_msb_red:c_msb_grn+1];
  assign grn = orig_pxl[c_msb_grn:c_msb_blu+1];
  assign blu = orig_pxl[c_msb_blu:0];

  reg    proc_we_rg1, proc_we_rg2;

  // register signals for segmentation
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      orig_pxl_rg     <= 0;
      inner_frame_rg  <= 1'b0;
      hist_bin_rg     <= 0;
      cnt_pxl_proc_rg <= 0;
      proc_we_rg2     <= 0;
    end
    else begin
      orig_pxl_rg    <= orig_pxl;
      inner_frame_rg <= inner_frame;
      hist_bin_rg    <= hist_bin;
      cnt_pxl_proc_rg <= cnt_pxl_proc;
      proc_we_rg2     <= proc_we_rg1;
    end
  end

    

  // memory address count. Pixel counter from 0 to (160x120)-1 = 19200-1
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      cnt_pxl    <= 0;
      cnt_pxl_proc <= 0;
      processing <= 1'b0;    
      proc_we_rg1 <= 1'b0;    
    end
    else begin
      proc_we_rg1 <= processing;  // proc_we is processing delayed 1 clk
      if (processing) begin
        // data from memory received a clock cycle later
        // data stored in processed memory is delayed one clock cycle
        // and one more due segmentation
        cnt_pxl_proc <= cnt_pxl;
        if (end_pxl_cnt) begin
          cnt_pxl <= 0;
          processing <= 1'b0;
        end
        else
          cnt_pxl <= cnt_pxl + 1'b1;
      end
      else begin // processing == 1'b0
        if (new_frame_i) begin
          processing <= 1'b1;
        end
      end
    end
  end
  
  // end of the frame  19200-1 = (160x120)-1
  assign end_pxl_cnt = (cnt_pxl == c_img_pxls-1) ? 1'b1 : 1'b0;
  assign orig_addr = cnt_pxl;
  assign proc_addr = cnt_pxl_proc_rg;

  // end of the line (column number 79)
  assign end_ln = (col == c_img_cols-1)? 1'b1 : 1'b0;
  
  //Row counter, from 0 to 59
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin   
      row_num <=0;
    end 
    else begin
      if (processing) begin
        if (end_pxl_cnt) begin
          row_num <= 0;
        end
        else if (end_ln) begin
          row_num <= row_num +1'b1;
        end
      end
      else begin
        row_num <=0;
      end
    end 
  end

  // number of column counter. Counts columns, from 0 to 79
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin   
      col <= 0;
    end 
    else begin
      if (processing) begin
        if (end_ln) begin
          col <= 0;
        end
        else begin
          col <= col +1'b1;
        end 
      end 
      else begin
        col <=0;
      end
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

  //if we are in the inner frame col=[16,144(159-16)], row=[6,53]
  assign inner_frame = (col_rg  >= c_outframe_cols  &&  // 16
                        col_rg  <  c_img_cols-c_outframe_cols &&  // 144= 160-16
                        row_num >= c_outframe_rows &&   // 8
                        row_num <  c_img_rows-c_outframe_rows)  // 112 = 120-8
                     ? 1'b1 : 1'b0;

  assign rgb222 = {red[c_nb_buf_red-1:c_nb_buf_red-2],
                   grn[c_nb_buf_green-1:c_nb_buf_green-2],
                   blu[c_nb_buf_blue-1:c_nb_buf_blue-2]};

  //assign red_grn_eq = (red == grn) ? 1'b1 : 1'b0;
  //assign red_blu_eq = (red == blu) ? 1'b1 : 1'b0;
  //assign grn_blu_eq = (grn == blu) ? 1'b1 : 1'b0;

  assign red_gt_grn = (red > grn) ? 1'b1 : 1'b0;
  assign red_gt_blu = (red > blu) ? 1'b1 : 1'b0;
  assign grn_gt_blu = (grn > blu) ? 1'b1 : 1'b0;

  assign red_grn_absdif = red_gt_grn ? red - grn : grn - red;
  assign red_blu_absdif = red_gt_blu ? red - blu : blu - red;
  assign grn_blu_absdif = grn_gt_blu ? grn - blu : blu - grn;

  assign red_grn_simil = (red_grn_absdif <= c_simil_limit) ? 1'b1 : 1'b0;
  assign red_blu_simil = (red_blu_absdif <= c_simil_limit) ? 1'b1 : 1'b0;
  assign grn_blu_simil = (grn_blu_absdif <= c_simil_limit) ? 1'b1 : 1'b0;

  assign red_grn_vdif = (red_grn_absdif >= c_vdif_limit) ? 1'b1 : 1'b0;
  assign red_blu_vdif = (red_blu_absdif >= c_vdif_limit) ? 1'b1 : 1'b0;
  assign grn_blu_vdif = (grn_blu_absdif >= c_vdif_limit) ? 1'b1 : 1'b0;

  always @ (*)
  begin
    red_limit = 1'b0;
    grn_limit = 1'b0;
    blu_limit = 1'b0;
    yel_limit = 1'b0;
    cya_limit = 1'b0;
    mag_limit = 1'b0;
    gra_limit = 1'b0;
    if (red_gt_grn) begin              // red > green
      if (red_gt_blu) begin             // red > green ; red > blue
        if (grn_gt_blu) begin             // red > green > blue
          if (red_grn_vdif) begin           // red >> green > blue
            red_limit = 1'b1;                // RED
          end
          else if (red_grn_simil) begin     // red ~> green > blue
            if (red_blu_simil) begin        // red ~> green ~> blue
              gra_limit = 1'b1;                // GRAY
            end
            else if (grn_blu_vdif) begin    // red ~> green >> blue
              yel_limit = 1'b1;                // YELLOW
            end
          end
        end
        else begin                       // red > blue >= green
          if (red_blu_vdif) begin           // red >> blue >= green
            red_limit = 1'b1;                // RED
          end
          else if (red_blu_simil) begin     // red ~> blue >= green
            if (red_grn_simil) begin        // red ~> blue ~>= green
              gra_limit = 1'b1;                // GRAY
            end
            else if (grn_blu_vdif) begin    // red ~> blue >> green
              mag_limit = 1'b1;                // MAGENTA
            end
          end
        end
      end
      else begin                         // blue >= red > green
        if (red_blu_vdif) begin            // blue >> red > green
          blu_limit = 1'b1;                  // BLUE
        end
        else if (red_blu_simil) begin      // blue ~>= red > green
          if (grn_blu_simil) begin           // blue ~>= red ~> green
            gra_limit = 1'b1;                  // GRAY
          end
          else if (red_grn_vdif) begin       // blue ~>= red >> green
            mag_limit = 1'b1;                  // MAGENTA
          end
        end
      end
    end
    else begin                         // green >= red
      if (red_gt_blu) begin              // green >= red > blue
        if (red_grn_vdif) begin            // green >> red > blue
          grn_limit = 1'b1;                 // GREEN
        end
        else if (red_grn_simil) begin    // green ~>= red > blue
          if (red_blu_vdif) begin         // green ~>= red >> blue
            yel_limit = 1'b1;              // YELOW
          end
          else if (grn_blu_simil) begin   // green ~>= red ~> blue
            gra_limit = 1'b1;               //GRAY
          end
        end
      end
      else begin                         // green >= red ; blue >= red
        if (grn_gt_blu) begin              // green > blue >= red
          if (grn_blu_vdif) begin           // green >> blue >= red
            grn_limit = 1'b1;                  // GREEN
          end
          else if (grn_blu_simil) begin      // green ~> blue >= red
            if (red_blu_vdif) begin            // green ~> blue >> red
              cya_limit = 1'b1;                 // CYAN
            end
            else if (red_grn_simil) begin      // green ~> blue ~> red
              gra_limit = 1'b1;                  // GRAY
            end
          end
        end
        else begin                       // blue >= green >= red
          if (grn_blu_vdif) begin         // blue >> green >= red
            blu_limit = 1'b1;                  // BLUE
          end
          else if (grn_blu_simil) begin    // blue ~>= green >= red
            if (red_blu_simil) begin        // blue ~>= green ~>= red
              gra_limit = 1'b1;                  // GRAY
            end
            else if (red_grn_vdif) begin    // blue ~>= green >>= red
              cya_limit = 1'b1;                 // CYAN
            end
          end
        end
      end
    end
  end
            
  // to be white, they have to be larger than 11
  assign whi_limit = gra_limit &
                     red[c_nb_buf_red-1]   &
                     grn[c_nb_buf_green-1] &
                     blu[c_nb_buf_blue-1]  &
                     red[c_nb_buf_red-2]   &
                     grn[c_nb_buf_green-2] &
                     blu[c_nb_buf_blue-2];


  // inner column, when we are out of the range it doesn't matter the value
  // because shouldnt be used
  assign col_inframe = col_rg - c_outframe_cols;
  // divide col_inframe by 16, from 128 columns to 8 -> 3 bits
  // col_inframe has 8 bits, but bit 7 is not used
  // it really has 7 bits (c_nb_inframe_cols)
  // c_nb_hist_bins is 3 bits
  // we go from bit 6 (7-1),  to (7-1)-(3-1) -> 4
  assign hist_bin = col_inframe[c_nb_inframe_cols-1:c_nb_inframe_cols-c_nb_hist_bins];  //[6:4] 

  //reg [c_nb_hist_val-1:0] histograma [c_hist_bins-1:0];
  // saves how many red pixels are in each column. Reset in each frame
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin  
      for(ind=0;ind<c_hist_bins;ind=ind+1) begin
        histogram_tmp[ind] <=  0; //c_nb_hist_val'd0; 
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
          histogram_tmp[ind]  <= 0; //  c_nb_hist_val'd0; 
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
        if (inner_frame_rg == 1'b1) begin
          if (color_threshold == 1'b1) begin // this is already registered
            histogram_tmp[hist_bin_rg] <= histogram_tmp[hist_bin_rg] + 1'b1;
            colorpxls <= colorpxls + 1;
            // these increments could be done combinationally by adding histograms
            // bins. not sure what is more efficient, and if done combinationally
            // it may add too many delays
            case (hist_bin)
              //c_nb_hist_bins'd0: begin
              3'd0: begin
                colorpxls_left   <= colorpxls_left   + 1'b1; //0123
                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012
                colorpxls_bin01  <= colorpxls_bin01  + 1'b1; //01
              end
              3'd1: begin
                colorpxls_left   <= colorpxls_left   + 1'b1; //0123
                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012
                colorpxls_bin01  <= colorpxls_bin01  + 1'b1; //01
              end
              3'd2: begin
                colorpxls_left   <= colorpxls_left   + 1'b1; //0123
                colorpxls_bin012 <= colorpxls_bin012 + 1'b1; //012
              end
              3'd3: begin
                colorpxls_left   <= colorpxls_left + 1'b1;  //0123
              end
              3'd4: begin
                colorpxls_rght   <= colorpxls_rght + 1'b1;  //4567
              end
              3'd5: begin
                colorpxls_rght   <= colorpxls_rght  + 1'b1;  //4567
                colorpxls_bin567 <= colorpxls_bin567 + 1'b1; //567
              end
              3'd6: begin
                colorpxls_rght   <= colorpxls_rght   + 1'b1; //4567
                colorpxls_bin567 <= colorpxls_bin567 + 1'b1; //567
                colorpxls_bin67  <= colorpxls_bin67  + 1'b1; //67
              end
              3'd7: begin
                colorpxls_rght   <= colorpxls_rght   + 1'b1; //4567
                colorpxls_bin567 <= colorpxls_bin567 + 1'b1; //567
                colorpxls_bin67  <= colorpxls_bin67  + 1'b1; //67
              end
            endcase
          end
        end
      end
    end
  end

  // save the histogram and the color pixel counting when finishing the frame
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin
      new_frame_proc_o   <= 1'b0;
      for(ind=0;ind<c_hist_bins;ind=ind+1) begin
        histogram[ind] <= 0; //c_nb_hist_val'd0; 
      end     
      colorpxls_o        <= 0;
      colorpxls_left_o   <= 0;
      colorpxls_rght_o   <= 0;
      colorpxls_bin012_o <= 0;
      colorpxls_bin567_o <= 0;
      colorpxls_bin01_o  <= 0;
      colorpxls_bin67_o  <= 0;
    end
    else if (end_pxl_cnt) begin
      new_frame_proc_o   <= 1'b1;
      for(ind=0;ind<c_hist_bins;ind=ind+1) begin
        histogram[ind] <= histogram_tmp[ind];
      end   
      colorpxls_o        <= colorpxls;
      colorpxls_left_o   <= colorpxls_left;
      colorpxls_rght_o   <= colorpxls_rght;
      colorpxls_bin012_o <= colorpxls_bin012;
      colorpxls_bin567_o <= colorpxls_bin567;
      colorpxls_bin01_o  <= colorpxls_bin01;
      colorpxls_bin67_o  <= colorpxls_bin67;
    end
    else
      new_frame_proc_o  <= 1'b0;
  end

  assign colorpxls_bin0 = histogram[0];
  assign colorpxls_bin1 = histogram[1];
  assign colorpxls_bin2 = histogram[2];
  assign colorpxls_bin3 = histogram[3];
  assign colorpxls_bin4 = histogram[4];
  assign colorpxls_bin5 = histogram[5];
  assign colorpxls_bin6 = histogram[6];
  assign colorpxls_bin7 = histogram[7];

  // changes the filter
  // for simulation is just an input
//  always @ (posedge rst, posedge clk)
//  begin
//    if (rst) begin
//      rgbfilter <= 3'b000; // no filter
//    end
//    else begin
//      if (pulse_proc_ctrl) begin
//        case (rgbfilter)
//          3'b000: // no filter, output same as input
//            rgbfilter <= 3'b100; // red filter
//          3'b100: // red filter
//            rgbfilter <= 3'b010; // green filter
//          3'b010: // green filter
//            rgbfilter <= 3'b001; // blue filter
//          3'b001: // blue filter
//            rgbfilter <= 3'b110; // red and green filter
//          3'b110: // red and green filter
//            rgbfilter <= 3'b101; // red and blue filter
//          3'b101: // red and blue filter
//            rgbfilter <= 3'b011; // green and blue filter
//          3'b011: // green and blue filter
//            rgbfilter <= 3'b111; // red, green and blue filter
//          3'b111: // red, green and blue filter
//            rgbfilter <= 3'b000; // no filter
//        endcase
//      end
//    end
//  end

  assign proc_pxl = color_threshold ? orig_pxl_rg : C_BLACK_PXL;
  assign proc_we  = proc_we_rg2;
  
  // register for segmentation, it didn't get to 50MHz
  always @ (posedge clk) // should include RGB mode
  begin
    color_threshold <= 1'b1;
    case (rgbfilter)
      3'b000: // no filter, output same as input
        color_threshold <= 1'b1;
      3'b100: begin // red filter
        color_threshold <= red_limit;
      end
      3'b010: begin // green filter
        color_threshold <= grn_limit;
      end
      3'b001: begin // filter blue
        color_threshold <= blu_limit;
      end
      3'b110: begin // filter red and green
        color_threshold <= yel_limit;
      end
      3'b101: begin // filter red and blue
        color_threshold <= mag_limit;
      end
      3'b011: begin // filter green and blue
        color_threshold <= cya_limit;
      end
      3'b111: begin // red, green and blue filter
        color_threshold <= whi_limit;
      end
    endcase
  end

endmodule
