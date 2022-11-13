module design_top
  # (parameter
      // QQVGA /2
      c_img_cols    = 160, // 8 bits
      c_img_rows    = 120, //  7 bits
      c_img_pxls   = c_img_cols * c_img_rows,
      // number of bits of the image colums and rows
      c_nb_img_cols     = 8, // $clog2(c_img_cols);
      c_nb_img_rows     = 7, // $clog2(c_img_rows);
      c_nb_img_pxls = c_nb_img_cols + c_nb_img_rows, // 15, $clog2(c_img_pxls), //160*120=19200 -> 2^15
      c_nb_buf      = 12, //4 bits for each color
      c_nb_leds     = 8
  )
  (
	input clk,
	input rst,
	input wea, 			// Input frame_buff
	input [c_nb_img_pxls-1:0] addrin,	// Input frame_buff
	input [c_nb_buf-1:0] datain,	// Input frame_buff
	input [c_nb_img_pxls-1:0] addrout, // Output frame_buff
	input [2:0] wRgbfilter, // Filter
        input capture_newframe, // pulse 1 clk, when a frame has been sent 
	output [c_nb_buf-1:0] dataout,	// Output frame_buff
	output [c_nb_leds-1:0] leds,	// Output leds
	output [c_nb_leds-1:0] centroid_nop, // Output leds
	output new_centroid, 
	output [2:0] proximity  //
  );

    /*
    wRgbfilter 000 > no filter
    wRgbfilter 001 > blue filter
    wRgbfilter 010 > green filter
    wRgbfilter 100 > red filter
    wRgbfilter 011 > cyan: green and blue filter
    wRgbfilter 110 > yellow: red and green filter
    wRgbfilter 101 > magenta: red, green and blue filter
    wRgbfilter 111 > green, red, and blue filter
    */

	wire [c_nb_leds-1:0] centroid_wire;
	wire [c_nb_img_pxls-1:0] addrImg2Filt;
	wire [c_nb_buf-1:0] doutImg2Filt;
	wire [c_nb_img_pxls-1:0] procAddr;
	wire [c_nb_buf-1:0] procPixel;
	wire procWe;
	//wire [5:0] histogram;
	wire [c_nb_leds-2:0] pxColRet;
	wire new_frame_proc;

      // inner frame size
      // columns and rows taken away at each side
      localparam c_outframe_cols = 16; // each side of the columns, 32 total
      localparam c_outframe_rows = 8;  // each side of the rows 16 total
      // columns in the inner frame
      localparam c_inframe_cols = c_img_cols-2*c_outframe_cols; // 128, 7 bits(0 to 127)
                                             // taking out 32, 16 each side
      localparam c_inframe_rows = c_img_rows-2*c_outframe_rows; //104, 7 bits (0 to 107)
                                             // taking out 16, 8 each side
      // total pixels in the inner frame
      localparam c_inframe_pxls = c_inframe_cols * c_inframe_rows; // 128x104 = 13312
      // number of bits for the number of total pixels in the inner frame
      parameter c_nb_inframe_pxls = 14; //$clog2(c_inframe_pxls); // = 14
      parameter c_nb_inframe_cols = 7; //$clog2(c_inframe_cols); // = 7

      // histogram
      // number of bins (buckets)
      localparam c_hist_bins = 8; // 7:0
      // number of bits needed for the histogram bins: 8 bins -> 3 bits
      parameter c_nb_hist_bins = 3; //$clog2(c_hist_bins); // 3 bits
      // since we have 104 rows and 16 columns in each bin
      // for each bin 1664 (104 x 16) is the max number: 11 bits
      parameter c_nb_hist_val = 11; //$clog2(c_inframe_rows * (c_inframe_cols/c_hist_bins));//11

      // centroid has 8 bits, it is decoded, so its not a number
      localparam c_nb_centroid = 8;
      // proximity calculation, for now just 3 bits 0 to 7 (0: far, 7:close)
      localparam c_nb_prox  = 3;
      // minimum number to consider an image detected and not being noise
      // change this value
      localparam c_min_colorpxls = 128;  // having 159744 pixels, 128 seems reasonable

      localparam c_nb_buf_red   =  4;  // n bits for red in the buffer (memory)
      localparam c_nb_buf_green =  4;  // n bits for green in the buffer (memory)
      localparam c_nb_buf_blue  =  4;  // n bits for blue in the buffer (memory


    // camera processing
    wire [c_nb_hist_val-1:0] colorpxls_bin0;
    //wire [c_nb_hist_val-1:0] colorpxls_bin1;
    //wire [c_nb_hist_val-1:0] colorpxls_bin2;
    //wire [c_nb_hist_val-1:0] colorpxls_bin3;
    //wire [c_nb_hist_val-1:0] colorpxls_bin4;
    //wire [c_nb_hist_val-1:0] colorpxls_bin5;
    //wire [c_nb_hist_val-1:0] colorpxls_bin6;
    wire [c_nb_hist_val-1:0] colorpxls_bin7;
    // total number of pixels that are above the threshold
    wire [c_nb_inframe_pxls-1:0] colorpxls;
    // total number of pixels that are above the threshold on the left side
    wire [c_nb_inframe_pxls-2:0] colorpxls_left;
    wire [c_nb_inframe_pxls-2:0] colorpxls_rght;
    // total number of pixels that are above the threshold on the bins 0to2
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin012;
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin567; // bins 5to7
    // total number of pixels that are above the threshold on the bins 0,1
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin01;
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin67; // bins 6to7

  // frame buffer input
  frame_buffer
    #( // parameters
       .c_img_cols     (c_img_cols),
       .c_img_rows     (c_img_rows),
       .c_nb_buf       (c_nb_buf)
    )
    frame_buff_in(
      .clk   (clk),
      .wea   (wea),
      .addra (addrin),
      .dina  (datain),
      .addrb (addrImg2Filt),
      .doutb (doutImg2Filt)
    );
  
  // image processing module
  color_proc
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
      .c_nb_img_pxls  (c_nb_img_pxls),
      .c_outframe_cols(c_outframe_cols),
      .c_outframe_rows(c_outframe_rows),
      .c_inframe_cols (c_inframe_cols),
      .c_inframe_rows (c_inframe_rows),
      .c_inframe_pxls (c_inframe_pxls),
      .c_hist_bins    (c_hist_bins),
      .c_nb_hist_val  (c_nb_hist_val),

      .c_nb_buf_red   (c_nb_buf_red),
      .c_nb_buf_green (c_nb_buf_green),
      .c_nb_buf_blue  (c_nb_buf_blue),
      .c_nb_buf       (c_nb_buf)
    )
    color_filter
    (
      .rst        (rst),
      .clk        (clk),
      .rgbfilter  (wRgbfilter),
      .new_frame_i(capture_newframe),
      // from original image frame buffer
      .orig_addr  (addrImg2Filt),
      .orig_pxl   (doutImg2Filt),
      // to processed image frame buffer
      .proc_we        (procWe),
      .proc_addr  (procAddr),
      .proc_pxl   (procPixel),

      .new_frame_proc_o (new_frame_proc),

      .colorpxls_o    (colorpxls),
      .colorpxls_bin0 (colorpxls_bin0),
      //.colorpxls_bin1 (colorpxls_bin1),
      //.colorpxls_bin2 (colorpxls_bin2),
      //.colorpxls_bin3 (colorpxls_bin3),
      //.colorpxls_bin4 (colorpxls_bin4),
      //.colorpxls_bin5 (colorpxls_bin5),
      //.colorpxls_bin6 (colorpxls_bin6),
      .colorpxls_bin7 (colorpxls_bin7),

      .colorpxls_left_o  (colorpxls_left),
      .colorpxls_rght_o  (colorpxls_rght),
      .colorpxls_bin012_o (colorpxls_bin012),
      .colorpxls_bin567_o (colorpxls_bin567),
      .colorpxls_bin01_o (colorpxls_bin01),
      .colorpxls_bin67_o (colorpxls_bin67)

      //.rgbfilter  (rgbfilter) // for simulatio 
    );


  // ------ centroid and proximity
  centroid
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
      .c_nb_img_pxls  (c_nb_img_pxls),
      .c_inframe_cols (c_inframe_cols),
      .c_inframe_rows (c_inframe_rows),
      .c_inframe_pxls (c_inframe_pxls),
      .c_hist_bins    (c_hist_bins),
      .c_nb_hist_bins (c_nb_hist_bins),
      .c_nb_hist_val  (c_nb_hist_val),
      .c_nb_centroid  (c_nb_centroid),
      .c_nb_prox      (c_nb_prox),
      .c_min_colorpxls(c_min_colorpxls)
    )
    centroid_calc
    (  // inputs
      .rst             (rst),
      .clk             (clk),
      .new_frame_proc_i(new_frame_proc),
      .colorpxls_i      (colorpxls),
      .colorpxls_bin0_i (colorpxls_bin0),
      //.colorpxls_bin1_i (colorpxls_bin1),
      //.colorpxls_bin2_i (colorpxls_bin2),
      //.colorpxls_bin3_i (colorpxls_bin3),
      //.colorpxls_bin4_i (colorpxls_bin4),
      //.colorpxls_bin5_i (colorpxls_bin5),
      //.colorpxls_bin6_i (colorpxls_bin6),
      .colorpxls_bin7_i (colorpxls_bin7),

      .colorpxls_left_i  (colorpxls_left),
      .colorpxls_rght_i  (colorpxls_rght),
      .colorpxls_bin012_i(colorpxls_bin012),
      .colorpxls_bin567_i(colorpxls_bin567),
      .colorpxls_bin01_i (colorpxls_bin01),
      .colorpxls_bin67_i (colorpxls_bin67),
      // outputs
      .centroid_o     (centroid_wire),
      .new_centroid_o (new_centroid),
      .proximity_o    (proximity)
    );

   assign centroid_nop = centroid_wire;
   assign leds = centroid_wire;


  // frame buffer
  frame_buffer
    #( // parameters
       .c_img_cols     (c_img_cols),
       .c_img_rows     (c_img_rows),
       .c_nb_buf       (c_nb_buf)
    )
    frame_buff_out(
    .clk   (clk),
    .wea   (procWe),
    .addra (procAddr),
    .dina  (procPixel),
    .addrb (addrout),
    .doutb (dataout)
  );
  
endmodule
