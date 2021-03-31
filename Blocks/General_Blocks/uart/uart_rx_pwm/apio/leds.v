module uart_leds
 (
   input            rst,
   input            clk,
   input            dat_ready,
   input      [7:0] uart_data,
   output reg [7:0] leds
  );

  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      leds <= 0;
    else begin
      if (dat_ready)
        leds <= uart_data;
    end
  end

endmodule
