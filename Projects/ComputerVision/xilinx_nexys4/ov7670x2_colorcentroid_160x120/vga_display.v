//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   vga_display.vhd
//   Displays 2 images from 2 on the frambuffer to the VGA
//

module vga_display
  # (parameter
      // VGA
      //c_img_cols    = 640, // 10 bits
      //c_img_rows    = 480, //  9 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;
      // c_nb_img_pxls = log2i(c_img_pxls-1) + 1
      //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288
      // QQVGA
      c_img_cols    = 160, // 8 bits
      c_img_rows    = 120, //  7 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls = $clog2(c_img_pxls), // 15 -> 160*120=19.200 -> 2^15
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
  (
    input          rst,       //reset, active high
    input          clk,       //fpga cloc
    input          visible,
    input          new_pxl,
    input          hsync,
    input          vsync,
    input          rgbmode,
    input          testmode,
    input [2:0]    rgbfilter_1,
    input [7:0]    centroid_1,
    input [2:0]    proximity_1,
    input [2:0]    rgbfilter_2,
    input [7:0]    centroid_2,
    input [2:0]    proximity_2,
    input [10-1:0] col,
    input [10-1:0] row,
    input  [c_nb_buf-1:0] frame_pixel_1, // cam 1
    output reg [c_nb_img_pxls-1:0] frame_addr_1,
    input  [c_nb_buf-1:0] frame_pixel_2, // cam 2
    output reg [c_nb_img_pxls-1:0] frame_addr_2,
    output reg [4-1:0] vga_red,
    output reg [4-1:0] vga_green,
    output reg [4-1:0] vga_blue
  );

  reg  [7:0] char_rgbmode, char_testmode;
  wire [2:0] char_row;
  wire [2:0] char_col;
  wire [3:0] addr_rom_rgb;
  wire [3:0] addr_rom_test;

  assign char_row = row[2:0];
  assign char_col = col[2:0];
  assign addr_rom_rgb = {~rgbmode, char_row};
  assign addr_rom_test = {testmode, char_row};

  always @ (addr_rom_rgb) begin
    case (addr_rom_rgb)
      4'h0: char_rgbmode <= 8'b11111100; // R: RGB
      4'h1: char_rgbmode <= 8'b10000010;
      4'h2: char_rgbmode <= 8'b10000010;
      4'h3: char_rgbmode <= 8'b11111100;
      4'h4: char_rgbmode <= 8'b10001000;
      4'h5: char_rgbmode <= 8'b10000100;
      4'h6: char_rgbmode <= 8'b10000010;
      4'h7: char_rgbmode <= 8'b00000000;
      4'h8: char_rgbmode <= 8'b10000010; // Y: YUV
      4'h9: char_rgbmode <= 8'b01000100;
      4'hA: char_rgbmode <= 8'b00111000;
      4'hB: char_rgbmode <= 8'b00010000;
      4'hC: char_rgbmode <= 8'b00010000;
      4'hD: char_rgbmode <= 8'b00010000;
      4'hE: char_rgbmode <= 8'b00010000;
      4'hF: char_rgbmode <= 8'b00000000;
    endcase
  end

  always @ (addr_rom_test) begin
    case (addr_rom_test)
      4'h0: char_testmode <= 8'b10000010; // N: Normal
      4'h1: char_testmode <= 8'b11000010;
      4'h2: char_testmode <= 8'b10100010;
      4'h3: char_testmode <= 8'b10010010;
      4'h4: char_testmode <= 8'b10001010;
      4'h5: char_testmode <= 8'b10000110;
      4'h6: char_testmode <= 8'b10000010;
      4'h7: char_testmode <= 8'b00000000;
      4'h8: char_testmode <= 8'b11111110; // T: Test
      4'h9: char_testmode <= 8'b00010000;
      4'hA: char_testmode <= 8'b00010000;
      4'hB: char_testmode <= 8'b00010000;
      4'hC: char_testmode <= 8'b00010000;
      4'hD: char_testmode <= 8'b00010000;
      4'hE: char_testmode <= 8'b00010000;
      4'hF: char_testmode <= 8'b00000000;
    endcase
  end


  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      frame_addr_1 <= 0;
      frame_addr_2 <= 0;
    end
    else begin
      if (row < c_img_rows) begin
        if (col < c_img_cols) begin
          if (new_pxl)
            //it may have a simulation problem in the last pixel of the last row
            frame_addr_2 <= frame_addr_2 + 1;
        end
        // at 256
        //else if (col >= 256 && col < 256 + c_img_cols) begin
        //else if ((col[8] == 1'b1) && (col[7:0] < c_img_cols)) begin
        else if ((col >= 256) && (col < 256 + c_img_cols)) begin
          if (new_pxl)
            frame_addr_1 <= frame_addr_1 + 1;
        end
      end
      else begin
        frame_addr_1 <= 0;
        frame_addr_2 <= 0;
      end
    end
  end


  always @ (*)
  begin
    vga_red   = 0;
    vga_green = 0;
    vga_blue  = 0;
    if (visible) begin
      vga_red   = {4{1'b0}};
      vga_green = {4{1'b0}};
      vga_blue  = {4{1'b0}};
      // cam 2 LEFT
      if ((col < c_img_cols) && (row < c_img_rows)) begin
        if (rgbmode) begin
          vga_red   = frame_pixel_2[c_nb_buf-1: c_nb_buf-c_nb_buf_red];
          vga_green = frame_pixel_2[c_nb_buf-c_nb_buf_red-1:c_nb_buf_blue];
          vga_blue  = frame_pixel_2[c_nb_buf_blue-1:0];
        end
        else begin
          vga_red   = frame_pixel_2[7:4];
          vga_green = frame_pixel_2[7:4];
          vga_blue  = frame_pixel_2[7:4];
        end
      end
      // cam 1 RIGHT
      else if ((col[8]   == 1'b1) &&  // greater than 256
               (col[7:0] < c_img_cols) &&
               (row < c_img_rows)) begin
        if (rgbmode) begin
          vga_red   = frame_pixel_1[c_nb_buf-1: c_nb_buf-c_nb_buf_red];
          vga_green = frame_pixel_1[c_nb_buf-c_nb_buf_red-1:c_nb_buf_blue];
          vga_blue  = frame_pixel_1[c_nb_buf_blue-1:0];
        end
        else begin
          vga_red   = frame_pixel_1[7:4];
          vga_green = frame_pixel_1[7:4];
          vga_blue  = frame_pixel_1[7:4];
        end   
      end
      // proximity cam 2 (left)
      else if (row < 128-8 && col >= 240 && col < 240+8) begin
        // row 128 -> 7 bits, proximity is 3 bits. We want the bits 6:4
        // this is a vertical bar, when closest the bar will reach the top
        // proximity is 0 to 7, 7 maximum proximity
        // row 0 is on top
        // if proximity=7 -> ~proximity=0 -> all rows ON 
        // if proximity=6 -> ~proximity=1 -> rows 7 to 1 ON 
        // if proximity=5 -> ~proximity=2 -> rows 7 to 2 ON 

        // if proximity=0 -> ~proximity=7 -> rows 7 to 2 ON 
        if (~proximity_2 <= row[6:4]) begin
          vga_red   = {4{rgbfilter_2[2]}};
          vga_green = {4{rgbfilter_2[1]}};
          vga_blue  = {4{rgbfilter_2[0]}};
        end
      end
      else if (row > 256 && row < 384 && col < 512) begin
         vga_red   = {col[8:7],2'b00};
         vga_green = {col[6:5],2'b00};
         vga_blue  = {row[6:5],2'b00};
      end
      else if ((col == c_img_cols) || (row == c_img_rows)) begin
         vga_red   = 4'b0000;
         vga_green = 4'b1000;
         vga_blue  = 4'b1000;
      end
      else if ((col == 2*c_img_cols) || (row == 2*c_img_rows)) begin
         vga_red   = 4'b1000;
         vga_green = 4'b1000;
         vga_blue  = 4'b0000;
      end
      else if ((col == 4*c_img_cols) || (row == 4*c_img_rows)) begin
         vga_red   = 4'b1000;
         vga_green = 4'b0000;
         vga_blue  = 4'b1000;
      end
      // centroid 2 (left)
      else if ((row > c_img_rows-1) && (row < c_img_rows + 8)) begin
         if (col < c_img_cols) begin
           if (col < 20) begin
             if (centroid_2[0]) begin
               vga_red   = {4{rgbfilter_2[2]}};
               vga_green = {4{rgbfilter_2[1]}};
               vga_blue  = {4{rgbfilter_2[0]}};
             end
           end
           else if (col < 40) begin
             if (centroid_2[1]) begin
               vga_red   = {4{rgbfilter_2[2]}};
               vga_green = {4{rgbfilter_2[1]}};
               vga_blue  = {4{rgbfilter_2[0]}};
             end
           end
           else if (col < 60) begin
             if (centroid_2[2]) begin
               vga_red   = {4{rgbfilter_2[2]}};
               vga_green = {4{rgbfilter_2[1]}};
               vga_blue  = {4{rgbfilter_2[0]}};
             end
           end
           else if (col < 80) begin
             if (centroid_2[3]) begin
               vga_red   = {4{rgbfilter_2[2]}};
               vga_green = {4{rgbfilter_2[1]}};
               vga_blue  = {4{rgbfilter_2[0]}};
             end
           end
           else if (col < 100) begin
             if (centroid_2[4]) begin
               vga_red   = {4{rgbfilter_2[2]}};
               vga_green = {4{rgbfilter_2[1]}};
               vga_blue  = {4{rgbfilter_2[0]}};
             end
           end
           else if (col < 120) begin
             if (centroid_2[5]) begin
               vga_red   = {4{rgbfilter_2[2]}};
               vga_green = {4{rgbfilter_2[1]}};
               vga_blue  = {4{rgbfilter_2[0]}};
             end
           end
           else if (col < 140) begin
             if (centroid_2[6]) begin
               vga_red   = {4{rgbfilter_2[2]}};
               vga_green = {4{rgbfilter_2[1]}};
               vga_blue  = {4{rgbfilter_2[0]}};
             end
           end
           else begin // less than 160
             if (centroid_2[7]) begin
               vga_red   = {4{rgbfilter_2[2]}};
               vga_green = {4{rgbfilter_2[1]}};
               vga_blue  = {4{rgbfilter_2[0]}};
             end
           end
         end
      end
      else if ((row > 127) && (row < 128 + 8)) begin
         if ((col > 7) && (col < 16)) begin // RGB MODE
           if (char_rgbmode[7-char_col]) begin
             vga_red   = 4'b1111;
             vga_green = 4'b1111;
             vga_blue  = 4'b1111;
           end
           else begin
             vga_red   = 4'b0000;
             vga_green = 4'b0000;
             vga_blue  = 4'b0000;
           end
         end
         else if ((col > 15) && (col < 24)) begin // TEST MODE
           if (char_testmode[7-char_col]) begin
             vga_red   = 4'b1111;
             vga_green = 4'b1111;
             vga_blue  = 4'b1111;
           end
           else begin
             vga_red   = 4'b0000;
             vga_green = 4'b0000;
             vga_blue  = 4'b0000;
           end
         end
         else if ((col > 23) && (col < 32)) begin // color box indicating filter
           vga_red   = {4{rgbfilter_2[2]}};
           vga_green = {4{rgbfilter_2[1]}};
           vga_blue  = {4{rgbfilter_2[0]}};
         end
      end
      else begin
         vga_red   = 4'b0000;
         vga_green = 4'b0000;
         vga_blue  = 4'b0000;
      end
    end
  end

endmodule
