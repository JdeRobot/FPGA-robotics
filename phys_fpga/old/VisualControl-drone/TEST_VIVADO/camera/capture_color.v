`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    13:13:24 03/20/2019
// Design Name:
// Module Name:    capture_color
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module capture_color(
    input VSYNC,
    input HREF,
    input PCLK,
    input CLK,
    input START,
    input [7:0] D,
    output [4:0] RED,
    output [5:0] GREEN,
    output [4:0] BLUE,
	  output READY_COLOR,
    output DEBUG
    );

localparam BYTE1 = 1'b0;
localparam BYTE2 = 1'b1;
reg state = BYTE1;
reg ready_color_reg = 1'b0;
reg debug_reg = 1'b0;

reg [4:0] RED_reg = 5'd0;
reg [2:0] GREEN_prev = 3'd0;
reg [5:0] GREEN_reg = 6'd0;
reg [4:0] BLUE_reg = 5'd0;
reg VSYNC_1xdelay;
reg HREF_1xdelay;
reg PCLK_1xdelay;
/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/
always @(posedge CLK)
begin
  VSYNC_1xdelay <= VSYNC;
end
always @(posedge CLK)
begin
  HREF_1xdelay <= HREF;
end
always @(posedge CLK)
begin
  PCLK_1xdelay <= PCLK;
end
/**************************************************************************/
wire PCLK_pulse_high = ( PCLK_1xdelay == 0 && PCLK == 1) ? 1:0;
wire HREF_constant_high = ( HREF == 1 && HREF_1xdelay == 1) ? 1:0;
wire HREF_constant_low = ( HREF == 0 && HREF_1xdelay == 0) ? 1:0;
/**************************************************************************/

always @(posedge CLK)
begin
    if( START && PCLK_pulse_high && HREF_constant_high )
    begin
      case(state)
        BYTE1:
        begin
          RED_reg<= {D[7],D[6],D[5],D[4],D[3]};
          GREEN_prev<= {D[2],D[1],D[0]};
          ready_color_reg <= 1'b0;
          state<= BYTE2;
          debug_reg<= 1'b0;
        end
        BYTE2:
        begin
          GREEN_reg<={GREEN_prev,D[7],D[6],D[5]};
          BLUE_reg<={D[4],D[3],D[2],D[1],D[0]};
          ready_color_reg <= 1'b1;
          state<= BYTE1;
          debug_reg<= 1'b1;
        end
      endcase
    end
    else if ( HREF_constant_low )
    begin
      ready_color_reg <= 1'b0;
      debug_reg<= 1'b0;
      state <= BYTE1;
    end
end

assign BLUE = BLUE_reg;
assign GREEN = GREEN_reg;
assign RED = RED_reg;
assign READY_COLOR = ready_color_reg;
assign DEBUG = debug_reg;
endmodule
