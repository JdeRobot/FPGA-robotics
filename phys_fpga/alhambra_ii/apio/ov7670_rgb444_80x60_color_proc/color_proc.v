//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   color_proc.v
//   Takes an image from a memory, applies a simple color processing
//   and saves in another memory
//

module color_proc
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
    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue,
    // position of the most significant bits of each color
    c_msb_blue  = c_nb_buf_blue-1,
    c_msb_red   = c_nb_buf-1,
    c_msb_green = c_msb_blue + c_nb_buf_green
  )
  (
    input          rst,       //reset, active high
    input          clk,       //fpga clock
    input          proc_ctrl, //input to control the processing (select color)
    // Address and pixel of original image
    input  [c_nb_buf-1:0]      orig_pxl,  //pixel from original image
    output [c_nb_img_pxls-1:0] orig_addr, //pixel mem address original img
    // Address and pixel of processed image
    output reg                 proc_we,  //write enable, to write processed pxl
    output reg [c_nb_buf-1:0]  proc_pxl, // processed pixel to be written
    output [c_nb_img_pxls-1:0] proc_addr // address of processed pixel
  );


  reg [c_nb_img_pxls-1:0]  cnt_pxl;
  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;
  // indicates which colors will filter RGB
  reg [2:0] rgb_filter;

  wire end_pxl_cnt;

  reg  proc_ctrl_rg1, proc_ctrl_rg2;
  wire pulse_proc_ctrl;

  parameter  BLACK_PXL = {c_nb_img_pxls{1'b0}};

  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      proc_ctrl_rg1 <= 1'b0;
      proc_ctrl_rg2 <= 1'b0;
    end
    else begin
      proc_ctrl_rg1 <= proc_ctrl;
      proc_ctrl_rg2 <= proc_ctrl_rg1;
    end
  end

  // detect a pulse in proc_ctrl
  assign pulse_proc_ctrl = (proc_ctrl_rg1 & ~proc_ctrl_rg2);
  
  // changes the filter
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      rgb_filter <= 3'b000; // no filter
    end
    else begin
      if (pulse_proc_ctrl) begin
        case (rgb_filter)
          3'b000: // no filter, output same as input
            rgb_filter <= 3'b100; // red filter
          3'b100: // red filter
            rgb_filter <= 3'b010; // green filter
          3'b010: // green filter
            rgb_filter <= 3'b001; // blue filter
          3'b001: // blue filter
            rgb_filter <= 3'b110; // red and green filter
          3'b110: // red and green filter
            rgb_filter <= 3'b101; // red and blue filter
          3'b101: // red and blue filter
            rgb_filter <= 3'b011; // green and blue filter
          3'b011: // green and blue filter
            rgb_filter <= 3'b111; // red, green and blue filter
          3'b111: // red, green and blue filter
            rgb_filter <= 3'b000; // no filter
        endcase
      end
    end
  end
         


  // memory address count
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      cnt_pxl <= 0;
      cnt_pxl_proc <= 0;
      proc_we <= 1'b0;
    end
    else begin
      proc_we <= 1'b1;
      // data from memory received a clock cycle later
      cnt_pxl_proc <= cnt_pxl;
      if (end_pxl_cnt )
        cnt_pxl <= 0;
      else
        cnt_pxl <= cnt_pxl + 1;
    end
  end

  assign end_pxl_cnt = (cnt_pxl == c_img_pxls-1) ? 1'b1 : 1'b0;
  assign orig_addr = cnt_pxl;
  assign proc_addr = cnt_pxl_proc;

  always @ (*) // should include RGB mode
  begin
    // check on RED
    case (rgb_filter)
      3'b000: // no filter, output same as input
        proc_pxl = orig_pxl;
      3'b100: begin // red filter
        if (orig_pxl[c_msb_red])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b010: begin // green filter
        if (orig_pxl[c_msb_green])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b001: begin // filter blue
        if (orig_pxl[c_msb_blue])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b110: begin // filter red and green
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b101: begin // filter red and blue
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_blue])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b011: begin // filter green and blue
        if (orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
      3'b111: begin // red, green and blue filter
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          proc_pxl = orig_pxl;
        else
          proc_pxl = BLACK_PXL;
      end
    endcase
  end

endmodule
