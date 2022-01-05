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
      c_img_cols    = 160, //0xA0 1010_000 8 bits
      c_img_rows    = 120, //  7 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls = $clog2(c_img_pxls), // 15 -> 160*120=19.200 -> 2^15
      // QQVGA /2
      //c_img_cols    = 80, // 7 bits
      //c_img_rows    = 60, //  6 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_img_pxls =  13,  //80*60=4800 -> 2^13

      c_col_cam_cen  = 192, //0xC0 1100_000 column of central camera
      // column of camera on the right
      c_col_cam_rght = 2*c_col_cam_cen, //384 0x180 1_1000_000
      // end pos column of camera on the right (camera 1), actually then next
      // pixel after
      c_col_cam_cen_end = c_col_cam_cen+c_img_cols, //352 0x160
      c_col_cam_rght_end = c_col_cam_rght+c_img_cols, //544 0x220 

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
    input [2:0]    rgbfilter_r, // right camera
    input [7:0]    centroid_r,
    input [2:0]    proximity_r,
    input [2:0]    rgbfilter_c, // central camera
    input [7:0]    centroid_c,
    input [2:0]    proximity_c,
    input [2:0]    rgbfilter_l, // left camera
    input [7:0]    centroid_l,
    input [2:0]    proximity_l,
    input [10-1:0] col,
    input [10-1:0] row,
    input  [c_nb_buf-1:0] frame_pixel_r, // right cam
    output reg [c_nb_img_pxls-1:0] frame_addr_r,
    input  [c_nb_buf-1:0] frame_pixel_c, // central cam
    output reg [c_nb_img_pxls-1:0] frame_addr_c,
    input  [c_nb_buf-1:0] frame_pixel_l, // left cam
    output reg [c_nb_img_pxls-1:0] frame_addr_l,
    output reg [4-1:0] vga_red,
    output reg [4-1:0] vga_green,
    output reg [4-1:0] vga_blue
  );

  // central image columns
  parameter   C_IMG_CEN_COL_MIN = 192;
  parameter   C_IMG_CEN_COL_MAX = C_IMG_CEN_COL_MIN+c_img_cols;  //352 0x160
  // right image columns
  parameter   C_IMG_RGTH_COL_MIN = 2*C_IMG_CEN_COL_MIN; //384 0x180 1_1000_000
  parameter   C_IMG_RGTH_COL_MAX = C_IMG_RGTH_COL_MIN + c_img_cols; //544 0x220
  // indicates if the the area of the text (characters)
  parameter   C_TXT_ROW_MIN = 128; //248;
  parameter   C_TXT_ROW_MAX = C_TXT_ROW_MIN + 8; //256;
  parameter   C_TXT1_COL_MIN = 8;
  parameter   C_TXT1_COL_MAX = 16;
  parameter   C_TXT2_COL_MIN = C_TXT1_COL_MAX;
  parameter   C_TXT2_COL_MAX = 24;
  parameter   C_FILTBOX_LFT_COL_MIN = C_TXT2_COL_MAX;
  parameter   C_FILTBOX_LFT_COL_MAX = C_FILTBOX_LFT_COL_MIN + 8;
  parameter   C_FILTBOX_CEN_COL_MIN = C_IMG_CEN_COL_MIN;
  parameter   C_FILTBOX_CEN_COL_MAX = C_FILTBOX_CEN_COL_MIN + 8;
  parameter   C_FILTBOX_RGHT_COL_MIN = C_IMG_RGTH_COL_MIN;
  parameter   C_FILTBOX_RGHT_COL_MAX = C_FILTBOX_RGHT_COL_MIN + 8;
  reg         txt1_col;
  reg         txt2_col;
  reg         filterboxleft_col;
  reg         filterboxcen_col;
  reg         filterboxrght_col;
  reg         txt_row;
  // indicates if it is the area of the frame buffer image
  reg         img_col_left;
  reg         img_col_cen;
  reg         img_col_rght;
  reg         img_row;
  // indicates if it is the area of the black and white test
  parameter   C_BWT_ROW_MIN = 240;
  parameter   C_BWT_ROW_MAX = 256;
  parameter   C_BWT_COL_MIN = 128;
  parameter   C_BWT_COL_MAX = 256;
  reg         bwt_col;
  reg         bwt_row;
  // indicates if it is the area of the color test
  parameter   C_CLT_ROW_MIN = C_BWT_ROW_MAX;
  parameter   C_CLT_ROW_MAX = 384;
  parameter   C_CLT_COL_MIN = 0;
  parameter   C_CLT_COL_MAX = 256;
  reg         clt_col;
  reg         clt_row;


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

  // indicates were we are in the VGA
  always @ (*)
  begin
    // defautl conditions
    txt1_col = 1'b0;
    txt2_col = 1'b0;
    txt_row = 1'b0;
    // indicates if it is the area of the square that indicates which filter
    // color is being used
    filterboxleft_col = 1'b0;
    filterboxcen_col  = 1'b0;
    filterboxrght_col = 1'b0;
    // indicates if it is the area of the frame buffer image
    img_col_left = 1'b0;
    img_col_cen  = 1'b0;
    img_col_rght = 1'b0;
    img_row = 1'b0;
    // indicates if it is the area of the black and white test
    bwt_col = 1'b0;
    bwt_row = 1'b0;
    // indicates if it is the area of the color test
    clt_col = 1'b0;
    clt_row = 1'b0;
    // Text conditions
    if (row >= C_TXT_ROW_MIN && row < C_TXT_ROW_MAX)
      txt_row = 1'b1;
    if (col >= C_TXT1_COL_MIN && col < C_TXT1_COL_MAX)
      txt1_col = 1'b1;
    if (col >= C_TXT2_COL_MIN && col < C_TXT2_COL_MAX)
      txt2_col = 1'b1;
    if (col >= C_FILTBOX_LFT_COL_MIN && col < C_FILTBOX_LFT_COL_MAX)
      filterboxleft_col = 1'b1;
    if (col >= C_FILTBOX_RGHT_COL_MIN && col < C_FILTBOX_RGHT_COL_MAX)
      filterboxrght_col = 1'b1;
    if (row < c_img_rows)
      img_row = 1'b1;
    // left image condition
    if (col < c_img_cols)
      img_col_left = 1'b1;
    // center image condition
    if (col >= C_IMG_CEN_COL_MIN && col < C_IMG_CEN_COL_MAX)
      img_col_cen = 1'b1;
    // right image condition
    if (col >= C_IMG_RGTH_COL_MIN && col < C_IMG_RGTH_COL_MAX)
      img_col_rght = 1'b1;
    // Gray scale (BW) test conditions
    if (row >= C_BWT_ROW_MIN && row < C_BWT_ROW_MAX)
      bwt_row = 1'b1;
    if (col >= C_BWT_COL_MIN && col < C_BWT_COL_MAX)
      bwt_col = 1'b1;
    // color scale (CL) test conditions
    if (row >= C_CLT_ROW_MIN && row < C_CLT_ROW_MAX)
      clt_row = 1'b1;
    if (col >= C_CLT_COL_MIN && col < C_CLT_COL_MAX)
      clt_col = 1'b1;
  end


  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      frame_addr_r <= 0;
      frame_addr_c <= 0;
      frame_addr_l <= 0;
    end
    else begin
      if (row < c_img_rows) begin
        if (img_col_left) begin // LEFT CAMERA
          if (new_pxl)
            //it may have a simulation problem in the last pixel of the last row
            frame_addr_l <= frame_addr_l + 1;
        end
        else if (img_col_cen) begin //CENTRAL CAMERA
          if (new_pxl)
            frame_addr_c <= frame_addr_c + 1;
        end
        else if (img_col_rght) begin //RIGHT CAMERA
          if (new_pxl)
            frame_addr_r <= frame_addr_r + 1;
        end
      end
      else begin
        frame_addr_r <= 0;
        frame_addr_l <= 0;
        frame_addr_c <= 0;
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
      if (img_row) begin // TOP PART: CAMERA IMAGE & PROXIMIY
        if (img_col_left) begin // cam LEFT
          if (rgbmode) begin
            vga_red   = frame_pixel_l[c_nb_buf-1: c_nb_buf-c_nb_buf_red];
            vga_green = frame_pixel_l[c_nb_buf-c_nb_buf_red-1:c_nb_buf_blue];
            vga_blue  = frame_pixel_l[c_nb_buf_blue-1:0];
          end
          else begin
            vga_red   = frame_pixel_l[7:4];
            vga_green = frame_pixel_l[7:4];
            vga_blue  = frame_pixel_l[7:4];
          end
        end
        else if (col < c_img_cols+8) begin // LEFT CAM proximity
          // row 128 -> 7 bits, proximity is 3 bits. We want the bits 6:4
          // this is a vertical bar, when closest the bar will reach the top
          // proximity is 0 to 7, 7 maximum proximity
          // row 0 is on top
          // if proximity=7 -> ~proximity=0 -> all rows ON 
          // if proximity=6 -> ~proximity=1 -> rows 7 to 1 ON 
          // if proximity=5 -> ~proximity=2 -> rows 7 to 2 ON 
          // if proximity=0 -> ~proximity=7 -> rows 7 to 2 ON 
          if (~proximity_l <= row[6:4]) begin
            vga_red   = {4{rgbfilter_l[2]}};
            vga_green = {4{rgbfilter_l[1]}};
            vga_blue  = {4{rgbfilter_l[0]}};
          end
        end
        else if (img_col_cen) begin// cam CENTER
          if (rgbmode) begin
            vga_red   = frame_pixel_c[c_nb_buf-1: c_nb_buf-c_nb_buf_red];
            vga_green = frame_pixel_c[c_nb_buf-c_nb_buf_red-1:c_nb_buf_blue];
            vga_blue  = frame_pixel_c[c_nb_buf_blue-1:0];
          end
          else begin
            vga_red   = frame_pixel_c[7:4];
            vga_green = frame_pixel_c[7:4];
            vga_blue  = frame_pixel_c[7:4];
          end   
        end   
        else if (col >= C_IMG_CEN_COL_MAX &&
                 col < C_IMG_CEN_COL_MAX + 8) begin // CENTER CAM PROXIMIY
          if (~proximity_c <= row[6:4]) begin
            vga_red   = {4{rgbfilter_c[2]}};
            vga_green = {4{rgbfilter_c[1]}};
            vga_blue  = {4{rgbfilter_c[0]}};
          end
        end
        else if (img_col_rght) begin// cam RIGHT
          if (rgbmode) begin
            vga_red   = frame_pixel_r[c_nb_buf-1: c_nb_buf-c_nb_buf_red];
            vga_green = frame_pixel_r[c_nb_buf-c_nb_buf_red-1:c_nb_buf_blue];
            vga_blue  = frame_pixel_r[c_nb_buf_blue-1:0];
          end
          else begin
            vga_red   = frame_pixel_r[7:4];
            vga_green = frame_pixel_r[7:4];
            vga_blue  = frame_pixel_r[7:4];
          end   
        end   
        else if (col >= C_IMG_RGTH_COL_MAX &&
                 col < C_IMG_RGTH_COL_MAX + 8) begin // RIGTH CAM PROXIMIY
          if (~proximity_r <= row[6:4]) begin
            vga_red   = {4{rgbfilter_r[2]}};
            vga_green = {4{rgbfilter_r[1]}};
            vga_blue  = {4{rgbfilter_r[0]}};
          end
        end
      end
      else if (row < c_img_rows + 8) begin // CENTROID ROWS
        if (img_col_left) begin // LEFT CENTROID
          if (col < 20) begin
            if (centroid_l[0]) begin
              vga_red   = {4{rgbfilter_l[2]}};
              vga_green = {4{rgbfilter_l[1]}};
              vga_blue  = {4{rgbfilter_l[0]}};
             end
          end
          else if (col < 40) begin
            if (centroid_l[1]) begin
              vga_red   = {4{rgbfilter_l[2]}};
              vga_green = {4{rgbfilter_l[1]}};
              vga_blue  = {4{rgbfilter_l[0]}};
            end
          end
          else if (col < 60) begin
            if (centroid_l[2]) begin
              vga_red   = {4{rgbfilter_l[2]}};
              vga_green = {4{rgbfilter_l[1]}};
              vga_blue  = {4{rgbfilter_l[0]}};
            end
          end
          else if (col < 80) begin
            if (centroid_l[3]) begin
              vga_red   = {4{rgbfilter_l[2]}};
              vga_green = {4{rgbfilter_l[1]}};
              vga_blue  = {4{rgbfilter_l[0]}};
            end
          end
          else if (col < 100) begin
            if (centroid_l[4]) begin
              vga_red   = {4{rgbfilter_l[2]}};
              vga_green = {4{rgbfilter_l[1]}};
              vga_blue  = {4{rgbfilter_l[0]}};
            end
          end
          else if (col < 120) begin
            if (centroid_l[5]) begin
              vga_red   = {4{rgbfilter_l[2]}};
              vga_green = {4{rgbfilter_l[1]}};
              vga_blue  = {4{rgbfilter_l[0]}};
            end
          end
          else if (col < 140) begin
            if (centroid_l[6]) begin
              vga_red   = {4{rgbfilter_l[2]}};
              vga_green = {4{rgbfilter_l[1]}};
              vga_blue  = {4{rgbfilter_l[0]}};
            end
          end
          else begin // less than 160
            if (centroid_l[7]) begin
              vga_red   = {4{rgbfilter_l[2]}};
              vga_green = {4{rgbfilter_l[1]}};
              vga_blue  = {4{rgbfilter_l[0]}};
            end
          end
        end                
        else if (img_col_cen) begin // CENTER CENTROID
          if (col < 20 + C_IMG_CEN_COL_MIN) begin
            if (centroid_c[0]) begin
              vga_red   = {4{rgbfilter_c[2]}};
              vga_green = {4{rgbfilter_c[1]}};
              vga_blue  = {4{rgbfilter_c[0]}};
             end
          end
          else if (col < 40 +C_IMG_CEN_COL_MIN) begin
            if (centroid_c[1]) begin
              vga_red   = {4{rgbfilter_c[2]}};
              vga_green = {4{rgbfilter_c[1]}};
              vga_blue  = {4{rgbfilter_c[0]}};
            end
          end
          else if (col < 60 + C_IMG_CEN_COL_MIN) begin
            if (centroid_c[2]) begin
              vga_red   = {4{rgbfilter_c[2]}};
              vga_green = {4{rgbfilter_c[1]}};
              vga_blue  = {4{rgbfilter_c[0]}};
            end
          end
          else if (col < 80 + C_IMG_CEN_COL_MIN) begin
            if (centroid_c[3]) begin
              vga_red   = {4{rgbfilter_c[2]}};
              vga_green = {4{rgbfilter_c[1]}};
              vga_blue  = {4{rgbfilter_c[0]}};
            end
          end
          else if (col < 100 + C_IMG_CEN_COL_MIN) begin
            if (centroid_c[4]) begin
              vga_red   = {4{rgbfilter_c[2]}};
              vga_green = {4{rgbfilter_c[1]}};
              vga_blue  = {4{rgbfilter_c[0]}};
            end
          end
          else if (col < 120 + C_IMG_CEN_COL_MIN) begin
            if (centroid_c[5]) begin
              vga_red   = {4{rgbfilter_c[2]}};
              vga_green = {4{rgbfilter_c[1]}};
              vga_blue  = {4{rgbfilter_c[0]}};
            end
          end
          else if (col < 140 + C_IMG_CEN_COL_MIN) begin
            if (centroid_c[6]) begin
              vga_red   = {4{rgbfilter_c[2]}};
              vga_green = {4{rgbfilter_c[1]}};
              vga_blue  = {4{rgbfilter_c[0]}};
            end
          end
          else begin // less than 160
            if (centroid_c[7]) begin
              vga_red   = {4{rgbfilter_c[2]}};
              vga_green = {4{rgbfilter_c[1]}};
              vga_blue  = {4{rgbfilter_c[0]}};
            end
          end
        end
        else if (img_col_rght) begin // RIGHT CENTROID
          if (col < 20 + C_IMG_RGTH_COL_MIN) begin
            if (centroid_r[0]) begin
              vga_red   = {4{rgbfilter_r[2]}};
              vga_green = {4{rgbfilter_r[1]}};
              vga_blue  = {4{rgbfilter_r[0]}};
             end
          end
          else if (col < 40 +C_IMG_RGTH_COL_MIN) begin
            if (centroid_r[1]) begin
              vga_red   = {4{rgbfilter_r[2]}};
              vga_green = {4{rgbfilter_r[1]}};
              vga_blue  = {4{rgbfilter_r[0]}};
            end
          end
          else if (col < 60 + C_IMG_RGTH_COL_MIN) begin
            if (centroid_r[2]) begin
              vga_red   = {4{rgbfilter_r[2]}};
              vga_green = {4{rgbfilter_r[1]}};
              vga_blue  = {4{rgbfilter_r[0]}};
            end
          end
          else if (col < 80 + C_IMG_RGTH_COL_MIN) begin
            if (centroid_r[3]) begin
              vga_red   = {4{rgbfilter_r[2]}};
              vga_green = {4{rgbfilter_r[1]}};
              vga_blue  = {4{rgbfilter_r[0]}};
            end
          end
          else if (col < 100 + C_IMG_RGTH_COL_MIN) begin
            if (centroid_r[4]) begin
              vga_red   = {4{rgbfilter_r[2]}};
              vga_green = {4{rgbfilter_r[1]}};
              vga_blue  = {4{rgbfilter_r[0]}};
            end
          end
          else if (col < 120 + C_IMG_RGTH_COL_MIN) begin
            if (centroid_r[5]) begin
              vga_red   = {4{rgbfilter_r[2]}};
              vga_green = {4{rgbfilter_r[1]}};
              vga_blue  = {4{rgbfilter_r[0]}};
            end
          end
          else if (col < 140 + C_IMG_RGTH_COL_MIN) begin
            if (centroid_r[6]) begin
              vga_red   = {4{rgbfilter_r[2]}};
              vga_green = {4{rgbfilter_r[1]}};
              vga_blue  = {4{rgbfilter_r[0]}};
            end
          end
          else begin // less than 160
            if (centroid_r[7]) begin
              vga_red   = {4{rgbfilter_r[2]}};
              vga_green = {4{rgbfilter_r[1]}};
              vga_blue  = {4{rgbfilter_r[0]}};
            end
          end
        end                
      end
      // CHARACTERS
      else if (row < C_TXT_ROW_MAX) begin
        if (txt1_col) begin // RGB MODE CHARACTER
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
        else if (txt2_col) begin // TEST MODE CHARACTER
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
        else if (filterboxleft_col) begin // color box indicating filter LEFT
          vga_red   = {4{rgbfilter_l[2]}};
          vga_green = {4{rgbfilter_l[1]}};
          vga_blue  = {4{rgbfilter_l[0]}};
        end
        else if (filterboxcen_col) begin // color box indicating filter CENTER
          vga_red   = {4{rgbfilter_c[2]}};
          vga_green = {4{rgbfilter_c[1]}};
          vga_blue  = {4{rgbfilter_c[0]}};
        end
        else if (filterboxrght_col) begin // color box indicating filter RIGHT
          vga_red   = {4{rgbfilter_r[2]}};
          vga_green = {4{rgbfilter_r[1]}};
          vga_blue  = {4{rgbfilter_r[0]}};
        end
      end
      else if (bwt_col && bwt_row) begin // Test grayscale  square of 16 pixels
        vga_red    = col[6:3];
        vga_green  = col[6:3];
        vga_blue   = col[6:3];
      end 
      else if (clt_col && clt_row) begin // Test color
        vga_red   = col[7:4];
        vga_green = col[5:2];
        vga_blue  = row[5:2];
      end
      else begin
        vga_red   = 4'b0000;
        vga_green = 4'b0000;
        vga_blue  = 4'b0000;
      end
    end
  end

endmodule
