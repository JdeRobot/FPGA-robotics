//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   vga_display.vhd
//   Displays the image on the frambuffer to the VGA
//

module vga_display
  # (parameter
     c_img_cols    = 640, // 10 bits
     c_img_rows    = 480, //  9 bits
     c_img_pxls    = c_img_cols * c_img_rows,
     // c_nb_img_pxls = log2i(c_img_pxls-1) + 1
     c_nb_img_pxls =  19  //640*480=307,200 -> 2^19=524,288
  )
  (
    //input          rst,       //reset, active high
    input          visible,
    input          new_pxl,
    input [10-1:0] col,
    input [10-1:0] row,
    output reg [4-1:0] vga_red,
    output reg [4-1:0] vga_green,
    output reg [4-1:0] vga_blue
  );


  always @ (visible, col, row)
  begin
    vga_red   = 0;
    vga_green = 0;
    vga_blue  = 0;
    if (visible) begin
      vga_red   = {4{1'b1}};
      vga_green = {4{1'b1}};
      vga_blue  = {4{1'b0}};
      if ((col < c_img_cols) && (row < c_img_rows)) begin
        if (col < 5) begin
          vga_red   = {4{1'b1}};
          vga_green = {4{1'b1}};
          vga_blue  = {4{1'b0}};
        end
        else if (col > c_img_cols - 5) begin
          vga_red   = {4{1'b1}};
          vga_green = {4{1'b0}};
          vga_blue  = {4{1'b1}};
        end
        else if (row < 5) begin
          vga_red   = {4{1'b0}};
          vga_green = {4{1'b1}};
          vga_blue  = {4{1'b1}};
        end
        else if (row > c_img_rows - 5) begin
          vga_red   = {4{1'b0}};
          vga_green = {4{1'b1}};
          vga_blue  = {4{1'b0}};
        end
        else if (col < 32) begin
          vga_red   = {4{1'b1}};
          vga_green = {4{1'b1}};
          vga_blue  = {4{1'b1}};
        end
        else if (col < 64) begin
          vga_red   = {4{1'b1}};
          vga_green = {4{1'b0}};
          vga_blue  = {4{1'b0}};
        end
        else if (col < 96) begin
          vga_red   = {4{1'b0}};
          vga_green = {4{1'b1}};
          vga_blue  = {4{1'b0}};
        end
        else begin
          vga_red   = {4{1'b0}};
          vga_green = {4{1'b0}};
          vga_blue  = {4{1'b1}};
        end
      end
    end
  end

endmodule
