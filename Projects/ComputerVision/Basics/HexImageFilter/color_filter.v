module color_filter (
              //  input  wire clk,            // System clock.
                output reg  [7:0] Rp,             // Pixel (R) 
                output reg  [7:0] Gp,             // Pixel (G) 
                output reg  [7:0] Bp,            // Pixel (B) 
                input [7:0] data_w_R,
                input [7:0] data_w_G,
                input [7:0] data_w_B,

                input filter_R,
                input filter_G,
                input filter_B,
                );

 

  always @(*) begin
    if(filter_R) begin
      Rp <= 0;
    end
    else begin
      Rp <= data_w_R;
    end
    if(filter_G) begin
      Gp <= 0;
    end
    else begin
      Gp <= data_w_G;
    end
    if(filter_B) begin
      Bp <= 0;
    end
    else begin
      Bp <= data_w_B;
    end
  end


endmodule