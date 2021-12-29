//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   top module 
//   Three cameras 50MHz 160x120 image
//   This prototipe has 3 cameras:
//     - left and center: to guide the robot
//     - right: to follow an independent target with pan
//---------------------------------------------------------------------------//

module top_ov7670x3
  # (parameter
      // QQVGA /2
      c_img_cols    = 160, // 8 bits
      c_img_rows    = 120, //  7 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls =  15,  //160*120=19200 -> 2^15

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
     input  [7:0] ov7670_l_d,

     // the 3 cameras share sioc and siod
     output       ov7670_sioc,
     output       ov7670_siod,
     //output       ov7670_c_sioc,
     //output       ov7670_c_siod,
     //output       ov7670_c_rst_n,

     // central camera
     input        ov7670_c_vsync,
     input        ov7670_c_href,
     input        ov7670_c_pclk,
     output       ov7670_c_xclk,
     //output       ov7670_c_pwdn,
     input  [7:0] ov7670_c_d,


     // right camera
     //output       ov7670_r_sioc, // shared with the other cameras
     //output       ov7670_r_siod,
     //output       ov7670_r_rst_n,

     input        ov7670_r_vsync,
     input        ov7670_r_href,
     input        ov7670_r_pclk,
     output       ov7670_r_xclk,
     //output       ov7670_r_pwdn,
     input  [7:0] ov7670_r_d,

     output       ov7670_rst_n,  // for the 3 cameras

     output reg [7:0] led,
     input        btnl_proc_ctrl,  //control color processing cam left
     input        btnd_proc_ctrl,  //control color processing cam center
     input        btnr_proc_ctrl,  //control color processing cam right

     output [3:0] vga_red,
     output [3:0] vga_green,
     //output [3:0] vga_blue,
     output       vga_blue_3,
     output       vga_blue_2,
     output       vga_blue_1,
     output       vga_hsync,
     output       vga_vsync,

    // SPI
    output   sclk_o, 
    input    miso_i,
    output   mosi_o,
    output   spi_ss_n,  // spi slave select , active low
    // rpi_running is 1 when running, to inform gopigo,  ov7670_rst_n could be
    // used to save one pin, but maybe it is too much for fanout
    output   rpi_running

    );

    //wire          ov7670_siod;
    //wire          ov7670_sioc;
    wire          ov7670_xclk;
    wire          ov7670_pwdn;

    wire          vga_visible;
    wire          vga_new_pxl;
    wire [10-1:0] vga_col;
    wire [10-1:0] vga_row;
   
    // left camera
    wire [c_nb_img_pxls-1:0] display_img_addr_l;
    wire [c_nb_buf-1:0]      display_img_pxl_l;

    wire [c_nb_img_pxls-1:0] capture_addr_l;
    wire [c_nb_buf-1:0]    capture_data_l;
    wire          capture_we_l;

    wire [c_nb_img_pxls-1:0] orig_img_addr_l;
    wire [c_nb_buf-1:0]      orig_img_pxl_l;
    wire          proc_we_l;
    wire [c_nb_img_pxls-1:0] proc_img_addr_l;
    wire [c_nb_buf-1:0]      proc_img_pxl_l;
 
    // center camera
    wire [c_nb_img_pxls-1:0] display_img_addr_c;
    wire [c_nb_buf-1:0]      display_img_pxl_c;

    wire [c_nb_img_pxls-1:0] capture_addr_c;
    wire [c_nb_buf-1:0]    capture_data_c;
    wire          capture_we_c;

    wire [c_nb_img_pxls-1:0] orig_img_addr_c;
    wire [c_nb_buf-1:0]      orig_img_pxl_c;
    wire          proc_we_c;
    wire [c_nb_img_pxls-1:0] proc_img_addr_c;
    wire [c_nb_buf-1:0]      proc_img_pxl_c;    

    // right camera: camera for the pan to follow an independent target
    wire [c_nb_img_pxls-1:0] display_img_addr_r;
    wire [c_nb_buf-1:0]      display_img_pxl_r;

    wire [c_nb_img_pxls-1:0] capture_addr_r;
    wire [c_nb_buf-1:0]    capture_data_r;
    wire          capture_we_r;

    wire [c_nb_img_pxls-1:0] orig_img_addr_r;
    wire [c_nb_buf-1:0]      orig_img_pxl_r;
    wire          proc_we_r;
    wire [c_nb_img_pxls-1:0] proc_img_addr_r;
    wire [c_nb_buf-1:0]      proc_img_pxl_r;

    wire          resend;
    wire          config_finished;

    wire          sdat_on;
    wire          sdat_out;  // not making it INOUT, just out, but 3-state

    wire          clk50mhz;

    wire [7:0]    cnt_vsync_max_test;

    wire [11:0]   ov_capture_datatest;
    wire          rgbmode;

    wire [5:0]    camera_config_steps;
    wire [7:0]    centroid_l, centroid_c, centroid_r;
    wire          new_centroid_l, new_centroid_c, new_centroid_r;
    // how close the detected object is
    wire [2:0]    proximity_l, proximity_c, proximity_r;

    parameter     testmode = 1'b0; // no test mode
    parameter     swap_r_b = 1'b1; // red and blue are swapped

    wire [2:0]    rgbfilter_l;
    wire [2:0]    rgbfilter_c;
    wire [2:0]    rgbfilter_r;

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

   // VGA Synchronization
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

  vga_display I_ov_display 
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
     .centroid_c (centroid_c),  // center camera
     .proximity_c(proximity_c),
     .rgbfilter_c(rgbfilter_c),
     .centroid_r (centroid_r),  // right camera
     .proximity_r(proximity_r),
     .rgbfilter_r(rgbfilter_r),
     .col        (vga_col),
     .row        (vga_row),
     .frame_pixel_l(display_img_pxl_l), // left camera
     .frame_addr_l (display_img_addr_l),
     .frame_pixel_c(display_img_pxl_c), // center camera
     .frame_addr_c (display_img_addr_c),
     .frame_pixel_r(display_img_pxl_r), // right camera
     .frame_addr_r (display_img_addr_r),
     .vga_red    (vga_red),
     .vga_green  (vga_green),
     .vga_blue   (vga_blue)
  );

  // --------------------- RIGHT camera
  // frame buffer from the camera, before processing
  frame_buffer cam_fb_r  
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

  // image processing module
  color_proc img_proc_r
  (
     .rst        (rst),
     .clk        (clk50mhz),
     .proc_ctrl  (btnr_proc_ctrl),
     // from original image frame buffer
     .orig_addr  (orig_img_addr_r),
     .orig_pxl   (orig_img_pxl_r),
     // to processed image frame buffer
     .proc_we        (proc_we_r),
     .proc_addr  (proc_img_addr_r),
     .proc_pxl   (proc_img_pxl_r),
     .rgbfilter  (rgbfilter_r),
     .centroid   (centroid_r),
     .new_centroid (new_centroid_r),
     .proximity  (proximity_r)
  );


  // processed frame buffer, to display on VGA
  frame_buffer proc_fb_r
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

  ov7670_capture capture_r 
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
     .we           (capture_we_r)
  );   


  // --------------------- camera CENTER
  // frame buffer from the camera, before processing
  frame_buffer cam_fb_c
  (
     .clk     (clk50mhz),
     // ports from camera capture
     .wea     (capture_we_c),
     .addra   (capture_addr_c),
     .dina    (capture_data_c),
     // ports to processing module
     .addrb   (orig_img_addr_c),
     .doutb   (orig_img_pxl_c)
   );

  // image processing module
  color_proc img_proc_c
  (
     .rst        (rst),
     .clk        (clk50mhz),
     .proc_ctrl  (btnd_proc_ctrl),
     // from original image frame buffer
     .orig_addr  (orig_img_addr_c),
     .orig_pxl   (orig_img_pxl_c),
     // to processed image frame buffer
     .proc_we        (proc_we_c),
     .proc_addr  (proc_img_addr_c),
     .proc_pxl   (proc_img_pxl_c),
     .rgbfilter  (rgbfilter_c),
     .centroid   (centroid_c),
     .new_centroid (new_centroid_c),
     .proximity  (proximity_c)
  );


  // processed frame buffer, to display on VGA
  frame_buffer proc_fb_c
  (
     .clk     (clk50mhz),
     // ports from processing module
     .wea     (proc_we_c),
     .addra   (proc_img_addr_c),
     .dina    (proc_img_pxl_c),
     // ports to display
     .addrb   (display_img_addr_c),
     .doutb   (display_img_pxl_c)
   );

  ov7670_capture capture_c
  (
     .rst          (rst),
     .clk          (clk50mhz),
     .pclk         (ov7670_c_pclk),
     .vsync        (ov7670_c_vsync),
     .href         (ov7670_c_href),
     .rgbmode      (rgbmode),
     .swap_r_b     (swap_r_b),
     //.dataout_test (ov_capture_datatest),
     //.led_test     (led[3:0]),
     .data         (ov7670_c_d),
     .addr         (capture_addr_c),
     .dout         (capture_data_c),
     .we           (capture_we_c)
  );   

  // --------------------- camera LEFT
  // frame buffer from the camera, before processing
  frame_buffer cam_fb_l  
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

  // image processing module
  color_proc img_proc_l
  (
     .rst        (rst),
     .clk        (clk50mhz),
     .proc_ctrl  (btnl_proc_ctrl),
     // from original image frame buffer
     .orig_addr  (orig_img_addr_l),
     .orig_pxl   (orig_img_pxl_l),
     // to processed image frame buffer
     .proc_we        (proc_we_l),
     .proc_addr  (proc_img_addr_l),
     .proc_pxl   (proc_img_pxl_l),
     .rgbfilter  (rgbfilter_l),
     .centroid   (centroid_l),
     .new_centroid (new_centroid_l),
     .proximity  (proximity_l)
  );

  // processed frame buffer, to display on VGA
  frame_buffer proc_fb_l  
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
   
  ov7670_capture capture_l 
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
     .we           (capture_we_l)
  );
  
  // same for both cameras
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
  assign ov7670_c_xclk = ov7670_xclk;
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

  always @ (*)
  begin
    if (config_finished)
      led = centroid_c; // could be any other centroid: left or right
    else begin
      led[7:6] = 1'b00;
      led[5:0] = camera_config_steps;
    end
  end

  // this control is for PWM, it has to be changed for DPS, but just to test
  motor_ctrl_spi i_motor_ctrl_spi
  (
   .rst            (rst),
   .clk            (clk),
   .centroid       (centroid_c), // using the central cam, in the future 2 cams
   .new_centroid   (new_centroid_c), //central cam
   .proximity      (proximity_c), // using central cam
   .v_left_motor_o (motor_pwm_left),
   .v_rght_motor_o (motor_pwm_rght)
  );

  // Servo control for the camera pan
  servo_pan_ctrl_spi i_servo_pan_ctrl
  (
   .rst             (rst),
   .clk             (clk50mhz),
   .centroid        (centroid_c), // using the central cam, in the future 2 cams
   .new_centroid    (new_centroid_c), //central cam
   .proximity       (proximity_c), // using central cam
   .servo_cam_pan_o (servo_1_cam_pan)
   //.servo_cam_tilt (servo_2_cam_tilt)
  );


  // this control is for PWM, it has to be changed for DPS, but just to test
  assign motor_dps_left = {8'b0,motor_pwm_left}; 
  assign motor_dps_rght = {8'b0,motor_pwm_rght}; 

  // SPI communication with the GoPiGo
  top_spi_controller_wrp i_top_spi_ctrl_wrp
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
    .sclk_o               (sclk_o), 
    .miso_i               (miso_i),
    //output mosi_en_o, 
    .mosi_o               (mosi_o),
    .spi_ss_n             (spi_ss_n),  // spi slave select , active low
    .rpi_running          (rpi_running) // 1 when running, to inform gopigo
  );

endmodule

