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
    input          rst,       //reset, active high
    input          clk,       //fpga cloc
    input          visible,
    input          new_pxl,
    input          hsync,
    input          vsync,
    input          rgbmode,
    input [10-1:0] col,
    input [10-1:0] row,
    input  [8-1:0] frame_pixel,
    output reg [c_nb_img_pxls-1:0] frame_addr,
    output reg [4-1:0] vga_red,
    output reg [4-1:0] vga_green,
    output reg [4-1:0] vga_blue
  );


  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      frame_addr <= 0;
    else begin
      if (row < c_img_rows) begin
        if (col < c_img_cols) begin
          if (new_pxl)
            //it may have a simulation problem in the last pixel of the last row
            frame_addr <= frame_addr + 1;
        end
      end
      else
        frame_addr <= 0;
    end
  end


  always @ (visible, col, row, frame_pixel, rgbmode)
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
        else if (row == 30) begin
          vga_red   = {4{1'b1}};
          vga_green = {4{1'b1}};
          vga_blue  = {4{1'b1}};
        end
        else begin
          // show image
          if (rgbmode) begin
            vga_red   = {frame_pixel[7:5], frame_pixel[5]};
            vga_green = {frame_pixel[4:2], frame_pixel[2]};
            vga_blue  = {frame_pixel[1:0], frame_pixel[1:0]};
          end
          else begin
            vga_red   = frame_pixel[7:4];
            vga_green = frame_pixel[7:4];
            vga_blue  = frame_pixel[7:4];
          end
        end
      end
    end
  end

endmodule
