//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   top module with debuging modules
//------------------------------------------------------------------------------//

module top_vga
  # (parameter
       c_img_cols    = 640, // 10 bits
       c_img_rows    = 480, //  9 bits
       c_img_pxls    = c_img_cols * c_img_rows,
       // c_nb_img_pxls = log2i(c_img_pxls-1) + 1
       c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288
       c_bt_ram_word =  8
    )
    (input        rst,
     input        clk,

     // test
     output       led,
     output       led1,
     output       test_pin,
     output       test_clk,
     output       test_newpxl,
     output       test_hsync,

     output [1:0] vga_red,
     output [1:0] vga_green,
     output [1:0] vga_blue,
     output       vga_hsync,
     output       vga_vsync
    );

    wire          vga_visible;
    wire          vga_new_pxl;
    wire [10-1:0] vga_col;
    wire [10-1:0] vga_row;

    wire          clk_pxl;

   assign test_clk = clk_pxl;
   assign test_pin = clk;
   assign test_newpxl = vga_new_pxl;
   assign test_hsync = vga_hsync;
   assign led = 1'b1;
   assign led1 = 1'b1;

   // 100 MHz
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
                .PLLOUTCORE(clk_pxl),
                .RESETB(1'b1),
                .BYPASS(1'b0)
             );

   vga_sync i_vga 
   (
     .rst     (rst),
     .clk     (clk_pxl),
     .visible (vga_visible),
     .new_pxl (vga_new_pxl),
     .hsync   (vga_hsync),
     .vsync   (vga_vsync),
     .col     (vga_col),
     .row     (vga_row)
  );

  vga_display I_ov_display 
  (
     //.rst        (rst),
     .visible    (vga_visible),
     .new_pxl    (vga_new_pxl),
     .col        (vga_col),
     .row        (vga_row),
     .vga_red    (vga_red[1:0]),
     .vga_green  (vga_green[1:0]),
     .vga_blue   (vga_blue[1:0])
  );

endmodule

