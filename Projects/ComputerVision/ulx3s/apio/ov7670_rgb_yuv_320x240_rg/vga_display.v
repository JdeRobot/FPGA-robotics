//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   vga_display.v
//   Displays the image on the frambuffer to the VGA
//   outputs are registered to see if the displayed image improves
//

module vga_display
  # (parameter
      // VGA
      // active level of synchronization
      c_synch_act      = 0,
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
  (
    input          rst,       //reset, active high
    input          clk,       //fpga cloc
    input          visible,
    input          new_pxl,
    input          hsync,
    input          vsync,
    input          rgbmode,
    input          testmode,
    input [10-1:0] col,
    input [10-1:0] row,
    input  [c_nb_buf-1:0] frame_pixel,
    output reg [c_nb_img_pxls-1:0] frame_addr,
    output reg     hsync_out, // registered for synchronization
    output reg     vsync_out,
    output reg [4-1:0] vga_red,
    output reg [4-1:0] vga_green,
    output reg [4-1:0] vga_blue
  );

  reg  [7:0] char_rgbmode, char_testmode;
  wire [2:0] char_row;
  wire [2:0] char_col;
  wire [3:0] addr_rom_rgb;
  wire [3:0] addr_rom_test;

  reg [4-1:0] vga_red_wr;
  reg [4-1:0] vga_green_wr;
  reg [4-1:0] vga_blue_wr;

  //reg [4-1:0] vga_red_rg;
  //reg [4-1:0] vga_green_rg;
  //reg [4-1:0] vga_blue_rg;
  reg         hsync_rg;
  reg         vsync_rg;

  // registered because timming is tight
  // indicates if the the area of the text (characters)
  parameter   C_TXT_ROW_MIN = 248;
  parameter   C_TXT_ROW_MAX = 256;
  parameter   C_TXT1_COL_MIN = 8;
  parameter   C_TXT1_COL_MAX = 16;
  parameter   C_TXT2_COL_MIN = C_TXT1_COL_MAX;
  parameter   C_TXT2_COL_MAX = 24;
  reg         txt1_col_wr;
  reg         txt2_col_wr;
  reg         txt_row_wr;
  reg         txt1_rg;
  reg         txt2_rg;
  // indicates if it is the area of the frame buffer image
  reg         img_col_wr;
  reg         img_row_wr;
  reg         img_rg;
  // indicates if it is the area of the black and white test
  parameter   C_BWT_ROW_MIN = 240;
  parameter   C_BWT_ROW_MAX = 256;
  parameter   C_BWT_COL_MIN = 64;
  parameter   C_BWT_COL_MAX = 128;
  reg         bwt_col_wr;
  reg         bwt_row_wr;
  reg         bwt_rg;
  // indicates if it is the area of the color test
  parameter   C_CLT_ROW_MIN = C_BWT_ROW_MAX;
  parameter   C_CLT_ROW_MAX = 384;
  parameter   C_CLT_COL_MIN = 0;
  parameter   C_CLT_COL_MAX = 256;
  reg         clt_col_wr;
  reg         clt_row_wr;
  reg         clt_rg;


  assign char_row = row[2:0];
  assign char_col = col[2:0];
  assign addr_rom_rgb = {~rgbmode, char_row};
  assign addr_rom_test = {testmode, char_row};

  always @(posedge clk)
  begin
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

  //always @ (addr_rom_test) begin
  always @(posedge clk)
  begin
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


  // indicates if we are in the VGA
  always @ (*)
  begin
    // defautl conditions
    txt1_col_wr = 1'b0;
    txt2_col_wr = 1'b0;
    txt_row_wr = 1'b0;
    // indicates if it is the area of the frame buffer image
    img_col_wr = 1'b0;
    img_row_wr = 1'b0;
    // indicates if it is the area of the black and white test
    bwt_col_wr = 1'b0;
    bwt_row_wr = 1'b0;
    // indicates if it is the area of the color test
    clt_col_wr = 1'b0;
    clt_row_wr = 1'b0;
    // Text conditions
    if (row >= C_TXT_ROW_MIN && row < C_TXT_ROW_MAX)
      txt_row_wr = 1'b1;
    if (col >= C_TXT1_COL_MIN && col < C_TXT1_COL_MAX)
      txt1_col_wr = 1'b1;
    if (col >= C_TXT2_COL_MIN && col < C_TXT2_COL_MAX)
      txt2_col_wr = 1'b1;
    if (col >= C_TXT2_COL_MIN && col < C_TXT2_COL_MAX)
      txt2_col_wr = 1'b1;
    // Image conditions
    if (row < c_img_rows)
      img_row_wr = 1'b1;
    if (col < c_img_cols)
      img_col_wr = 1'b1;
    // Gray scale (BW) test conditions
    if (row >= C_BWT_ROW_MIN && row < C_BWT_ROW_MAX)
      bwt_row_wr = 1'b1;
    if (col >= C_BWT_COL_MIN && col < C_BWT_COL_MAX)
      bwt_col_wr = 1'b1;
    // color scale (CL) test conditions
    if (row >= C_CLT_ROW_MIN && row < C_CLT_ROW_MAX)
      clt_row_wr = 1'b1;
    if (col >= C_CLT_COL_MIN && col < C_CLT_COL_MAX)
      clt_col_wr = 1'b1;
  end


  // one clock cycle delayed
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      // indicates if the the area of the text (characters)
      txt1_rg <= 1'b0;
      txt2_rg <= 1'b0;
      img_rg <= 1'b0;
      bwt_rg <= 1'b0;
      clt_rg <= 1'b0;
    end
    else begin
      txt1_rg <= txt1_col_wr && txt_row_wr;
      txt2_rg <= txt2_col_wr && txt_row_wr;
      img_rg  <= img_col_wr  && img_row_wr;
      bwt_rg  <= bwt_col_wr  && bwt_row_wr;
      clt_rg  <= clt_col_wr  && clt_row_wr;
    end
  end

  // data will come one clock cycle delayed
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      frame_addr <= 0;
    else begin
      if (img_row_wr) begin //(row < c_img_rows) begin
        if (img_col_wr) begin //(col < c_img_cols) begin
          if (new_pxl)
            //it may have a simulation problem in the last pixel of the last row
            frame_addr <= frame_addr + 1;
        end
      end
      else
        frame_addr <= 0;
    end
  end

  always @ (*)
  begin
    vga_red_wr   = {4{1'b0}};
    vga_green_wr = {4{1'b0}};
    vga_blue_wr  = {4{1'b0}};
    if (img_rg) begin //image from framebuffer
      if (rgbmode) begin
        vga_red_wr   = frame_pixel[c_nb_buf-1: c_nb_buf-c_nb_buf_red];
        vga_green_wr = frame_pixel[c_nb_buf-c_nb_buf_red-1:c_nb_buf_blue];
        vga_blue_wr  = frame_pixel[c_nb_buf_blue-1:0];
      end
      else begin
        vga_red_wr   = frame_pixel[7:4];
        vga_green_wr = frame_pixel[7:4];
        vga_blue_wr  = frame_pixel[7:4];
      end
    end
    else if (txt1_rg) begin // text 1
      if (char_rgbmode[7-char_col]) begin // RGB MODE
        vga_red_wr   = 4'b1111;
        vga_green_wr = 4'b1111;
        vga_blue_wr  = 4'b1111;
      end 
    end
    else if (txt2_rg) begin // text 2
      if (char_testmode[7-char_col]) begin // TEST MODE
        vga_red_wr   = 4'b1111;
        vga_green_wr = 4'b1111;
        vga_blue_wr  = 4'b1111;
      end
    end
    else if (bwt_rg) begin // Test grayscale square of 16 pixels
      vga_red_wr    = col[5:2];
      vga_green_wr  = col[5:2];
      vga_blue_wr   = col[5:2];
    end 
    else if (clt_rg) begin // Test color
      vga_red_wr   = col[7:4];
      vga_green_wr = col[5:2];
      vga_blue_wr  = row[5:2];
    end
  end

  // registering the outputs
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      vga_red   <= {4{1'b0}};
      vga_green <= {4{1'b0}};
      vga_blue  <= {4{1'b0}};
    end
    else begin
      vga_red  <= vga_red_wr;
      vga_green <= vga_green_wr;
      vga_blue  <= vga_blue_wr;
    end
  end

  // register twice sync signals, because the others have been registered twice
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
