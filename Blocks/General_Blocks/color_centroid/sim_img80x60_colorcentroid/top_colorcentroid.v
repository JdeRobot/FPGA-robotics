`timescale 1ns / 1ps
// ---------------------------------------------------------
// https://github.com/JdeRobot/FPGA-robotics
// Simulates the color filter processing and the calculation of the centroid
// along x-axis of the filtered pixeles 
// ---------------------------------------------------------

module top_colorcentroid
  # (parameter

    c_img_cols    = 80, // 7 bits
    c_img_rows    = 60, //  6 bits
    c_img_pxls    = c_img_cols * c_img_rows,
    c_nb_img_pxls = $clog2(c_img_pxls), // 13,  //80*60=4800 -> 2^13

    // centroid has 8 bits, it is decoded, so its not a number to match the leds
    c_nb_centroid = 8,

    c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)
    c_nb_buf_green =  4,  // n bits for green in the buffer (memory)
    c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)
    // word width of the memory (buffer)
    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue,
    // position of the most significant bits of each color
    c_msb_blue  = c_nb_buf_blue-1,
    c_msb_red   = c_nb_buf-1,
    c_msb_green = c_msb_blue + c_nb_buf_green
  )
  (
    input clk,
    input rst,
    input [2:0] rgbfilter,
    output proc_we,
    output [c_nb_buf-1:0] proc_pxl,
    output [c_nb_img_pxls-1:0] proc_addr, 
    output [c_nb_centroid-1:0] centroid  
  );
   
  wire [c_nb_buf-1:0] s_orig_pxl;
  wire [c_nb_buf-1:0] s_orig_pxl2;
  wire [c_nb_buf-1:0] s_orig_pxl_final; 
  wire [c_nb_img_pxls-1:0] s_orig_addr;
  reg estado_mem;
  wire new_centroid;

  
  color_proc proc_img
  (
    .rst (rst),
    .clk (clk),
    .rgbfilter (rgbfilter), 
    .orig_pxl  (s_orig_pxl_final),
    .orig_addr (s_orig_addr),
    .proc_we   (proc_we),
    .proc_pxl  (proc_pxl),
    .proc_addr (proc_addr),
    .centroid  (centroid),
    .new_centroid (new_centroid)
  );
  
  ROM_RGB_9b_marco memoria
  (
    .clk (clk),
    .addr (s_orig_addr),
    .dout (s_orig_pxl)
  );

  ROM_RGB_9b_dibujo memoria2
  (
    .clk (clk),
    .addr (s_orig_addr),
    .dout (s_orig_pxl2)
  );

  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin
      estado_mem <= 1'b0;
    end
    else begin 
      if (new_centroid) begin 
        estado_mem <= !estado_mem;
      end
    end
  end

  assign s_orig_pxl_final =  estado_mem ? s_orig_pxl2 : s_orig_pxl;

endmodule
