//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   frame_buffer.v
//   
//-----------------------------------------------------------------------------

module frame_buffer
  #(parameter
    // VGA
    //c_img_cols    = 640, // 10 bits
    //c_img_rows    = 480, //  9 bits
    // QQVGA
    c_img_cols    = 160, // 8 bits
    c_img_rows    = 120, //  7 bits
    c_img_pxls    = c_img_cols * c_img_rows,
    c_nb_img_pxls = $clog2(c_img_pxls), // 15 -> 160x120= 19200
    // VGA
    //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288
    // QQVGA
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
   input                          clk,
   input                          wea,
   input      [c_nb_img_pxls-1:0] addra,
   input      [c_nb_buf-1:0]             dina,
   input      [c_nb_img_pxls-1:0] addrb,
   output reg [c_nb_buf-1:0]             doutb
   );

  reg  [c_nb_buf-1:0] ram[c_img_pxls-1:0];

  always @ (posedge clk)
  begin
    if (wea)
        ram[addra] <= dina;
    doutb <= ram[addrb];
  end

endmodule

