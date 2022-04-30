//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   top module 50 MHz clock generated from PLL 25MHz
//------------------------------------------------------------------------------//

module top_ov7670
  # (parameter
      // VGA
      //c_img_cols    = 640, // 10 bits
      //c_img_rows    = 480, //  9 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;
      // c_nb_img_pxls = log2i(c_img_pxls-1) + 1
      //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288
      // QVGA
      c_img_cols    = 320, // 9 bits
      c_img_rows    = 240, // 8 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls =  17,  //320*240=76,800 -> 2^17
      // QQVGA
      //c_img_cols    = 160, // 8 bits
      //c_img_rows    = 120, //  7 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_img_pxls =  15,  //160*120=19.200 -> 2^15
      // QQVGA /2
      //c_img_cols    = 80, // 7 bits
      //c_img_rows    = 60, //  6 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_img_pxls =  13,  //80*60=4800 -> 2^13

       c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)
       c_nb_buf_green =  4,  // n bits for green in the buffer (memory)
       c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)
       // word width of the memory (buffer)
       c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue
    )
    (input        rst,
     input        clk25mhz,    // 25mhz clk

     input        btn2,          //select RGB -> YUV -> RGB test -> YUV test
     input        btnd,          // stop capture

     output       ov7670_sioc,
     output       ov7670_siod,

     output       ov7670_rst_n,
     output       ov7670_pwdn,
     input        ov7670_vsync,
     input        ov7670_href,
     input        ov7670_pclk,
     output       ov7670_xclk,
     input  [7:0] ov7670_d,

     output [7:0] led,

     output [3:0] vga_red,
     output [3:0] vga_green,
     output [3:0] vga_blue,

     output       vga_hsync,
     output       vga_vsync

    );


    wire          vga_visible;
    wire          vga_new_pxl;
    wire [10-1:0] vga_col;
    wire [10-1:0] vga_row;

    wire          vga_hsync_wr; // intermediate signal, not registered (wire)
    wire          vga_vsync_wr; // intermediate signal, not registered (wire
   
    wire [c_nb_img_pxls-1:0] frame_addr;
    wire [c_nb_buf-1:0]    frame_pixel;

    wire [c_nb_img_pxls-1:0] capture_addr;
    wire [c_nb_buf-1:0]    capture_data;
    wire          capture_we;
    wire          capture_wen;
    wire          resend;
    wire          config_finished;

    wire          sdat_on;
    wire          sdat_out;  //  not making it INOUT, just out, but 3-state

    wire          clk50mhz;

    wire          rgbmode;
    wire          testmode;
    wire          locked_wire;
    parameter     swap_r_b = 1'b1; // red and blue are swapped

  // 50 MHz clock
   pll i_pll
     (
      .clkin(clk25mhz),
      .clkout0(clk50mhz),
      .locked(locked_wire)
             );


    mode_sel sw2_mode_sel 
    (
      .rst     (rst),
      .clk     (clk50mhz),
      .sig_in  (btn2),
      .rgbmode (rgbmode),
      .testmode(testmode)
    );

   vga_sync i_vga 
   (
     .rst     (rst),
     .clk     (clk50mhz),
     .visible (vga_visible),
     .new_pxl (vga_new_pxl),
     .hsync   (vga_hsync_wr),
     .vsync   (vga_vsync_wr),
     .col     (vga_col),
     .row     (vga_row)
  );


  vga_display I_ov_display 
  (
     .rst        (rst),
     .clk        (clk50mhz),
     .visible    (vga_visible),
     .new_pxl    (vga_new_pxl),
     .hsync      (vga_hsync_wr),
     .vsync      (vga_vsync_wr),
     .rgbmode    (rgbmode),
     .testmode   (testmode),
     .col        (vga_col),
     .row        (vga_row),
     .frame_pixel(frame_pixel),
     .frame_addr (frame_addr),
     .hsync_out  (vga_hsync),
     .vsync_out  (vga_vsync),
     .vga_red    (vga_red),
     .vga_green  (vga_green),
     .vga_blue   (vga_blue)
  );


  frame_buffer fb  
  (
     .clk     (clk50mhz),
     .wea     (capture_wen),
     .addra   (capture_addr),
     .dina    (capture_data),
     .addrb   (frame_addr),
     .doutb   (frame_pixel)
   );

  // stop capturing to see what happens with the image
  // if btnd is not pressed -> normal capture
  assign capture_wen = (btnd==1'b0) ? capture_we : 1'b0;

  ov7670_capture capture 
  (
     .rst          (rst),
     .clk          (clk50mhz),
     .pclk         (ov7670_pclk),
     .vsync        (ov7670_vsync),
     .href         (ov7670_href),
     .rgbmode      (rgbmode),
     .swap_r_b     (swap_r_b),
     //.dataout_test (ov_capture_datatest),
     //.led_test     (led[3:0]),
     .data         (ov7670_d),
     .addr         (capture_addr),
     .dout         (capture_data),
     .we           (capture_we)
  );
  
  ov7670_top_ctrl controller 
  (
     .rst          (rst),
     .clk          (clk50mhz),
     .resend       (resend),
     .rgbmode      (rgbmode),
     .testmode     (testmode),
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
  assign led[6] = btnd;


endmodule

