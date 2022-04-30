//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   Pulse detector, converts a bouncing signal in just one pulse
//

module debounce_1pulse
  #(parameter
    c_on    = 1'b1
   )
   (input      rst,
    input      clk,
    input      sig_in,
    output reg sig_out);

  reg    [23:0]  count;
  reg            counting;
  reg            sig_in_rg1;
  reg            sig_in_rg2;
  wire           sig_risevent;
  wire           sig_fallevent;

  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      counting <= 1'b0;
      sig_out  <= 1'b0;
      count <= 24'hFF_FFFF;
    end
    else if (sig_in) begin
      sig_out <= 1'b0;
      if (sig_risevent) 
        counting <= 1'b1;
      else if (sig_fallevent) begin
        counting <= 1'b0;
        count <= 24'hFF_FFFF;
      end
      else if (count == 0) begin
        sig_out <= 1'b1;
        counting <= 1'b0;
        count <= 24'hFF_FFFF;
      end
      else if (counting)
        count <= count - 1;
      else begin
        counting <= 1'b0;
        count <= 24'hFF_FFFF;
      end
    end
  end

  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      sig_in_rg1 <= 1'b0;
      sig_in_rg2 <= 1'b0;
    end
    else begin
      sig_in_rg1 <= sig_in;
      sig_in_rg2 <= sig_in_rg1;
    end
  end

  assign sig_risevent = ((sig_in_rg1 == 1'b1) && (sig_in_rg2 == 1'b0)) ?
                        1'b1 : 1'b0;
  assign sig_fallevent = ((sig_in_rg1 == 1'b0) && (sig_in_rg2 == 1'b1)) ?
                        1'b1 : 1'b0;
  
endmodule

