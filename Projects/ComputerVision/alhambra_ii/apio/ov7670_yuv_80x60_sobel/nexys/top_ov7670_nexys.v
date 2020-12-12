//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   top module with debuging modules
//------------------------------------------------------------------------------//

module top_ov7670_nexys
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

      c_nb_buf_rgb  =  12, // n bits for RGB444
      c_nb_buf  =  8  // n bits for gray level
    )
    (input        rst,
     input        clk,

     input        sw0_sel7bits,

     output       ov7670_sioc,
     output       ov7670_siod,
     output       ov7670_rst_n,

     input        ov7670_vsync,
     input        ov7670_href,
     input        ov7670_pclk,
     output       ov7670_xclk,
     output       ov7670_pwdn,
     input  [4:0] ov7670_d_msb, // bits 7:3 (not enough pins)
     input  [2:0] ov7670_d_in, // not used unless sw0=1: bits 3:0
                            // in Alhambra (not enough pins)

     output [7:0] led,
     input        proc_ctrl,  //control of the image processing

     output [3:0] vga_red_out,
     output [3:0] vga_green_out,
     output [3:0] vga_blue_out,
     output       vga_hsync,
     output       vga_vsync
    );

    wire [7:0]    ov7670_d;  // not enough pins

    wire  [4-1:0] vga_red;
    wire  [4-1:0] vga_green;
    wire  [4-1:0] vga_blue;

    wire          vga_visible;
    wire          vga_new_pxl;
    wire [10-1:0] vga_col;
    wire [10-1:0] vga_row;
 
    wire [c_nb_img_pxls-1:0] display_img_addr;
    wire [c_nb_buf-1:0]      display_img_pxl;
    //vga has 12 bits in case it is used for RGB444
    wire [c_nb_buf+4-1:0]    display_img_pxl_12;

    wire [c_nb_img_pxls-1:0] capture_addr;
    wire [c_nb_buf-1:0]      capture_data;
    wire [c_nb_buf_rgb-1:0]  capture_data_12;
    wire          capture_we;

    wire [c_nb_img_pxls-1:0] orig_img_addr;
    wire [c_nb_buf-1:0]      orig_img_pxl;
    wire          proc_we;
    wire [c_nb_img_pxls-1:0] proc_img_addr;
    wire [c_nb_buf-1:0] proc_img_pxl;

    wire          resend;
    wire          config_finished;

    wire          sdat_on;
    wire          sdat_out;  // not making it INOUT, just out, but 3-state

    wire          clk100mhz;

    wire [7:0]    cnt_vsync_max_test;

    wire [11:0]   ov_capture_datatest;

    wire          filter_on;
    wire          vfilter;
    wire          rgbmode; // 0 because in gray mode
    wire          test_mode; // 0 because in gray mode
    wire          ov7670_pwdn; // not going out -> not enough pins

  assign rgbmode = 1'b0;


  assign vga_red_out[3:2]   = vga_red[3:2];
  assign vga_green_out[3:2] = vga_green[3:2];
  assign vga_blue_out[3:2]  = vga_blue[3:2];
  assign vga_red_out[1:0]   = sw0_sel7bits ? vga_red[1:0]   : 2'b00;
  assign vga_green_out[1:0] = sw0_sel7bits ? vga_green[1:0] : 2'b00;
  assign vga_blue_out[1:0]  = sw0_sel7bits ? vga_blue[1:0]  : 2'b00;

  assign ov7670_d[7:3] =  ov7670_d_msb;
  // cannot get them, with avialable pins
  assign ov7670_d[2:0] = sw0_sel7bits ? ov7670_d_in : 3'b011;

  // 100 MHz clock
  // SB_PLL40_CORE
  //          #(.FEEDBACK_PATH("SIMPLE"),
  //              .PLLOUT_SELECT("GENCLK"),
  //              .DIVR(4'd2),
  //              .DIVF(6'd49),
  //              .DIVQ(3'd1),
  //              .FILTER_RANGE(3'b001)
  //          )
  //          uut
  //          (
  //              .REFERENCECLK(clk),
  //              .PLLOUTCORE(clk100mhz),
  //              .RESETB(1'b1),
  //              .BYPASS(1'b0)
  //           );
  assign clk100mhz = clk;

   mode_sel I_mode_sel
   (
     .rst       (rst),
     .clk       (clk100mhz),
     .btn_in    (proc_ctrl),
     .filter_on (filter_on),
     .vfilter   (vfilter),
     .test_mode (test_mode)
   );

   vga_sync I_vga 
   (
     .rst     (rst),
     .clk     (clk100mhz),
     .visible (vga_visible),
     .new_pxl (vga_new_pxl),
     .hsync   (vga_hsync),
     .vsync   (vga_vsync),
     .col     (vga_col),
     .row     (vga_row)
  );

  vga_display I_ov_display 
  (
     .rst        (rst),
     .clk        (clk100mhz),
     .visible    (vga_visible),
     .new_pxl    (vga_new_pxl),
     .hsync      (vga_hsync),
     .vsync      (vga_vsync),
     .rgbmode    (rgbmode),
     .col        (vga_col),
     .row        (vga_row),
     .frame_pixel(display_img_pxl_12),
     .frame_addr (display_img_addr),
     .vga_red    (vga_red),
     .vga_green  (vga_green),
     .vga_blue   (vga_blue)
  );
  assign display_img_pxl_12 = {4'b0 , display_img_pxl};

  // frame buffer from the camera, before processing
  frame_buffer I_cam_fb  
  (
     .clk     (clk100mhz),
     .wea     (capture_we),
     .addra   (capture_addr),
     .dina    (capture_data),
     .addrb   (orig_img_addr),
     .doutb   (orig_img_pxl)
   );

  // Sobel processing module
  edge_proc I_edge_proc
  (
     .rst        (rst),
     .clk        (clk100mhz),
     .filter_on  (filter_on),
     .vfilter    (vfilter),
     // address and pixel of original image
     .orig_pxl   (orig_img_pxl),
     .orig_addr  (orig_img_addr),
     // address and pixel of processed image
     .proc_we    (proc_we),
     .proc_pxl   (proc_img_pxl),
     .proc_addr  (proc_img_addr)
  );


  frame_buffer I_fb_proc
  (
     .clk     (clk100mhz),
     .wea     (proc_we),
     .addra   (proc_img_addr),
     .dina    (proc_img_pxl),
     .addrb   (display_img_addr),
     .doutb   (display_img_pxl)
   );

  ov7670_capture I_capture_yuv 
  (
     .rst          (rst),
     .clk          (clk100mhz),
     .pclk         (ov7670_pclk),
     .vsync        (ov7670_vsync),
     .href         (ov7670_href),
     .rgbmode      (rgbmode), // 0 because it is in YUV
     //.swap_r_b     (swap_r_b),
     //.dataout_test (ov_capture_datatest),
     //.led_test     (led[3:0]),
     .data         (ov7670_d),
     .addr         (capture_addr),
     .dout         (capture_data_12),
     .we           (capture_we)
  );

  assign capture_data = capture_data_12[7:0];
  
  ov7670_top_ctrl I_controller 
  (
     .rst          (rst),
     .clk          (clk100mhz),
     .test_mode    (test_mode),
     .resend       (resend),
     .cnt_reg_test (led[5:0]),
     .done         (config_finished),
     .sclk         (ov7670_sioc),
     .sdat_on      (sdat_on),
     .sdat_out     (sdat_out),
     .ov7670_rst_n (ov7670_rst_n),
     .ov7670_clk   (ov7670_xclk),
     .ov7670_pwdn  (ov7670_pwdn)
  );

  assign resend = 1'b0;
  assign ov7670_siod = sdat_on ? sdat_out : 1'bz;


  assign led[7] = config_finished;
  assign led[6] = 1'b0;

endmodule

