//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   merge2cam_proc.v
//   - Recieves 2 x-axis histogram of 2 contiguous images. 
//     This histogram is the image divided along the x axis (columns) in 8 bins
//     and it indicates how many pixels in each bin has passed the color filter
//   - Since there should be only one object, outputs the processed histogram
//     of just one camera. It could be:
//     + the camera on the left,
//     + the camera on the right
//     + an hypotetical camera that has:
//     the right half of left camera + leftside of right camera
//
//         LEFT CAM         RIGHT CAM
//      0 1 2 3 4 5 6 7  0 1 2 3 4 5 6 7
//              0 1 2 3  4 5 6 7 -> MID CAM


module merge2cam_proc
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
      // number of bins (buckets)
      c_hist_bins = 8, // 7:0

      // since we have 104 rows and 16 column in each bin
      // for each bin 1664 (104 x 16) is the max number: 10 bits
      c_nb_hist_val = $clog2(c_inframe_rows *(c_inframe_cols/c_hist_bins))//=11
  )
  (
    input        rst,       //reset, active high
    input        clk,       //fpga clock
    input        new_frame_proc_l, // a new frame has been processed left
    input        new_frame_proc_r, // a new frame has been processed right
    // cannot have a port as an array. These are the 8 bins of the histogram
    // total number of pixels that are above the color threshold
    input [c_nb_inframe_pxls-1:0] colorpxls_l,
    input [c_nb_inframe_pxls-1:0] colorpxls_r,

    input [c_nb_hist_val-1:0] colorpxls_bin0_l,
    input [c_nb_hist_val-1:0] colorpxls_bin1_l,
    input [c_nb_hist_val-1:0] colorpxls_bin2_l,
    input [c_nb_hist_val-1:0] colorpxls_bin3_l,
    input [c_nb_hist_val-1:0] colorpxls_bin4_l,
    input [c_nb_hist_val-1:0] colorpxls_bin5_l,
    input [c_nb_hist_val-1:0] colorpxls_bin6_l,
    input [c_nb_hist_val-1:0] colorpxls_bin7_l,

    input [c_nb_hist_val-1:0] colorpxls_bin0_r,
    input [c_nb_hist_val-1:0] colorpxls_bin1_r,
    input [c_nb_hist_val-1:0] colorpxls_bin2_r,
    input [c_nb_hist_val-1:0] colorpxls_bin3_r,
    input [c_nb_hist_val-1:0] colorpxls_bin4_r,
    input [c_nb_hist_val-1:0] colorpxls_bin5_r,
    input [c_nb_hist_val-1:0] colorpxls_bin6_r,
    input [c_nb_hist_val-1:0] colorpxls_bin7_r,

    // total number of pixels that are above the threshold on the left side
    // bins 0 to 3
    input [c_nb_inframe_pxls-2:0] colorpxls_left_l, // left side of left cam
    input [c_nb_inframe_pxls-2:0] colorpxls_rght_l, // right side of left cam
    input [c_nb_inframe_pxls-2:0] colorpxls_left_r, // left side of right cam
    input [c_nb_inframe_pxls-2:0] colorpxls_rght_r, // right side of right cam

    // total number of pixels that are above the threshold on the bins 0to2
    input [c_nb_inframe_pxls-2:0] colorpxls_bin012_l, // leftmost bins
    input [c_nb_inframe_pxls-2:0] colorpxls_bin567_l, // rightmost bins 5to7
    // right camera
    input [c_nb_inframe_pxls-2:0] colorpxls_bin012_r, // leftmost bins
    input [c_nb_inframe_pxls-2:0] colorpxls_bin567_r, // rightmost bins 5to7

    // total number of pixels that are above the threshold on the bins 0,1
    input [c_nb_inframe_pxls-2:0] colorpxls_bin01_l, // leftmost bins
    input [c_nb_inframe_pxls-2:0] colorpxls_bin67_l, // rightmost bins 6to7
    // right camera
    input [c_nb_inframe_pxls-2:0] colorpxls_bin01_r, // leftmost bins
    input [c_nb_inframe_pxls-2:0] colorpxls_bin67_r, // rightmost bins 6to7

    output reg  new_mergeframe_o,
    //output reg  cam_o;
    output reg  left_cam_o,
    output reg  mid_cam_o,
    output reg  rght_cam_o,
    // unified result
    output reg [c_nb_inframe_pxls-1:0] colorpxls_o,
    // cannot have a port as an array
    //output reg [c_nb_hist_val-1:0] histogram_o [c_hist_bins-1:0], 
    output reg [c_nb_hist_val-1:0] colorpxls_bin0_o,
    output reg [c_nb_hist_val-1:0] colorpxls_bin1_o,
    output reg [c_nb_hist_val-1:0] colorpxls_bin2_o,
    output reg [c_nb_hist_val-1:0] colorpxls_bin3_o,
    output reg [c_nb_hist_val-1:0] colorpxls_bin4_o,
    output reg [c_nb_hist_val-1:0] colorpxls_bin5_o,
    output reg [c_nb_hist_val-1:0] colorpxls_bin6_o,
    output reg [c_nb_hist_val-1:0] colorpxls_bin7_o,
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

  );

  // it will indicate which new_frame_proc pulse will be used
  reg  use_framepulse_l, use_framepulse_r;
  wire new_frame;

  
  // middle camera: hypotetical camera formed by the union of
  //    right half of left cam + left half of right cam
  wire [c_nb_inframe_pxls-1:0] colorpxls_m;

  reg left_cam, mid_cam, rght_cam; // to choose wich cam

  // total number of pixels that are above the threshold
  reg [c_nb_inframe_pxls-1:0] colorpxls;

  // total number of pixels that are above the threshold on the left side
  // bins 0 to 3
  reg [c_nb_inframe_pxls-2:0] colorpxls_left;
  reg [c_nb_inframe_pxls-2:0] colorpxls_rght;

  // Middle camera
  wire [c_nb_inframe_pxls-2:0] colorpxls_bin012_m;
  wire [c_nb_inframe_pxls-2:0] colorpxls_bin567_m; // bins 5to7

  // total number of pixels that are above the threshold on the bins 0,1
  wire [c_nb_inframe_pxls-2:0] colorpxls_bin01_m;
  wire [c_nb_inframe_pxls-2:0] colorpxls_bin67_m; // bins 6t

  // total number of pixels that are above the threshold on the bins 0to2
  reg [c_nb_inframe_pxls-2:0] colorpxls_bin012;
  reg [c_nb_inframe_pxls-2:0] colorpxls_bin567; // bins 5to7

  // total number of pixels that are above the threshold on the bins 0,1
  reg [c_nb_inframe_pxls-2:0] colorpxls_bin01;
  reg [c_nb_inframe_pxls-2:0] colorpxls_bin67; // bins 6to

  reg [c_nb_hist_val-1:0] colorpxls_bin0;
  reg [c_nb_hist_val-1:0] colorpxls_bin1;
  reg [c_nb_hist_val-1:0] colorpxls_bin2;
  reg [c_nb_hist_val-1:0] colorpxls_bin3;
  reg [c_nb_hist_val-1:0] colorpxls_bin4;
  reg [c_nb_hist_val-1:0] colorpxls_bin5;
  reg [c_nb_hist_val-1:0] colorpxls_bin6;
  reg [c_nb_hist_val-1:0] colorpxls_bin7;

  // the pulses should arrive at the same time or very close.
  // we could use any of them, but if they dont arrive at the same time
  // we will take the second one, so both cameras are ready, and with
  // the image data take almost at the same moment
  always @(posedge clk, posedge rst)
  begin
    if (rst) begin
      use_framepulse_l <= 1'b0;
      use_framepulse_r <= 1'b0;
    end
    else begin
      if (new_frame) begin 
        // second pulse has arrived or both pulses arrive: back to zero
        use_framepulse_l <= 1'b0;
        use_framepulse_r <= 1'b0;
      end
      else if (!use_framepulse_l && !use_framepulse_r) begin // if both are 0
        // if the first to arrive is the left, use the right
        if (new_frame_proc_l) begin 
          use_framepulse_r <= 1'b1;
          //use_framepulse_l <= 1'b0; // not necessary
        end
        if (new_frame_proc_r) begin 
          use_framepulse_l <= 1'b1;
          //use_framepulse_r <= 1'b0; // not necessary
        end
      end
    end
  end

  // new frame, when the second pulse arrives, or when both arrive at same time
  assign new_frame = (use_framepulse_l & new_frame_proc_l) |
                     (use_framepulse_r & new_frame_proc_r) |
                     (new_frame_proc_l  & new_frame_proc_r);

  // Check were are more color pixels:
  // 1. in the left camera,
  // 2. right camera,
  // 3. middle camera: camera formed by the union of
  //    right half of left cam + left half of right cam

  assign colorpxls_m = colorpxls_rght_l + colorpxls_left_r;

  always @(*)
  begin
    if (colorpxls_l > colorpxls_m) begin
      mid_cam  = 1'b0;
      if (colorpxls_l > colorpxls_r) begin
        left_cam = 1'b1;
        rght_cam = 1'b0;
      end
      else begin
        left_cam = 1'b0;
        rght_cam = 1'b1;
      end
    end
    else begin // middle cam > left cam
      left_cam = 1'b0;
      if (colorpxls_r > colorpxls_m) begin
        mid_cam  = 1'b0;
        rght_cam = 1'b1;
      end
      else begin // right came > mid cam
        mid_cam  = 1'b1;
        rght_cam = 1'b0;
      end
    end
  end


  //      LEFT CAM         RIGHT CAM
  //   0 1 2 3 4 5 6 7  0 1 2 3 4 5 6 7
  //           0 1 2 3  4 5 6 7 -> MID CAM

  assign colorpxls_bin01_m  = colorpxls_bin4_l  + colorpxls_bin5_l;
  // middle 012: 4_l + 5_l + 6_l
  assign colorpxls_bin012_m = colorpxls_bin01_m + colorpxls_bin6_l;
  assign colorpxls_bin67_m  = colorpxls_bin2_r  + colorpxls_bin3_r;
  // middle 567: 2_r + 3_r + 1_r
  assign colorpxls_bin567_m = colorpxls_bin67_m + colorpxls_bin1_r;
  
  always @(*)
  begin
    if (mid_cam) begin
      colorpxls        = colorpxls_m;
      colorpxls_bin0   = colorpxls_bin4_l;
      colorpxls_bin1   = colorpxls_bin5_l;
      colorpxls_bin2   = colorpxls_bin6_l;
      colorpxls_bin3   = colorpxls_bin7_l;
      colorpxls_bin4   = colorpxls_bin0_r;
      colorpxls_bin5   = colorpxls_bin1_r;
      colorpxls_bin6   = colorpxls_bin2_r;
      colorpxls_bin7   = colorpxls_bin3_r;
      // the right half of left camera is the left half of middle camera
      colorpxls_left   = colorpxls_rght_l;
      // the left half of right camera is the rigth half of middle camera
      colorpxls_rght   = colorpxls_left_r;
      colorpxls_bin012 = colorpxls_bin012_m;
      colorpxls_bin567 = colorpxls_bin567_m;
      colorpxls_bin01  = colorpxls_bin01_m;
      colorpxls_bin67  = colorpxls_bin67_m;
    end
    else if (left_cam) begin
      colorpxls        = colorpxls_l;
      colorpxls_bin0   = colorpxls_bin0_l;
      colorpxls_bin1   = colorpxls_bin1_l;
      colorpxls_bin2   = colorpxls_bin2_l;
      colorpxls_bin3   = colorpxls_bin3_l;
      colorpxls_bin4   = colorpxls_bin4_l;
      colorpxls_bin5   = colorpxls_bin5_l;
      colorpxls_bin6   = colorpxls_bin6_l;
      colorpxls_bin7   = colorpxls_bin7_l;
      colorpxls_left   = colorpxls_left_l;
      colorpxls_rght   = colorpxls_rght_l;
      colorpxls_bin012 = colorpxls_bin012_l;
      colorpxls_bin567 = colorpxls_bin567_l;
      colorpxls_bin01  = colorpxls_bin01_l;
      colorpxls_bin67  = colorpxls_bin67_l;
    end
    else begin // if (rght_cam) begin
      colorpxls        = colorpxls_r;
      colorpxls_bin0   = colorpxls_bin0_r;
      colorpxls_bin1   = colorpxls_bin1_r;
      colorpxls_bin2   = colorpxls_bin2_r;
      colorpxls_bin3   = colorpxls_bin3_r;
      colorpxls_bin4   = colorpxls_bin4_r;
      colorpxls_bin5   = colorpxls_bin5_r;
      colorpxls_bin6   = colorpxls_bin6_r;
      colorpxls_bin7   = colorpxls_bin7_r;
      colorpxls_left   = colorpxls_left_r;
      colorpxls_rght   = colorpxls_rght_r;
      colorpxls_bin012 = colorpxls_bin012_r;
      colorpxls_bin567 = colorpxls_bin567_r;
      colorpxls_bin01  = colorpxls_bin01_r;
      colorpxls_bin67  = colorpxls_bin67_r;
    end
  end

  // register outputs
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      new_mergeframe_o   <= 1'b0;
      left_cam_o         <= 1'b0;
      mid_cam_o          <= 1'b0;
      rght_cam_o         <= 1'b0;
      colorpxls_o        <= 0; // c_nb_inframe_pxls'd0;
      colorpxls_bin0_o   <= 0;
      colorpxls_bin1_o   <= 0;
      colorpxls_bin2_o   <= 0;
      colorpxls_bin3_o   <= 0;
      colorpxls_bin4_o   <= 0;
      colorpxls_bin5_o   <= 0;
      colorpxls_bin6_o   <= 0;
      colorpxls_bin7_o   <= 0;
      colorpxls_left_o   <= 0;
      colorpxls_rght_o   <= 0;
      colorpxls_bin012_o <= 0;
      colorpxls_bin567_o <= 0; 
      colorpxls_bin01_o  <= 0; 
      colorpxls_bin67_o  <= 0;
    end
    else begin
      new_mergeframe_o  <= new_frame; // a pulse
      if (new_frame) begin
        left_cam_o         <= left_cam;
        mid_cam_o          <= mid_cam;
        rght_cam_o         <= rght_cam;
        colorpxls_o        <= colorpxls;
        colorpxls_bin0_o   <= colorpxls_bin0;
        colorpxls_bin1_o   <= colorpxls_bin1;
        colorpxls_bin2_o   <= colorpxls_bin2;
        colorpxls_bin3_o   <= colorpxls_bin3;
        colorpxls_bin4_o   <= colorpxls_bin4;
        colorpxls_bin5_o   <= colorpxls_bin5;
        colorpxls_bin6_o   <= colorpxls_bin6;
        colorpxls_bin7_o   <= colorpxls_bin7;
        colorpxls_left_o   <= colorpxls_left;
        colorpxls_rght_o   <= colorpxls_rght;
        colorpxls_bin012_o <= colorpxls_bin012;
        colorpxls_bin567_o <= colorpxls_bin567;
        colorpxls_bin01_o  <= colorpxls_bin01;
        colorpxls_bin67_o  <= colorpxls_bin67;
      end
    end
  end


endmodule
