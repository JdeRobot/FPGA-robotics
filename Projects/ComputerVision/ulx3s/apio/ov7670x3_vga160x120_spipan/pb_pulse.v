//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   pulse detection module for push buttons
//   for output 3, it toggles the state

module pb_pulse
  (input    rst,
   input    clk,
   // push buttons inputs
   input    pb1,
   input    pb2,
   input    pb3,
   // push buttons pulse detection
   output   pulse_pb1,
   output   pulse_pb2,
   output   toggle_pb3
  );

  wire pulse_pb3;
  reg pb1_rg1, pb1_rg2;
  reg pb2_rg1, pb2_rg2;
  reg pb3_rg1, pb3_rg2;

  reg state3;


  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      pb1_rg1 <= 1'b0;
      pb1_rg2 <= 1'b0;
      pb2_rg1 <= 1'b0;
      pb2_rg2 <= 1'b0;
      pb3_rg1 <= 1'b0;
      pb3_rg2 <= 1'b0;
      state3  <= 1'b0;
    end
    else begin
      pb1_rg1 <= pb1;
      pb1_rg2 <= pb1_rg1;
      pb2_rg1 <= pb2;
      pb2_rg2 <= pb2_rg1;
      pb3_rg1 <= pb3;
      pb3_rg2 <= pb3_rg1;
      if (pulse_pb3)
        state3  <= ~state3; //toggle
    end
  end

  // detect a pulse 
  assign pulse_pb1 = pb1_rg1 & ~pb1_rg2;
  assign pulse_pb2 = pb2_rg1 & ~pb2_rg2;
  assign pulse_pb3 = pb3_rg1 & ~pb3_rg2;
  assign toggle_pb3 = state3;

endmodule
