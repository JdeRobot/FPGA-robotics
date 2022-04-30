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
      // VGA
      // active level of synchronization
      c_synch_act      = 0,
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
    input  [c_nb_buf-1:0] frame_pixel,
    output reg [c_nb_img_pxls-1:0] frame_addr,
    output reg     hsync_out, // registered for synchronization
    output reg     vsync_out,
    output reg [4-1:0] vga_red_out,
    output reg [4-1:0] vga_green_out,
    output reg [4-1:0] vga_blue_out
  );

  reg [4-1:0] vga_red_rg;
  reg [4-1:0] vga_green_rg;
  reg [4-1:0] vga_blue_rg;
  reg         hsync_rg;
  reg         vsync_rg;

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

  // registering the combinational part, the part that comes from memory
  // is already registered, and registering it would lead to unsynchronization
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      vga_red_rg   <= {4{1'b0}};
      vga_green_rg <= {4{1'b0}};
      vga_blue_rg  <= {4{1'b0}};
    end
    else begin
      vga_red_rg   <= {4{1'b0}};
      vga_green_rg <= {4{1'b0}};
      vga_blue_rg  <= {4{1'b0}};
      if (row > 240 && row < 256) begin
        if (col < 64) begin
          // Test grayscale  square of 16 pixels
          vga_red_rg    <= {col[5:4],2'b00};
          vga_green_rg  <= {col[5:4],2'b00};
          vga_blue_rg   <= {col[5:4],2'b00};
        end 
        else begin// black
          vga_red_rg   <= {4{1'b0}};
          vga_green_rg <= {4{1'b0}};
          vga_blue_rg  <= {4{1'b0}};
        end
      end
      else if (row >= 256 && row < 320 && col < 256) begin
         // Test colors
         vga_red_rg   <= {col[7:6],2'b00};
         vga_green_rg <= {col[5:4],2'b00};
         vga_blue_rg  <= {row[5:4],2'b00};
      end
      else if (row >= 256 || col > 4*c_img_cols) begin
        //black below 256 or right of 4**cimgrows (if not test)
        vga_red_rg   <= {4{1'b0}};
        vga_green_rg <= {4{1'b0}};
        vga_blue_rg  <= {4{1'b0}};
      end
      else if ((col == c_img_cols) || (row == c_img_rows)) begin
        vga_red_rg   <= 4'b0000;
        vga_green_rg <= 4'b1000;
        vga_blue_rg  <= 4'b1000;
      end
      else if ((col == 2*c_img_cols) || (row == 2*c_img_rows)) begin
        vga_red_rg   <= 4'b1000;
        vga_green_rg <= 4'b1000;
        vga_blue_rg  <= 4'b0000;
      end
      else if ((col == 4*c_img_cols) || (row == 4*c_img_rows)) begin
        vga_red_rg   <= 4'b1000;
        vga_green_rg <= 4'b0000;
        vga_blue_rg  <= 4'b1000;
      end
    end
  end

  // registering twice to have the outputs totally registered
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      vga_red_out   <= {4{1'b0}};
      vga_green_out <= {4{1'b0}};
      vga_blue_out  <= {4{1'b0}};
    end
    else begin
      vga_red_out   <= {4{1'b0}};
      vga_green_out <= {4{1'b0}};
      vga_blue_out  <= {4{1'b0}};
      if (visible) begin
        if ((col < c_img_cols) && (row < c_img_rows)) begin
          if (rgbmode) begin
            vga_red_out   <= frame_pixel[c_nb_buf-1: c_nb_buf-c_nb_buf_red];
            vga_green_out <= frame_pixel[c_nb_buf-c_nb_buf_red-1:c_nb_buf_blue];
            vga_blue_out  <= frame_pixel[c_nb_buf_blue-1:0];
          end
          else begin
            vga_red_out   <= frame_pixel[7:4];
            vga_green_out <= frame_pixel[7:4];
            vga_blue_out  <= frame_pixel[7:4];
          end
        end
        else begin
          vga_red_out   <= vga_red_rg;
          vga_green_out <= vga_green_rg;
          vga_blue_out  <= vga_blue_rg;
        end
      end
    end
  end

  // register twice
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      hsync_rg  <= ~c_synch_act;
      hsync_out <= ~c_synch_act;
      vsync_rg  <= ~c_synch_act;
      vsync_out <= ~c_synch_act;
    end
    else begin
      hsync_rg  <= hsync;
      hsync_out <= hsync_rg;
      vsync_rg  <= vsync;
      vsync_out <= vsync_rg;
    end
  end

endmodule
