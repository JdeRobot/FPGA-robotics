//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   top module 
//   Two cameras 50MHz 160x120 image
//---------------------------------------------------------------------------//

module top_ov7670x2_centroid
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
     input        clk,
     // camera 1
     output       ov7670_1_sioc,
     output       ov7670_1_siod,
     output       ov7670_1_rst_n,

     input        ov7670_1_vsync,
     input        ov7670_1_href,
     input        ov7670_1_pclk,
     output       ov7670_1_xclk,
     output       ov7670_1_pwdn,
     input  [7:0] ov7670_1_d,

     // camera 2
     output       ov7670_2_sioc,
     output       ov7670_2_siod,
     output       ov7670_2_rst_n,

     input        ov7670_2_vsync,
     input        ov7670_2_href,
     input        ov7670_2_pclk,
     output       ov7670_2_xclk,
     output       ov7670_2_pwdn,
     input  [7:0] ov7670_2_d,


     output reg [7:0] led,
     input        btnl_proc_ctrl_2,  //control color processing cam2 (left)
     input        btnr_proc_ctrl_1,  //control color processing cam2 (right)

     output [3:0] vga_red,
     output [3:0] vga_green,
     output [3:0] vga_blue,
     output       vga_hsync,
     output       vga_vsync
    );

    // these 5 could be just one pin
    wire          ov7670_rst_n;
    wire          ov7670_siod;
    wire          ov7670_sioc;
    wire          ov7670_xclk;
    wire          ov7670_pwdn;

    wire          vga_visible;
    wire          vga_new_pxl;
    wire [10-1:0] vga_col;
    wire [10-1:0] vga_row;
   
    // camera 1
    wire [c_nb_img_pxls-1:0] display_img_addr_1;
    wire [c_nb_buf-1:0]      display_img_pxl_1;

    wire [c_nb_img_pxls-1:0] capture_addr_1;
    wire [c_nb_buf-1:0]    capture_data_1;
    wire          capture_we_1;

    wire [c_nb_img_pxls-1:0] orig_img_addr_1;
    wire [c_nb_buf-1:0]      orig_img_pxl_1;
    wire          proc_we_1;
    wire [c_nb_img_pxls-1:0] proc_img_addr_1;
    wire [c_nb_buf-1:0]      proc_img_pxl_1;

    // camera 1
    wire [c_nb_img_pxls-1:0] display_img_addr_2;
    wire [c_nb_buf-1:0]      display_img_pxl_2;

    wire [c_nb_img_pxls-1:0] capture_addr_2;
    wire [c_nb_buf-1:0]    capture_data_2;
    wire          capture_we_2;

    wire [c_nb_img_pxls-1:0] orig_img_addr_2;
    wire [c_nb_buf-1:0]      orig_img_pxl_2;
    wire          proc_we_2;
    wire [c_nb_img_pxls-1:0] proc_img_addr_2;
    wire [c_nb_buf-1:0]      proc_img_pxl_2;

    wire          resend;
    wire          config_finished;

    wire          sdat_on;
    wire          sdat_out;  // not making it INOUT, just out, but 3-state

    wire          clk50mhz;


    wire [7:0]    cnt_vsync_max_test;

    wire [11:0]   ov_capture_datatest;
    wire          rgbmode;

    wire [5:0]    camera_config_steps;
    wire [7:0]    centroid_1, centroid_2;
    wire [2:0]    proximity_1, proximity_2; // how close the detected object is

    parameter     testmode = 1'b0; // no test mode
    parameter     swap_r_b = 1'b1; // red and blue are swapped

    wire [2:0]    rgbfilter_1;
    wire [2:0]    rgbfilter_2;


  // 50 MHz clock from a 100MHz clock
  pll i_pll100_50mhz
   (// Clock in ports
    .clk100mhz (clk),      // IN
    // Clock out ports
    .clk50mhz(clk50mhz),   // OUT
    // Status and control signals
    .RESET(rst)            // IN
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
     .centroid_1 (centroid_1),  // camera 1
     .proximity_1(proximity_1),
     .rgbfilter_1(rgbfilter_1),
     .centroid_2 (centroid_2),  // camera 2
     .proximity_2(proximity_2),
     .rgbfilter_2(rgbfilter_2),
     .col        (vga_col),
     .row        (vga_row),
     .frame_pixel_1(display_img_pxl_1), // camera 1
     .frame_addr_1 (display_img_addr_1),
     .frame_pixel_2(display_img_pxl_2), // camera 2
     .frame_addr_2 (display_img_addr_2),
     .vga_red    (vga_red),
     .vga_green  (vga_green),
     .vga_blue   (vga_blue)
  );


  // --------------------- camera 1 RIGTH
  // frame buffer from the camera, before processing
  frame_buffer cam_fb_1  
  (
     .clk     (clk50mhz),
     // ports from camera capture
     .wea     (capture_we_1),
     .addra   (capture_addr_1),
     .dina    (capture_data_1),
     // ports to processing module
     .addrb   (orig_img_addr_1),
     .doutb   (orig_img_pxl_1)
   );

  // image processing module
  color_proc img_proc_1
  (
     .rst        (rst),
     .clk        (clk50mhz),
     .proc_ctrl  (btnr_proc_ctrl_1),
     // from original image frame buffer
     .orig_addr  (orig_img_addr_1),
     .orig_pxl   (orig_img_pxl_1),
     // to processed image frame buffer
     .proc_we        (proc_we_1),
     .proc_addr  (proc_img_addr_1),
     .proc_pxl   (proc_img_pxl_1),
     .rgbfilter  (rgbfilter_1),
     .centroid   (centroid_1),
     .proximity  (proximity_1)
  );


  // processed frame buffer, to display on VGA
  frame_buffer proc_fb_1
  (
     .clk     (clk50mhz),
     // ports from processing module
     .wea     (proc_we_1),
     .addra   (proc_img_addr_1),
     .dina    (proc_img_pxl_1),
     // ports to display
     .addrb   (display_img_addr_1),
     .doutb   (display_img_pxl_1)
   );

  ov7670_capture capture_1 
  (
     .rst          (rst),
     .clk          (clk50mhz),
     .pclk         (ov7670_1_pclk),
     .vsync        (ov7670_1_vsync),
     .href         (ov7670_1_href),
     .rgbmode      (rgbmode),
     .swap_r_b     (swap_r_b),
     //.dataout_test (ov_capture_datatest),
     //.led_test     (led[3:0]),
     .data         (ov7670_1_d),
     .addr         (capture_addr_1),
     .dout         (capture_data_1),
     .we           (capture_we_1)
  );   

  // --------------------- camera 2 LEFT
  // frame buffer from the camera, before processing
  frame_buffer cam_fb_2  
  (
     .clk     (clk50mhz),
     // ports from camera capture
     .wea     (capture_we_2),
     .addra   (capture_addr_2),
     .dina    (capture_data_2),
     // ports to processing module
     .addrb   (orig_img_addr_2),
     .doutb   (orig_img_pxl_2)
   );

  // image processing module
  color_proc img_proc_2
  (
     .rst        (rst),
     .clk        (clk50mhz),
     .proc_ctrl  (btnl_proc_ctrl_2),
     // from original image frame buffer
     .orig_addr  (orig_img_addr_2),
     .orig_pxl   (orig_img_pxl_2),
     // to processed image frame buffer
     .proc_we        (proc_we_2),
     .proc_addr  (proc_img_addr_2),
     .proc_pxl   (proc_img_pxl_2),
     .rgbfilter  (rgbfilter_2),
     .centroid   (centroid_2),
     .proximity  (proximity_2)
  );


  // processed frame buffer, to display on VGA
  frame_buffer proc_fb_2  
  (
     .clk     (clk50mhz),
     // ports from processing module
     .wea     (proc_we_2),
     .addra   (proc_img_addr_2),
     .dina    (proc_img_pxl_2),
     // ports to display
     .addrb   (display_img_addr_2),
     .doutb   (display_img_pxl_2)
   );
   
  ov7670_capture capture_2 
  (
     .rst          (rst),
     .clk          (clk50mhz),
     .pclk         (ov7670_2_pclk),
     .vsync        (ov7670_2_vsync),
     .href         (ov7670_2_href),
     .rgbmode      (rgbmode),
     .swap_r_b     (swap_r_b),
     //.dataout_test (ov_capture_datatest),
     //.led_test     (led[3:0]),
     .data         (ov7670_2_d),
     .addr         (capture_addr_2),
     .dout         (capture_data_2),
     .we           (capture_we_2)
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
  
  assign ov7670_1_xclk = ov7670_xclk;  // same pins could be used
  assign ov7670_2_xclk = ov7670_xclk;
  assign ov7670_1_siod = ov7670_siod;
  assign ov7670_2_siod = ov7670_siod;
  assign ov7670_1_sioc = ov7670_sioc;
  assign ov7670_2_sioc = ov7670_sioc;
  assign ov7670_1_pwdn = ov7670_pwdn;
  assign ov7670_2_pwdn = ov7670_pwdn;
  assign ov7670_1_rst_n = ov7670_rst_n;
  assign ov7670_2_rst_n = ov7670_rst_n;

  assign resend = 1'b0;
  assign ov7670_siod = sdat_on ? sdat_out : 1'bz;

  always @ (*)
  begin
    if (config_finished)
      led = centroid_1; // could be centroid 2
    else begin
      led[7:6] = 1'b00;
      led[5:0] = camera_config_steps;
    end
  end

endmodule

