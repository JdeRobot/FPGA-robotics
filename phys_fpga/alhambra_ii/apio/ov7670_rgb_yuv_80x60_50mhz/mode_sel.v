//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   mode selection
//

module mode_sel
  #(parameter
    c_on    = 1'b1
   )
   (input      rst,
    input      clk,
    input      sig_in,
    output reg   rgbmode,
    output reg   testmode);

  reg    [22:0]  count;
  reg            counting;
  reg            sig_in_rg1;
  reg            sig_in_rg2;
  reg            sig_pulse;
  wire           sig_risevent;
  wire           sig_fallevent;

  reg    [1:0]   mode;

  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      counting <= 1'b0;
      sig_pulse  <= 1'b0;
      count <= 24'h7F_FFFF;
    end
    else if (sig_in) begin
      sig_pulse <= 1'b0;
      if (sig_risevent) 
        counting <= 1'b1;
      else if (sig_fallevent) begin
        counting <= 1'b0;
        count <= 24'h7F_FFFF;
      end
      else if (count == 0) begin
        sig_pulse <= 1'b1;
        counting <= 1'b0;
        count <= 24'h7F_FFFF;
      end
      else if (counting)
        count <= count - 1;
      else begin
        counting <= 1'b0;
        count <= 24'h7F_FFFF;
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


  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      mode <= 2'b0;
    end
    else begin
      if (sig_pulse) begin
        if (mode == 2'b11) 
          mode <= 2'b0;
        else
          mode <= mode + 1;
      end
    end
  end

  always @(*)
  begin
    case (mode)
      2'b00: begin  // RGB Normal
        rgbmode = 1'b1;
        testmode = 1'b0;
      end
      2'b01: begin  // YUV Normal
        rgbmode = 1'b0;
        testmode = 1'b0;
      end
      2'b10: begin // RGB Test
        rgbmode = 1'b1;
        testmode = 1'b1;
      end
      default: begin //2'b11: begin  // YUV Test
        rgbmode = 1'b0;
        testmode = 1'b1;
      end
    endcase
  end

endmodule

