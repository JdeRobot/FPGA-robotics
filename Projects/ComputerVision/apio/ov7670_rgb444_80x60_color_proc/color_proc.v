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
    c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue
  )
  (
    input          rst,       //reset, active high
    input          clk,       //fpga clock
    input  [c_nb_buf-1:0]      orig_img_pxl,
    output [c_nb_img_pxls-1:0] orig_img_addr,
    output reg                 proc_we,
    output reg [c_nb_buf-1:0]      proc_img_pxl,
    output [c_nb_img_pxls-1:0] proc_img_addr
  );


  reg [c_nb_img_pxls-1:0]  cnt_pxl;
  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;

  wire end_pxl_cnt;


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
  assign orig_img_addr = cnt_pxl;
  assign proc_img_addr = cnt_pxl_proc;

  always @ (orig_img_pxl) // should include RGB mode
  begin
    // check on RED
    if (orig_img_pxl[c_nb_buf-1])
      proc_img_pxl <= orig_img_pxl;
    else
      proc_img_pxl <= 0;
  end

endmodule
