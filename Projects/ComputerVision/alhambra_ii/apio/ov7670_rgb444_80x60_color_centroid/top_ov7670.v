//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   top module 
//   Add second memory and color processing
//---------------------------------------------------------------------------//

module top_ov7670
  # (parameter
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
     output       ov7670_sioc,
     output       ov7670_siod,
     output       ov7670_rst_n,

     input        ov7670_vsync,
     input        ov7670_href,
     input        ov7670_pclk,
     output       ov7670_xclk,
     input  [2:0] ov7670_d_msb, // bits 7:5 (not enough pins)
     input  [1:0] ov7670_d_lsb, // bits 3:2

     output reg [7:0] led,
     input        proc_ctrl,  //control of the color processing

     output [1:0] vga_red_2b, //just 2 bits
     output [1:0] vga_green_2b,
     output [1:0] vga_blue_2b,
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

    wire [c_nb_img_pxls-1:0] capture_addr;
    wire [c_nb_buf-1:0]    capture_data;
    wire          capture_we;

    wire [c_nb_img_pxls-1:0] orig_img_addr;
    wire [c_nb_buf-1:0]      orig_img_pxl;
    wire          proc_we;
    wire [c_nb_img_pxls-1:0] proc_img_addr;
    wire [c_nb_buf-1:0]      proc_img_pxl;

    wire          resend;
    wire          config_finished;

    wire          sdat_on;
    wire          sdat_out;  // not making it INOUT, just out, but 3-state

    wire          clk50mhz;


    wire [7:0]    cnt_vsync_max_test;

    wire [11:0]   ov_capture_datatest;
    wire          rgbmode;

    wire [5:0]    camera_config_steps;
    wire [7:0]    centroid;

    parameter     testmode = 1'b0; // no test mode
    parameter     swap_r_b = 1'b1; // red and blue are swapped

    wire [2:0]    rgbfilter;


  assign vga_red_2b   = vga_red[3:2];
  assign vga_green_2b = vga_green[3:2];
  assign vga_blue_2b  = vga_blue[3:2];

  assign ov7670_d[7:5] =  ov7670_d_msb;
  assign ov7670_d[4] = 1'b0; // cannot get it, with the available pins
  assign ov7670_d[3:2] =  ov7670_d_lsb;
  assign ov7670_d[1:0] = 2'b00; // cannot get them, with avialable pins


  // 50 MHz clock
   SB_PLL40_CORE
            #(.FEEDBACK_PATH("SIMPLE"),
                .PLLOUT_SELECT("GENCLK"),
                .DIVR(4'd5),
                .DIVF(6'd49),
                .DIVQ(3'd1),
                .FILTER_RANGE(3'b001)
            )
            uut
            (
                .REFERENCECLK(clk),
                .PLLOUTCORE(clk50mhz),
                .RESETB(1'b1),
                .BYPASS(1'b0)
             );


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
     .centroid   (centroid),
     .rgbfilter  (rgbfilter),
     .col        (vga_col),
     .row        (vga_row),
     .frame_pixel(display_img_pxl),
     .frame_addr (display_img_addr),
     .vga_red    (vga_red),
     .vga_green  (vga_green),
     .vga_blue   (vga_blue)
  );


  // frame buffer from the camera, before processing
  frame_buffer cam_fb  
  (
     .clk     (clk50mhz),
     // ports from camera capture
     .wea     (capture_we),
     .addra   (capture_addr),
     .dina    (capture_data),
     // ports to processing module
     .addrb   (orig_img_addr),
     .doutb   (orig_img_pxl)
   );

  // image processing module
  color_proc img_proc
  (
     .rst        (rst),
     .clk        (clk50mhz),
     .proc_ctrl  (proc_ctrl),
     // from original image frame buffer
     .orig_addr  (orig_img_addr),
     .orig_pxl   (orig_img_pxl),
     // to processed image frame buffer
     .proc_we        (proc_we),
     .proc_addr  (proc_img_addr),
     .proc_pxl   (proc_img_pxl),
     .rgbfilter  (rgbfilter),
     .centroid   (centroid)
  );


  // processed frame buffer, to display on VGA
  frame_buffer proc_fb  
  (
     .clk     (clk50mhz),
     // ports from processing module
     .wea     (proc_we),
     .addra   (proc_img_addr),
     .dina    (proc_img_pxl),
     // ports to display
     .addrb   (display_img_addr),
     .doutb   (display_img_pxl)
   );


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
     .cnt_reg_test (camera_config_steps),
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

  always @ (*)
  begin
    if (config_finished)
      led = centroid;
    else begin
      led[7:6] = 1'b00;
      led[5:0] = camera_config_steps;
    end
  end

endmodule

