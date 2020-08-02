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

     input        sw2,          //select RGB -> YUV -> RGB test -> YUV test

     output       ov7670_sioc,
     output       ov7670_siod,

     output       ov7670_rst_n,
     // output       ov7670_pwdn,  // not used, not enough pins
     input        ov7670_vsync,
     input        ov7670_href,
     input        ov7670_pclk,
     output       ov7670_xclk,
     input  [2:0] ov7670_d_msb, // bits 7:5 (not enough pins)
     input  [1:0] ov7670_d_lsb, // bits 3:2

     output [7:0] led,

     output [1:0] vga_red_2b, //just 2 bits
     output [1:0] vga_green_2b,
     output [1:0] vga_blue_2b,

     output       vga_hsync,
     output       vga_vsync

    );

    wire          ov7670_pwdn; // not used, not enough pins

    wire [7:0]    ov7670_d;  // not enough pins

    wire  [4-1:0] vga_red;
    wire  [4-1:0] vga_green;
    wire  [4-1:0] vga_blue;

    wire          vga_visible;
    wire          vga_new_pxl;
    wire [10-1:0] vga_col;
    wire [10-1:0] vga_row;
   
    wire [c_nb_img_pxls-1:0] frame_addr;
    wire [c_nb_buf-1:0]    frame_pixel;

    wire [c_nb_img_pxls-1:0] capture_addr;
    wire [c_nb_buf-1:0]    capture_data;
    wire          capture_we;
    wire          resend;
    wire          config_finished;

    wire          sdat_on;
    wire          sdat_out;  // not making it INOUT, just out, but 3-state

    wire          clk100mhz;

    wire          rgbmode;
    wire          testmode;
    parameter     swap_r_b = 1'b1; // red and blue are swapped

  assign vga_red_2b   = vga_red[3:2];
  assign vga_green_2b = vga_green[3:2];
  assign vga_blue_2b  = vga_blue[3:2];

  assign ov7670_d[7:5] =  ov7670_d_msb;
  assign ov7670_d[4] = 1'b0; // cannot get it, with the available pins
  assign ov7670_d[3:2] =  ov7670_d_lsb;
  assign ov7670_d[1:0] = 2'b01; // cannot get them, with available pins

  // 100 MHz clock
   SB_PLL40_CORE
            #(.FEEDBACK_PATH("SIMPLE"),
                .PLLOUT_SELECT("GENCLK"),
                .DIVR(4'd2),
                .DIVF(6'd49),
                .DIVQ(3'd1),
                .FILTER_RANGE(3'b001)
            )
            uut
            (
                .REFERENCECLK(clk),
                .PLLOUTCORE(clk100mhz),
                .RESETB(1'b1),
                .BYPASS(1'b0)
             );


    mode_sel sw2_mode_sel 
    (
      .rst     (rst),
      .clk     (clk100mhz),
      .sig_in  (sw2),
      .rgbmode (rgbmode),
      .testmode(testmode)
    );

   vga_sync i_vga 
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
     .testmode   (testmode),
     .col        (vga_col),
     .row        (vga_row),
     .frame_pixel(frame_pixel),
     .frame_addr (frame_addr),
     .vga_red    (vga_red),
     .vga_green  (vga_green),
     .vga_blue   (vga_blue)
  );


  frame_buffer fb  
  (
     .clk     (clk100mhz),
     .wea     (capture_we),
     .addra   (capture_addr),
     .dina    (capture_data),
     .addrb   (frame_addr),
     .doutb   (frame_pixel)
   );

  ov7670_capture capture 
  (
     .rst          (rst),
     .clk          (clk100mhz),
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
     .clk          (clk100mhz),
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

  assign ov7670_siod = sdat_on ? sdat_out : 1'bz;

  assign resend = 1'b0;
  assign ov7670_siod = sdat_on ? sdat_out : 1'bz;

  assign led[7] = config_finished;
  assign led[6] = 1'b0;


endmodule

