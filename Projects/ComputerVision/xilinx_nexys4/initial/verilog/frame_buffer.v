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
    c_img_cols    = 640, // 10 bits
    c_img_rows    = 480, //  9 bits
    c_img_pxls    = c_img_cols * c_img_rows,
    // c_nb_img_pxls = log2i(c_img_pxls-1) + 1
    c_nb_img_pxls =  19  //640*480=307,200 -> 2^19=524,288
  )
  (
   input                          clk,
   input                          wea,
   input      [c_nb_img_pxls-1:0] addra,
   input      [8-1:0]             dina,
   input      [c_nb_img_pxls-1:0] addrb,
   output reg [8-1:0]             doutb
   );

  reg  [8-1:0] ram[c_img_pxls-1:0];

  always @ (posedge clk)
  begin
    if (wea)
        ram[addra] <= dina;
    doutb <= ram[addrb];
  end

endmodule

