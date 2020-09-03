//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   top module with debuging modules
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
       c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue
    )
    (input        rst,
     input        clk,

     input        sw0_test_cmd, //if '1', step by step SCCB instructions
     input [2:0]  sw13_regs,
     input [2:0]  sw57_rgbfilter,
     input        btnr_test,          //if sw='1', SCCB sent one by one

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
     output       vga_vsync,

     output [7:0] anode7seg,
     output [6:0] seg7,
      
     input        btnc_resend
    );

    wire          vga_visible;
    wire          vga_new_pxl;
    wire [10-1:0] vga_col;
    wire [10-1:0] vga_row;
   
    wire [c_nb_img_pxls-1:0] frame_addr;
    wire [c_nb_buf-1:0]      frame_pxl;

    wire [c_nb_img_pxls-1:0] capture_addr;
    wire [c_nb_buf-1:0]      capture_data;
    wire          capture_we;

    wire [c_nb_img_pxls-1:0] orig_addr;
    wire [c_nb_buf-1:0]      orig_pxl;

    wire [c_nb_img_pxls-1:0] proc_addr;
    wire [c_nb_buf-1:0]      proc_pxl;
    wire          proc_we;

    wire          resend;
    wire          config_finished;

    wire          sdat_on;
    wire          sdat_out;  // not making it INOUT, just out, but 3-state

    wire          btnr_test_1p;

    wire [7:0]    cnt_vsync_max_test;
    wire [7:0]    en_seg7_disp;
    wire [3:0]    seg7_num0;
    wire [3:0]    seg7_num1;
    wire [3:0]    seg7_num2;
    wire [3:0]    seg7_num3;
    wire [3:0]    seg7_num4;
    wire [3:0]    seg7_num5;
    wire [3:0]    seg7_num6;
    wire [3:0]    seg7_num7;

    wire [11:0]   ov_capture_datatest;

    wire          rgbmode;
    wire          swap_r_b;

    debounce_1pulse btn_deb1 
    (
      .rst     (rst),
      .clk     (clk),
      .sig_in  (btnc_resend),
      .sig_out (resend)
    );

    debounce_1pulse btn_deb2 
    (
      .rst     (rst),
      .clk     (clk),
      .sig_in  (btnr_test),
      .sig_out (btnr_test_1p)
   );

   vga_sync i_vga 
   (
     .rst     (rst),
     .clk     (clk),
     .visible (vga_visible),
     .new_pxl (vga_new_pxl),
     .hsync   (vga_hsync),
     .vsync   (vga_vsync),
     .col     (vga_col),
     .row     (vga_row)
  );

  // if sw1 == 0 -> RGB mode
  assign rgbmode   = (sw13_regs[0] == 1'b0) ? 1'b1 : 1'b0;
  // if sw3 == 1 -> swap Red with Blue
  assign swap_r_b  = sw13_regs[2];

  vga_display I_ov_display 
  (
     .rst        (rst),
     .clk        (clk),
     .visible    (vga_visible),
     .new_pxl    (vga_new_pxl),
     .hsync      (vga_hsync),
     .vsync      (vga_vsync),
     .rgbmode    (rgbmode),
     .col        (vga_col),
     .row        (vga_row),
     .frame_pixel(frame_pxl),
     .frame_addr (frame_addr),
     .vga_red    (vga_red),
     .vga_green  (vga_green),
     .vga_blue   (vga_blue)
  );


  frame_buffer I_fb_orig 
  (
     .clk     (clk),
     .wea     (capture_we),
     .addra   (capture_addr),
     .dina    (capture_data),
     .addrb   (orig_addr),
     .doutb   (orig_pxl)
   );

  color_proc I_color_proc
  (
     .rst        (rst),
     .clk        (clk),
     .rgbfilter  (sw57_rgbfilter),
     // address and pixel of original image
     .orig_pxl   (orig_pxl),
     .orig_addr  (orig_addr),
     // address and pixel of processed image
     .proc_we    (proc_we),
     .proc_pxl   (proc_pxl),
     .proc_addr  (proc_addr)
  );

  frame_buffer I_fb_proc
  (
     .clk     (clk),
     .wea     (proc_we),
     .addra   (proc_addr),
     .dina    (proc_pxl),
     .addrb   (frame_addr),
     .doutb   (frame_pxl)
   );


  assign led[7:4] = {3'b000, config_finished};
  
  ov7670_capture capture 
  (
     .rst          (rst),
     .clk          (clk),
     .pclk         (ov7670_pclk),
     .vsync        (ov7670_vsync),
     .href         (ov7670_href),
     .rgbmode      (rgbmode),
     .swap_r_b     (swap_r_b),
     .dataout_test (ov_capture_datatest),
     .led_test     (led[3:0]),
     .data         (ov7670_d),
     .addr         (capture_addr),
     .dout         (capture_data),
     .we           (capture_we)
  );
  
  ov7670_top_ctrl controller 
  (
     .rst          (rst),
     .clk          (clk),
     .test_mode    (sw0_test_cmd),
     .test_send    (btnr_test_1p),
     .sw_regs      (sw13_regs[1:0]),
     .resend       (resend),
     .done         (config_finished),
     .sclk         (ov7670_sioc),
     .sdat_on      (sdat_on),
     .sdat_out     (sdat_out),
     .ov7670_rst_n (ov7670_rst_n),
     .ov7670_clk   (ov7670_xclk),
     .ov7670_pwdn  (ov7670_pwdn)
  );

  assign ov7670_siod = sdat_on ? sdat_out : 1'bz;

  //seg7_num0 <= cnt_vsync_max_test(3 downto 0);
  //seg7_num1 <= cnt_vsync_max_test(7 downto 4);
  assign seg7_num0 = ov_capture_datatest[3:0];
  assign seg7_num1 = ov_capture_datatest[7:4];
  assign seg7_num2 = ov_capture_datatest[11:8];
  assign seg7_num3 = 4'b0000;
  assign seg7_num4 = 4'b0000;
  assign seg7_num5 = 4'b0000;
  assign seg7_num6 = 4'b0000;
  assign seg7_num7 = 4'b0000;
  assign en_seg7_disp = 8'b00000111;

  disp7seg_8dig i_7seg 
  (
     .rst          (rst),
     .clk          (clk),
     .en_disp      (en_seg7_disp),
     .num0         (seg7_num0),
     .num1         (seg7_num1),
     .num2         (seg7_num2),
     .num3         (seg7_num3),
     .num4         (seg7_num4),
     .num5         (seg7_num5),
     .num6         (seg7_num6),
     .num7         (seg7_num7),
     .seg          (seg7),
     .anode        (anode7seg)
  );

endmodule

