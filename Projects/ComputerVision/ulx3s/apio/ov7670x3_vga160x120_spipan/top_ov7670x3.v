//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   top module 
//   Three cameras 50MHz 160x120 image
//   This prototipe has 3 cameras:
//     - left and right: to guide the robot
//     - pan: to follow an independent target with pan on a turret
//---------------------------------------------------------------------------//

module top_ov7670x3
  # (parameter
      // QQVGA /2
      c_img_cols    = 160, // 8 bits
      c_img_rows    = 120, //  7 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls =  $clog2(c_img_pxls), //  //160*120=19200 -> 2^15

      // number of bits of the image colums and rows
      c_nb_img_cols     = $clog2(c_img_cols),
      c_nb_img_rows     = $clog2(c_img_rows),

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
      c_nb_hist_bins = $clog2(c_hist_bins), // 3 bits
      // since we have 104 rows and 16 columns in each bin
      // for each bin 1664 (104 x 16) is the max number: 11 bits
      c_nb_hist_val = $clog2(c_inframe_rows * (c_inframe_cols/c_hist_bins)),//11

      // centroid has 8 bits, it is decoded, so its not a number
      c_nb_centroid = 8,
      // proximity calculation, for now just 3 bits 0 to 7 (0: far, 7:close)
      c_nb_prox  = 3,
      // minimum number to consider an image detected and not being noise
      // change this value
      c_min_colorpxls = 128,  // having 159744 pixels, 128 seems reasonable

      c_nb_camdata   = 8,  // n bits of the camera data port

      c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)
      c_nb_buf_green =  4,  // n bits for green in the buffer (memory)
      c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)
      // word width of the memory (buffer)
      c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue
    )
    (input        rst,
     input        clk25mhz,
     // left camera
     //output       ov7670_l_sioc, // shared with the other cameras
     //output       ov7670_l_siod,
     //output       ov7670_l_rst_n,

     input        ov7670_l_vsync,
     input        ov7670_l_href,
     input        ov7670_l_pclk,
     output       ov7670_l_xclk,
     //output       ov7670_l_pwdn,
     input  [c_nb_camdata-1:0] ov7670_l_d,

     // the 3 cameras share sioc and siod
     output       ov7670_sioc,
     output       ov7670_siod,
     //output       ov7670_c_sioc,
     //output       ov7670_c_siod,
     //output       ov7670_c_rst_n,

     // right robot camera
     input        ov7670_r_vsync,
     input        ov7670_r_href,
     input        ov7670_r_pclk,
     output       ov7670_r_xclk,
     //output       ov7670_r_pwdn,
     input  [c_nb_camdata-1:0] ov7670_r_d,


     // Pan camera (on a turret)
     //output       ov7670_p_sioc, // shared with the other cameras
     //output       ov7670_p_siod,
     //output       ov7670_p_rst_n,

     input        ov7670_p_vsync,
     input        ov7670_p_href,
     input        ov7670_p_pclk,
     output       ov7670_p_xclk,
     //output       ov7670_p_pwdn,
     input  [c_nb_camdata-1:0] ov7670_p_d,

     output       ov7670_rst_n,  // for the 3 cameras

     output reg [7:0] led,
     input        btnl_proc_ctrl,  //control color processing cam left
     input        btnr_proc_ctrl,  //control color processing cam right
     input        btnd_proc_ctrl,  //control color processing pan cam

     output [3:0] vga_red,
     //output [3:0] vga_green,
     output       vga_green_3,
     output       vga_green_2,
     output       vga_green_1,
     //output [3:0] vga_blue,
     output       vga_blue_3,
     output       vga_blue_2,
     output       vga_blue_1,
     output       vga_hsync,
     output       vga_vsync,

    // SPI
    output   spi_clk_o, 
    input    spi_miso_i,
    output   spi_mosi_o,
    output   spi_ss_n,  // spi slave select , active low
    // rpi_running is 1 when running, to inform gopigo,  ov7670_rst_n could be
    // used to save one pin, but maybe it is too much for fanout
    output   rpi_running

    );

    localparam G_CLK_FREQ_MHZ = 50; // 50MHz clock

    //wire          ov7670_siod;
    //wire          ov7670_sioc;
    wire          ov7670_xclk;
    wire          ov7670_pwdn;

    wire          vga_visible;
    wire          vga_new_pxl;
    wire [10-1:0] vga_col; //VGA has 640 visible cols, and 800 total cols: 10bit
    wire [10-1:0] vga_row; //VGA has 480 visible rows, and 520 total cols: 10bit
   
    // left camera
    wire [c_nb_img_pxls-1:0] display_img_addr_l;
    wire [c_nb_buf-1:0]      display_img_pxl_l;

    wire [c_nb_img_pxls-1:0] capture_addr_l;
    wire [c_nb_buf-1:0]    capture_data_l;
    wire          capture_newframe_l;
    wire          capture_we_l;
    wire          new_frame_proc_l;

    wire [c_nb_img_pxls-1:0] orig_img_addr_l;
    wire [c_nb_buf-1:0]      orig_img_pxl_l;
    wire          proc_we_l;
    wire [c_nb_img_pxls-1:0] proc_img_addr_l;
    wire [c_nb_buf-1:0]      proc_img_pxl_l;
 
    // right camera
    wire [c_nb_img_pxls-1:0] display_img_addr_r;
    wire [c_nb_buf-1:0]      display_img_pxl_r;

    wire [c_nb_img_pxls-1:0] capture_addr_r;
    wire [c_nb_buf-1:0]    capture_data_r;
    wire          capture_newframe_r;
    wire          capture_we_r;
    wire          new_frame_proc_r;

    wire [c_nb_img_pxls-1:0] orig_img_addr_r;
    wire [c_nb_buf-1:0]      orig_img_pxl_r;
    wire          proc_we_r;
    wire [c_nb_img_pxls-1:0] proc_img_addr_r;
    wire [c_nb_buf-1:0]      proc_img_pxl_r;    

    // indicates where the object is: left, right, or in the middle
    wire left_cam, mid_cam, rght_cam; // to choose wich cam

    // pan camera: camera for the pan to follow an independent target
    wire [c_nb_img_pxls-1:0] display_img_addr_p;
    wire [c_nb_buf-1:0]      display_img_pxl_p;

    wire [c_nb_img_pxls-1:0] capture_addr_p;
    wire [c_nb_buf-1:0]    capture_data_p;
    wire          capture_newframe_p;
    wire          capture_we_p;
    wire          new_frame_proc_p;

    wire [c_nb_img_pxls-1:0] orig_img_addr_p;
    wire [c_nb_buf-1:0]      orig_img_pxl_p;
    wire          proc_we_p;
    wire [c_nb_img_pxls-1:0] proc_img_addr_p;
    wire [c_nb_buf-1:0]      proc_img_pxl_p;

    // left + right camera processing
    wire [c_nb_hist_val-1:0] colorpxls_bin0_l, colorpxls_bin0_r;
    wire [c_nb_hist_val-1:0] colorpxls_bin1_l, colorpxls_bin1_r;
    wire [c_nb_hist_val-1:0] colorpxls_bin2_l, colorpxls_bin2_r;
    wire [c_nb_hist_val-1:0] colorpxls_bin3_l, colorpxls_bin3_r;
    wire [c_nb_hist_val-1:0] colorpxls_bin4_l, colorpxls_bin4_r;
    wire [c_nb_hist_val-1:0] colorpxls_bin5_l, colorpxls_bin5_r;
    wire [c_nb_hist_val-1:0] colorpxls_bin6_l, colorpxls_bin6_r;
    wire [c_nb_hist_val-1:0] colorpxls_bin7_l, colorpxls_bin7_r;
    // total number of pixels that are above the threshold
    wire [c_nb_inframe_pxls-1:0] colorpxls_l, colorpxls_r;
    // total number of pixels that are above the threshold on the left side
    wire [c_nb_inframe_pxls-2:0] colorpxls_left_l, colorpxls_left_r;
    wire [c_nb_inframe_pxls-2:0] colorpxls_rght_l, colorpxls_rght_r;
    // total number of pixels that are above the threshold on the bins 0to2
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin012_l, colorpxls_bin012_r;
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin567_l, colorpxls_bin567_r;
    // total number of pixels that are above the threshold on the bins 0,1
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin01_l, colorpxls_bin01_r;
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin67_l, colorpxls_bin67_r;

    // merge left + right
    wire [c_nb_hist_val-1:0] colorpxls_bin0_mrg;
    wire [c_nb_hist_val-1:0] colorpxls_bin1_mrg;
    wire [c_nb_hist_val-1:0] colorpxls_bin2_mrg;
    wire [c_nb_hist_val-1:0] colorpxls_bin3_mrg;
    wire [c_nb_hist_val-1:0] colorpxls_bin4_mrg;
    wire [c_nb_hist_val-1:0] colorpxls_bin5_mrg;
    wire [c_nb_hist_val-1:0] colorpxls_bin6_mrg;
    wire [c_nb_hist_val-1:0] colorpxls_bin7_mrg;
    // total number of pixels that are above the threshold
    wire [c_nb_inframe_pxls-1:0] colorpxls_mrg;
    // total number of pixels that are above the threshold on the left side
    wire [c_nb_inframe_pxls-2:0] colorpxls_left_mrg;
    wire [c_nb_inframe_pxls-2:0] colorpxls_rght_mrg;
    // total number of pixels that are above the threshold on the bins 0to2
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin012_mrg;
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin567_mrg;
    // total number of pixels that are above the threshold on the bins 0,1
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin01_mrg;
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin67_mrg;
    wire new_mrgframe;

    // pan camera processing
    wire [c_nb_hist_val-1:0] colorpxls_bin0_p;
    wire [c_nb_hist_val-1:0] colorpxls_bin1_p;
    wire [c_nb_hist_val-1:0] colorpxls_bin2_p;
    wire [c_nb_hist_val-1:0] colorpxls_bin3_p;
    wire [c_nb_hist_val-1:0] colorpxls_bin4_p;
    wire [c_nb_hist_val-1:0] colorpxls_bin5_p;
    wire [c_nb_hist_val-1:0] colorpxls_bin6_p;
    wire [c_nb_hist_val-1:0] colorpxls_bin7_p;
    // total number of pixels that are above the threshold
    wire [c_nb_inframe_pxls-1:0] colorpxls_p;
    // total number of pixels that are above the threshold on the left side
    wire [c_nb_inframe_pxls-2:0] colorpxls_left_p;
    wire [c_nb_inframe_pxls-2:0] colorpxls_rght_p;
    // total number of pixels that are above the threshold on the bins 0to2
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin012_p;
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin567_p; // bins 5to7
    // total number of pixels that are above the threshold on the bins 0,1
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin01_p;
    wire [c_nb_inframe_pxls-2:0] colorpxls_bin67_p; // bins 6to7

    wire          resend;
    wire          config_finished;

    wire          sdat_on;
    wire          sdat_out;  // not making it INOUT, just out, but 3-state

    wire          clk50mhz;

    wire [7:0]    cnt_vsync_max_test;

    //wire [11:0]   ov_capture_datatest;
    wire          rgbmode;

    wire [5:0]    camera_config_steps;
    wire [7:0]    centroid_l, centroid_r, centroid_p, centroid_mrg;
    wire          new_centroid_l, new_centroid_r, new_centroid_p;
    wire          new_centroid_mrg;
    // how close the detected object is
    wire [2:0]    proximity_l, proximity_r, proximity_p, proximity_mrg;

    localparam     testmode = 1'b0; // no test mode
    localparam     swap_r_b = 1'b1; // red and blue are swapped

    wire [2:0]    rgbfilter_l;
    wire [2:0]    rgbfilter_r;
    wire [2:0]    rgbfilter_p; // pan camera

    wire [3:0]    vga_green;
    wire [3:0]    vga_blue;

    wire [7:0]    motor_pwm_left;
    wire [7:0]    motor_pwm_rght;
    wire [15:0]   motor_dps_left;
    wire [15:0]   motor_dps_rght;

    // servo commands are a 2'complement 10bit number: -512,511
    // -500 is -90degrees, 0 is 0degrees, +500 is 90degrees
    wire [10-1:0]   servo_1_cam_pan;
    wire [10-1:0]   servo_2_cam_tilt; 

    //assign servo2_cam_tilt = 10'b0;  //not used yet
    //
    wire locked_wire;  // for the PLL

    assign vga_green_3 = vga_green[3];
    assign vga_green_2 = vga_green[2];
    assign vga_green_1 = vga_green[1];

    assign vga_blue_3 = vga_blue[3];
    assign vga_blue_2 = vga_blue[2];
    assign vga_blue_1 = vga_blue[1];

  // 50 MHz clock from a 25MHz clock
  pll i_pll
  (
    .clkin(clk25mhz),
    .clkout0(clk50mhz),
    .locked(locked_wire)
  );

  // ------ Camera configuration, same for the 3 cameras
  ov7670_top_ctrl controller 
  (
     .rst          (rst),
     .clk          (clk50mhz),
     .resend       (resend),
     .rgbmode      (rgbmode),
     .testmode     (testmode),
     .cnt_reg_test (camera_config_steps),
     .done         (config_finished),
     .sclk         (ov7670_sioc),
     .sdat_on      (sdat_on),
     .sdat_out     (sdat_out),
     .ov7670_rst_n (ov7670_rst_n),
     .ov7670_clk   (ov7670_xclk),
     .ov7670_pwdn  (ov7670_pwdn)
  );
  
  assign ov7670_l_xclk = ov7670_xclk;
  assign ov7670_p_xclk = ov7670_xclk;
  assign ov7670_r_xclk = ov7670_xclk;

  // the 3 cameras share this signals:
  //assign ov7670_l_sioc = ov7670_sioc;
  //assign ov7670_c_sioc = ov7670_sioc;
  //assign ov7670_r_sioc = ov7670_sioc;

  //assign ov7670_l_rst_n = ov7670_rst_n;
  //assign ov7670_c_rst_n = ov7670_rst_n;
  //assign ov7670_r_rst_n = ov7670_rst_n;

  // directly to ground
  //assign ov7670_l_pwdn = ov7670_pwdn;
  //assign ov7670_c_pwdn = ov7670_pwdn;
  //assign ov7670_r_pwdn = ov7670_pwdn;

  assign resend = 1'b0;

  assign ov7670_siod = sdat_on ? sdat_out : 1'bz;
  //assign ov7670_l_siod = sdat_on ? sdat_out : 1'bz;
  //assign ov7670_c_siod = sdat_on ? sdat_out : 1'bz;
  //assign ov7670_r_siod = sdat_on ? sdat_out : 1'bz;



  // --------------------- camera LEFT
  ov7670_capture
    #( // parameters
     .c_img_cols     (c_img_cols), // number of columns of the image
     .c_img_rows     (c_img_rows), // number of rows of the image
     .c_img_pxls     (c_img_pxls), // total number of pixels of image
     .c_nb_img_cols  (c_nb_img_cols), //n.bits needed for number of columns
     //.c_nb_img_rows  (c_nb_img_rows), //n.bits needed for number of rows
     .c_nb_img_pxls  (c_nb_img_pxls), //n.bits needed for total image pixels

     .c_nb_camdata   (c_nb_camdata), //n.bits of camera data port

     .c_nb_buf_red   (c_nb_buf_red),  //n bits for red in the buffer (memory)
     .c_nb_buf_green (c_nb_buf_green),// n bits for green in the buffer (memory)
     .c_nb_buf_blue  (c_nb_buf_blue), // n bits for blue in the buffer (memory)
     .c_nb_buf       (c_nb_buf)   //word width of the memory (buffer)
   )
   capture_left
   (
     .rst          (rst),
     .clk          (clk50mhz),
     .pclk         (ov7670_l_pclk),
     .vsync        (ov7670_l_vsync),
     .href         (ov7670_l_href),
     .rgbmode      (rgbmode),
     .swap_r_b     (swap_r_b),
     //.dataout_test (ov_capture_datatest),
     //.led_test     (led[3:0]),
     .data         (ov7670_l_d),
     .addr         (capture_addr_l),
     .dout         (capture_data_l),
     .newframe     (capture_newframe_l),
     .we           (capture_we_l)
   );

  // frame buffer from the camera, before processing
  frame_buffer
    #( // parameters
       .c_img_cols     (c_img_cols),
       .c_img_rows     (c_img_rows),
       .c_img_pxls     (c_img_pxls),
       .c_nb_buf_red   (c_nb_buf_red),
       .c_nb_buf_green (c_nb_buf_green),
       .c_nb_buf_blue  (c_nb_buf_blue),
       .c_nb_buf       (c_nb_buf)
    )
    cam_fb_left
    (
       .clk     (clk50mhz),
       // ports from camera capture
       .wea     (capture_we_l),
       .addra   (capture_addr_l),
       .dina    (capture_data_l),
       // ports to processing module
       .addrb   (orig_img_addr_l),
       .doutb   (orig_img_pxl_l)
     );

  // image processing module, LEFT ROBOT camera for guiding the robot
  color_proc
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
      .c_outframe_cols(c_outframe_cols),
      .c_outframe_rows(c_outframe_rows),
      .c_inframe_cols (c_inframe_cols),
      .c_inframe_rows (c_inframe_rows),
      .c_inframe_pxls (c_inframe_pxls),

      .c_nb_buf_red   (c_nb_buf_red),
      .c_nb_buf_green (c_nb_buf_green),
      .c_nb_buf_blue  (c_nb_buf_blue),
      .c_nb_buf       (c_nb_buf)
    )
    color_proc_left
    (
      .rst        (rst),
      .clk        (clk50mhz),
      .proc_ctrl  (btnl_proc_ctrl),
      .new_frame_i(capture_newframe_l),
      // from original image frame buffer
      .orig_addr  (orig_img_addr_l),
      .orig_pxl   (orig_img_pxl_l),
      // to processed image frame buffer
      .proc_we    (proc_we_l),
      .proc_addr  (proc_img_addr_l),
      .proc_pxl   (proc_img_pxl_l),

      .new_frame_proc_o (new_frame_proc_l),
      .colorpxls_o    (colorpxls_l),
      .colorpxls_bin0 (colorpxls_bin0_l),
      .colorpxls_bin1 (colorpxls_bin1_l),
      .colorpxls_bin2 (colorpxls_bin2_l),
      .colorpxls_bin3 (colorpxls_bin3_l),
      .colorpxls_bin4 (colorpxls_bin4_l),
      .colorpxls_bin5 (colorpxls_bin5_l),
      .colorpxls_bin6 (colorpxls_bin6_l),
      .colorpxls_bin7 (colorpxls_bin7_l),

      .colorpxls_left_o  (colorpxls_left_l),
      .colorpxls_rght_o  (colorpxls_rght_l),
      .colorpxls_bin012_o (colorpxls_bin012_l),
      .colorpxls_bin567_o (colorpxls_bin567_l),
      .colorpxls_bin01_o (colorpxls_bin01_l),
      .colorpxls_bin67_o (colorpxls_bin67_l),

      .rgbfilter  (rgbfilter_l)
    );

  // processed frame buffer, to display on VGA
  frame_buffer
    #( // parameters
       .c_img_cols     (c_img_cols),
       .c_img_rows     (c_img_rows),
       .c_img_pxls     (c_img_pxls),
       .c_nb_buf_red   (c_nb_buf_red),
       .c_nb_buf_green (c_nb_buf_green),
       .c_nb_buf_blue  (c_nb_buf_blue),
       .c_nb_buf       (c_nb_buf)
    )
    proc_fb_left
    (
       .clk     (clk50mhz),
       // ports from processing module
       .wea     (proc_we_l),
       .addra   (proc_img_addr_l),
       .dina    (proc_img_pxl_l),
       // ports to display
       .addrb   (display_img_addr_l),
       .doutb   (display_img_pxl_l)
     );


  // ------ just to show the centroid in the VGA
  // ------ it can be taken away
  centroid
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
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
    centroid_left
    (  // inputs
      .rst             (rst),
      .clk             (clk50mhz),
      .new_frame_proc_i(new_frame_proc_l),
      .colorpxls_i      (colorpxls_l),
      .colorpxls_bin0_i (colorpxls_bin0_l),
      .colorpxls_bin1_i (colorpxls_bin1_l),
      .colorpxls_bin2_i (colorpxls_bin2_l),
      .colorpxls_bin3_i (colorpxls_bin3_l),
      .colorpxls_bin4_i (colorpxls_bin4_l),
      .colorpxls_bin5_i (colorpxls_bin5_l),
      .colorpxls_bin6_i (colorpxls_bin6_l),
      .colorpxls_bin7_i (colorpxls_bin7_l),

      .colorpxls_left_i  (colorpxls_left_l),
      .colorpxls_rght_i  (colorpxls_rght_l),
      .colorpxls_bin012_i(colorpxls_bin012_l),
      .colorpxls_bin567_i(colorpxls_bin567_l),
      .colorpxls_bin01_i (colorpxls_bin01_l),
      .colorpxls_bin67_i (colorpxls_bin67_l),
      // outputs
      .centroid_o     (centroid_l),
      .new_centroid_o (new_centroid_l),
      .proximity_o    (proximity_l)
    );


  // --------------------- Right robot camera
  ov7670_capture
     #( // parameters
     .c_img_cols     (c_img_cols), // number of columns of the image
     .c_img_rows     (c_img_rows), // number of rows of the image
     .c_img_pxls     (c_img_pxls), // total number of pixels of image
     .c_nb_img_cols  (c_nb_img_cols), //n.bits needed for number of columns
     //.c_nb_img_rows  (c_nb_img_rows), //n.bits needed for number of rows
     .c_nb_img_pxls  (c_nb_img_pxls), //n.bits needed for total image pixels

     .c_nb_camdata   (c_nb_camdata), //n.bits of camera data port

     .c_nb_buf_red   (c_nb_buf_red),  //n bits for red in the buffer (memory)
     .c_nb_buf_green (c_nb_buf_green),// n bits for green in the buffer (memory)
     .c_nb_buf_blue  (c_nb_buf_blue), // n bits for blue in the buffer (memory)
     .c_nb_buf       (c_nb_buf)   //word width of the memory (buffer)
    )
   capture_rght
   (
     .rst          (rst),
     .clk          (clk50mhz),
     .pclk         (ov7670_r_pclk),
     .vsync        (ov7670_r_vsync),
     .href         (ov7670_r_href),
     .rgbmode      (rgbmode),
     .swap_r_b     (swap_r_b),
     //.dataout_test (ov_capture_datatest),
     //.led_test     (led[3:0]),
     .data         (ov7670_r_d),
     .addr         (capture_addr_r),
     .dout         (capture_data_r),
     .newframe     (capture_newframe_r),
     .we           (capture_we_r)
   );

  // frame buffer from the camera, before processing
  frame_buffer
    #( // parameters
       .c_img_cols     (c_img_cols),
       .c_img_rows     (c_img_rows),
       .c_img_pxls     (c_img_pxls),
       .c_nb_buf_red   (c_nb_buf_red),
       .c_nb_buf_green (c_nb_buf_green),
       .c_nb_buf_blue  (c_nb_buf_blue),
       .c_nb_buf       (c_nb_buf)
    )
    cam_fb_rght
    (
       .clk     (clk50mhz),
       // ports from camera capture
       .wea     (capture_we_r),
       .addra   (capture_addr_r),
       .dina    (capture_data_r),
       // ports to processing module
       .addrb   (orig_img_addr_r),
       .doutb   (orig_img_pxl_r)
     );

  // image processing module, RIGHT ROBOT camera for guiding the robot
  color_proc
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
      .c_outframe_cols(c_outframe_cols),
      .c_outframe_rows(c_outframe_rows),
      .c_inframe_cols (c_inframe_cols),
      .c_inframe_rows (c_inframe_rows),
      .c_inframe_pxls (c_inframe_pxls),

      .c_nb_buf_red   (c_nb_buf_red),
      .c_nb_buf_green (c_nb_buf_green),
      .c_nb_buf_blue  (c_nb_buf_blue),
      .c_nb_buf       (c_nb_buf)
    )
    color_proc_rght
    (
      .rst        (rst),
      .clk        (clk50mhz),
      .proc_ctrl  (btnr_proc_ctrl),
      .new_frame_i(capture_newframe_r),
      // from original image frame buffer
      .orig_addr  (orig_img_addr_r),
      .orig_pxl   (orig_img_pxl_r),
      // to processed image frame buffer
      .proc_we    (proc_we_r),
      .proc_addr  (proc_img_addr_r),
      .proc_pxl   (proc_img_pxl_r),

      .new_frame_proc_o (new_frame_proc_r),
      .colorpxls_o    (colorpxls_r),
      .colorpxls_bin0 (colorpxls_bin0_r),
      .colorpxls_bin1 (colorpxls_bin1_r),
      .colorpxls_bin2 (colorpxls_bin2_r),
      .colorpxls_bin3 (colorpxls_bin3_r),
      .colorpxls_bin4 (colorpxls_bin4_r),
      .colorpxls_bin5 (colorpxls_bin5_r),
      .colorpxls_bin6 (colorpxls_bin6_r),
      .colorpxls_bin7 (colorpxls_bin7_r),

      .colorpxls_left_o  (colorpxls_left_r),
      .colorpxls_rght_o  (colorpxls_rght_r),
      .colorpxls_bin012_o (colorpxls_bin012_r),
      .colorpxls_bin567_o (colorpxls_bin567_r),
      .colorpxls_bin01_o (colorpxls_bin01_r),
      .colorpxls_bin67_o (colorpxls_bin67_r),

      .rgbfilter  (rgbfilter_r)
    );

  // processed frame buffer, to display on VGA
  frame_buffer
    #( // parameters
       .c_img_cols     (c_img_cols),
       .c_img_rows     (c_img_rows),
       .c_img_pxls     (c_img_pxls),
       .c_nb_buf_red   (c_nb_buf_red),
       .c_nb_buf_green (c_nb_buf_green),
       .c_nb_buf_blue  (c_nb_buf_blue),
       .c_nb_buf       (c_nb_buf)
    )
    proc_fb_rght
    (
       .clk     (clk50mhz),
       // ports from processing module
       .wea     (proc_we_r),
       .addra   (proc_img_addr_r),
       .dina    (proc_img_pxl_r),
       // ports to display
       .addrb   (display_img_addr_r),
       .doutb   (display_img_pxl_r)
     );

  // ------ just to show the centroid in the VGA
  // ------ it can be taken away
  centroid
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
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
    centroid_rght
    (  // inputs
      .rst             (rst),
      .clk             (clk50mhz),
      .new_frame_proc_i(new_frame_proc_r),
      .colorpxls_i      (colorpxls_r),
      .colorpxls_bin0_i (colorpxls_bin0_r),
      .colorpxls_bin1_i (colorpxls_bin1_r),
      .colorpxls_bin2_i (colorpxls_bin2_r),
      .colorpxls_bin3_i (colorpxls_bin3_r),
      .colorpxls_bin4_i (colorpxls_bin4_r),
      .colorpxls_bin5_i (colorpxls_bin5_r),
      .colorpxls_bin6_i (colorpxls_bin6_r),
      .colorpxls_bin7_i (colorpxls_bin7_r),

      .colorpxls_left_i  (colorpxls_left_r),
      .colorpxls_rght_i  (colorpxls_rght_r),
      .colorpxls_bin012_i(colorpxls_bin012_r),
      .colorpxls_bin567_i(colorpxls_bin567_r),
      .colorpxls_bin01_i (colorpxls_bin01_r),
      .colorpxls_bin67_i (colorpxls_bin67_r),
      // outputs
      .centroid_o      (centroid_r),
      .new_centroid_o (new_centroid_r),
      .proximity_o    (proximity_r)
    );


  // ----- merge the processing results of left + right cameras

  merge2cam_proc
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
      .c_outframe_cols(c_outframe_cols),
      .c_outframe_rows(c_outframe_rows),
      .c_inframe_cols (c_inframe_cols),
      .c_inframe_rows (c_inframe_rows),
      .c_inframe_pxls (c_inframe_pxls),
      .c_hist_bins    (c_hist_bins),
      .c_nb_hist_val  (c_nb_hist_val)
    )
    merg_lr_cams
    (
      .rst             (rst),
      .clk             (clk50mhz),
      .new_frame_proc_l(new_frame_proc_l),
      .new_frame_proc_r(new_frame_proc_r),
      .colorpxls_l     (colorpxls_l),
      .colorpxls_r     (colorpxls_r),

      .colorpxls_bin0_l (colorpxls_bin0_l),
      .colorpxls_bin1_l (colorpxls_bin1_l),
      .colorpxls_bin2_l (colorpxls_bin2_l),
      .colorpxls_bin3_l (colorpxls_bin3_l),
      .colorpxls_bin4_l (colorpxls_bin4_l),
      .colorpxls_bin5_l (colorpxls_bin5_l),
      .colorpxls_bin6_l (colorpxls_bin6_l),
      .colorpxls_bin7_l (colorpxls_bin7_l),

      .colorpxls_bin0_r (colorpxls_bin0_r),
      .colorpxls_bin1_r (colorpxls_bin1_r),
      .colorpxls_bin2_r (colorpxls_bin2_r),
      .colorpxls_bin3_r (colorpxls_bin3_r),
      .colorpxls_bin4_r (colorpxls_bin4_r),
      .colorpxls_bin5_r (colorpxls_bin5_r),
      .colorpxls_bin6_r (colorpxls_bin6_r),
      .colorpxls_bin7_r (colorpxls_bin7_r),

      .colorpxls_left_l   (colorpxls_left_l),
      .colorpxls_rght_l   (colorpxls_rght_l),
      .colorpxls_bin012_l (colorpxls_bin012_l),
      .colorpxls_bin567_l (colorpxls_bin567_l),
      .colorpxls_bin01_l  (colorpxls_bin01_l),
      .colorpxls_bin67_l  (colorpxls_bin67_l),

      .colorpxls_left_r   (colorpxls_left_r),
      .colorpxls_rght_r   (colorpxls_rght_r),
      .colorpxls_bin012_r (colorpxls_bin012_r),
      .colorpxls_bin567_r (colorpxls_bin567_r),
      .colorpxls_bin01_r  (colorpxls_bin01_r),
      .colorpxls_bin67_r  (colorpxls_bin67_r),

      .new_mergeframe_o (new_mrgframe),

      .left_cam_o       (left_cam),
      .mid_cam_o        (mid_cam),
      .rght_cam_o       (rght_cam),

      .colorpxls_o      (colorpxls_mrg),
      .colorpxls_bin0_o (colorpxls_bin0_mrg),
      .colorpxls_bin1_o (colorpxls_bin1_mrg),
      .colorpxls_bin2_o (colorpxls_bin2_mrg),
      .colorpxls_bin3_o (colorpxls_bin3_mrg),
      .colorpxls_bin4_o (colorpxls_bin4_mrg),
      .colorpxls_bin5_o (colorpxls_bin5_mrg),
      .colorpxls_bin6_o (colorpxls_bin6_mrg),
      .colorpxls_bin7_o (colorpxls_bin7_mrg),

      .colorpxls_left_o  (colorpxls_left_mrg),
      .colorpxls_rght_o  (colorpxls_rght_mrg),
      .colorpxls_bin012_o (colorpxls_bin012_mrg),
      .colorpxls_bin567_o (colorpxls_bin567_mrg),
      .colorpxls_bin01_o (colorpxls_bin01_mrg),
      .colorpxls_bin67_o (colorpxls_bin67_mrg)

    );

  // -------------- centroid of the 2 merged cameras
  centroid_2cam
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
      .c_inframe_cols (c_inframe_cols),
      .c_inframe_rows (c_inframe_rows),
      .c_inframe_pxls (c_inframe_pxls),
      .c_hist_bins    (c_hist_bins),
      .c_nb_hist_val  (c_nb_hist_val),
      .c_nb_centroid  (c_nb_centroid),
      .c_nb_prox      (c_nb_prox),
      .c_min_colorpxls (c_min_colorpxls)
    )
    centroid_mrg2cam
    (
      .rst             (rst),
      .clk             (clk50mhz),
      .new_frame_proc_i(new_mrgframe),
      .left_cam_i      (left_cam),
      .mid_cam_i       (mid_cam),
      .rght_cam_i      (rght_cam),
      .colorpxls_i       (colorpxls_mrg),
      .colorpxls_bin0_i  (colorpxls_bin0_mrg),
      .colorpxls_bin1_i  (colorpxls_bin1_mrg),
      .colorpxls_bin2_i  (colorpxls_bin2_mrg),
      .colorpxls_bin3_i  (colorpxls_bin3_mrg),
      .colorpxls_bin4_i  (colorpxls_bin4_mrg),
      .colorpxls_bin5_i  (colorpxls_bin5_mrg),
      .colorpxls_bin6_i  (colorpxls_bin6_mrg),
      .colorpxls_bin7_i  (colorpxls_bin7_mrg),
      .colorpxls_left_i   (colorpxls_left_mrg),
      .colorpxls_rght_i   (colorpxls_rght_mrg),
      .colorpxls_bin012_i (colorpxls_bin012_mrg),
      .colorpxls_bin567_i (colorpxls_bin567_mrg),
      .colorpxls_bin01_i  (colorpxls_bin01_mrg),
      .colorpxls_bin67_i  (colorpxls_bin67_mrg),
      // outputs
      .centroid_o     (centroid_mrg),
      .new_centroid_o (new_centroid_mrg),
      .proximity_o    (proximity_mrg)
    );


  // -------------- PAN camera. Turret camera on top of servo
  ov7670_capture
   #( // parameters
     .c_img_cols     (c_img_cols), // number of columns of the image
     .c_img_rows     (c_img_rows), // number of rows of the image
     .c_img_pxls     (c_img_pxls), // total number of pixels of image
     .c_nb_img_cols  (c_nb_img_cols), //n.bits needed for number of columns
     //.c_nb_img_rows  (c_nb_img_rows), //n.bits needed for number of rows
     .c_nb_img_pxls  (c_nb_img_pxls), //n.bits needed for total image pixels

     .c_nb_camdata   (c_nb_camdata), //n.bits of camera data port

     .c_nb_buf_red   (c_nb_buf_red),  //n bits for red in the buffer (memory)
     .c_nb_buf_green (c_nb_buf_green),// n bits for green in the buffer (memory)
     .c_nb_buf_blue  (c_nb_buf_blue), // n bits for blue in the buffer (memory)
     .c_nb_buf       (c_nb_buf)   //word width of the memory (buffer)
    )
   capture_pan 
   (
     .rst          (rst),
     .clk          (clk50mhz),
     .pclk         (ov7670_p_pclk),
     .vsync        (ov7670_p_vsync),
     .href         (ov7670_p_href),
     .rgbmode      (rgbmode),
     .swap_r_b     (swap_r_b),
     //.dataout_test (ov_capture_datatest),
     //.led_test     (led[3:0]),
     .data         (ov7670_p_d),
     .addr         (capture_addr_p),
     .dout         (capture_data_p),
     .newframe     (capture_newframe_p),
     .we           (capture_we_p)
   );   

  // frame buffer from the PAN camera, before processing
  frame_buffer
    #( // parameters
       .c_img_cols     (c_img_cols),
       .c_img_rows     (c_img_rows),
       .c_img_pxls     (c_img_pxls),
       .c_nb_buf_red   (c_nb_buf_red),
       .c_nb_buf_green (c_nb_buf_green),
       .c_nb_buf_blue  (c_nb_buf_blue),
       .c_nb_buf       (c_nb_buf)
    )
    cam_fb_pan  
    (
       .clk     (clk50mhz),
       // ports from camera capture
       .wea     (capture_we_p),
       .addra   (capture_addr_p),
       .dina    (capture_data_p),
       // ports to processing module
       .addrb   (orig_img_addr_p),
       .doutb   (orig_img_pxl_p)
     );

  // image processing module, PAN camera is for camera pan on turret
  color_proc
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
      .c_outframe_cols(c_outframe_cols),
      .c_outframe_rows(c_outframe_rows),
      .c_inframe_cols (c_inframe_cols),
      .c_inframe_rows (c_inframe_rows),
      .c_inframe_pxls (c_inframe_pxls),

      .c_nb_buf_red   (c_nb_buf_red),
      .c_nb_buf_green (c_nb_buf_green),
      .c_nb_buf_blue  (c_nb_buf_blue),
      .c_nb_buf       (c_nb_buf)
    )
    color_proc_pan
    (
      .rst        (rst),
      .clk        (clk50mhz),
      .proc_ctrl  (btnd_proc_ctrl),
      .new_frame_i(capture_newframe_p),
      // from original image frame buffer
      .orig_addr  (orig_img_addr_p),
      .orig_pxl   (orig_img_pxl_p),
      // to processed image frame buffer
      .proc_we        (proc_we_p),
      .proc_addr  (proc_img_addr_p),
      .proc_pxl   (proc_img_pxl_p),

      .new_frame_proc_o (new_frame_proc_p),

      .colorpxls_o    (colorpxls_p),
      .colorpxls_bin0 (colorpxls_bin0_p),
      .colorpxls_bin1 (colorpxls_bin1_p),
      .colorpxls_bin2 (colorpxls_bin2_p),
      .colorpxls_bin3 (colorpxls_bin3_p),
      .colorpxls_bin4 (colorpxls_bin4_p),
      .colorpxls_bin5 (colorpxls_bin5_p),
      .colorpxls_bin6 (colorpxls_bin6_p),
      .colorpxls_bin7 (colorpxls_bin7_p),

      .colorpxls_left_o  (colorpxls_left_p),
      .colorpxls_rght_o  (colorpxls_rght_p),
      .colorpxls_bin012_o (colorpxls_bin012_p),
      .colorpxls_bin567_o (colorpxls_bin567_p),
      .colorpxls_bin01_o (colorpxls_bin01_p),
      .colorpxls_bin67_o (colorpxls_bin67_p),

      .rgbfilter  (rgbfilter_p)
    );

  // processed frame buffer, to display on VGA
  frame_buffer
    #( // parameters
       .c_img_cols     (c_img_cols),
       .c_img_rows     (c_img_rows),
       .c_img_pxls     (c_img_pxls),
       .c_nb_buf_red   (c_nb_buf_red),
       .c_nb_buf_green (c_nb_buf_green),
       .c_nb_buf_blue  (c_nb_buf_blue),
       .c_nb_buf       (c_nb_buf)
    )
    proc_fb_pan
    (
       .clk     (clk50mhz),
       // ports from processing module
       .wea     (proc_we_p),
       .addra   (proc_img_addr_p),
       .dina    (proc_img_pxl_p),
       // ports to display
       .addrb   (display_img_addr_p),
       .doutb   (display_img_pxl_p)
     );

  centroid
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_cols      (c_nb_img_cols),
      .c_nb_rows      (c_nb_img_rows),
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
    centroid_pan
    (
      .rst             (rst),
      .clk             (clk50mhz),
      .new_frame_proc_i(new_frame_proc_p),
      .colorpxls_i      (colorpxls_p),
      .colorpxls_bin0_i (colorpxls_bin0_p),
      .colorpxls_bin1_i (colorpxls_bin1_p),
      .colorpxls_bin2_i (colorpxls_bin2_p),
      .colorpxls_bin3_i (colorpxls_bin3_p),
      .colorpxls_bin4_i (colorpxls_bin4_p),
      .colorpxls_bin5_i (colorpxls_bin5_p),
      .colorpxls_bin6_i (colorpxls_bin6_p),
      .colorpxls_bin7_i (colorpxls_bin7_p),

      .colorpxls_left_i  (colorpxls_left_p),
      .colorpxls_rght_i  (colorpxls_rght_p),
      .colorpxls_bin012_i (colorpxls_bin012_p),
      .colorpxls_bin567_i (colorpxls_bin567_p),
      .colorpxls_bin01_i (colorpxls_bin01_p),
      .colorpxls_bin67_i (colorpxls_bin67_p),

      .centroid_o   (centroid_p),
      .new_centroid_o (new_centroid_p),
      .proximity_o    (proximity_p)
    );

  // -------------------------------- VGA Synchronization
  vga_sync i_vga 
  (
    .rst     (rst),
    .clk     (clk50mhz),
    .visible (vga_visible),
    .new_pxl (vga_new_pxl),
    .hsync   (vga_hsync),
    .vsync   (vga_vsync),
    .col     (vga_col),
    .row     (vga_row)
  );

  assign rgbmode   = 1'b1;

  // --------- 3 CAMERA IMAGE VGA DISPLAY
  vga_display
    #( // parameters
      .c_img_cols     (c_img_cols),
      .c_img_rows     (c_img_rows),
      .c_img_pxls     (c_img_pxls),
      .c_nb_buf_red   (c_nb_buf_red),
      .c_nb_buf_green (c_nb_buf_green),
      .c_nb_buf_blue  (c_nb_buf_blue),
      .c_nb_buf       (c_nb_buf)
    )
    i_vga_display 
    (
     .rst        (rst),
     .clk        (clk50mhz),
     .visible    (vga_visible),
     .new_pxl    (vga_new_pxl),
     .hsync      (vga_hsync),
     .vsync      (vga_vsync),
     .rgbmode    (rgbmode),
     .testmode   (testmode),
     .centroid_l (centroid_l),  // left camera
     .proximity_l(proximity_l),
     .rgbfilter_l(rgbfilter_l),
     .centroid_c (centroid_r),  //right robot camera is displayed at the center
     .proximity_c(proximity_r),
     .rgbfilter_c(rgbfilter_r),
     .centroid_r (centroid_p),  // pan camera, is drawn on the right
     .proximity_r(proximity_p),
     .rgbfilter_r(rgbfilter_p),
     .col        (vga_col),
     .row        (vga_row),
     .frame_pixel_l(display_img_pxl_l), // left camera
     .frame_addr_l (display_img_addr_l),
     .frame_pixel_c(display_img_pxl_r), // right camera
     .frame_addr_c (display_img_addr_r),
     .frame_pixel_r(display_img_pxl_p), // pan camera
     .frame_addr_r (display_img_addr_p),
     .vga_red    (vga_red),
     .vga_green  (vga_green),
     .vga_blue   (vga_blue)
    );

  

  always @ (*)
  begin
    if (config_finished)
      led = centroid_l; // could be any other centroid
    else begin
      led[7:6] = 1'b00;
      led[5:0] = camera_config_steps;
    end
  end

  // ---------- MOTOR CONTROL
  // this control is for PWM, it has to be changed for DPS, but just to test
  motor_ctrl_spi i_motor_ctrl_spi
  (
   .rst            (rst),
   .clk            (clk50mhz),
   .centroid       (centroid_mrg), //merged centroid from left+right cameras
   .new_centroid   (new_centroid_mrg), //merged cam
   .proximity      (proximity_mrg), //
   .v_left_motor_o (motor_pwm_left),
   .v_rght_motor_o (motor_pwm_rght)
  );

  // Servo control for the camera pan
  servo_pan_ctrl_spi i_servo_pan_ctrl
  (
   .rst             (rst),
   .clk             (clk50mhz),
   .centroid        (centroid_p), // centroid from Pan camera
   .new_centroid    (new_centroid_p), // PAN camera
   .proximity       (proximity_p), // pan cam
   .servo_cam_pan_o (servo_1_cam_pan)
   //.servo_cam_tilt (servo_2_cam_tilt)
  );


  // this control is for PWM, it has to be changed for DPS, but just to test
  assign motor_dps_left = {8'b0,motor_pwm_left}; 
  assign motor_dps_rght = {8'b0,motor_pwm_rght}; 

  // ----------------- GOPIGO Control -------------------
  // SPI communication with the GoPiGo
  top_spi_controller_wrp
    #( //parameters
      .G_CLK_FREQ_MHZ(G_CLK_FREQ_MHZ) // clk frequency (after PLL)
    )
    i_top_spi_ctrl_wrp
    (
     .rst         (rst),
    .clk         (clk50mhz),
    //.motor_pwm_left_i     (motor_pwm_left),
    //.motor_pwm_rght_i     (motor_pwm_rght),
    //.motor_dps_limit_i    (motor_dps_limit),
    .motor_dps_left_i     (motor_dps_left),
    .motor_dps_rght_i     (motor_dps_rght),
    //.led_eye_left_rgb_i   (led_eye_left_rgb),
    //.led_eye_rght_rgb_i   (led_eye_rght_rgb),
    //.led_blink_left_rgb_i (led_blink_left_rgb),
    //.led_blink_rght_rgb_i (led_blink_rght_rgb),
    .servo_1_i            (servo_1_cam_pan),
    //.servo_2_i            (servo_2_cam_tilt), // unused, tilt in the future
    .sclk_o               (spi_clk_o), 
    .miso_i               (spi_miso_i),
    //output mosi_en_o, 
    .mosi_o               (spi_mosi_o),
    .spi_ss_n             (spi_ss_n),  // spi slave select , active low
    .rpi_running          (rpi_running) // 1 when running, to inform gopigo
  );

endmodule

