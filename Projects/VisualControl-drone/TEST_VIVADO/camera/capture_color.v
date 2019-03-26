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
    input [4:0] RED,
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
  PXCLK_1xdelay <= PXCLK;
end
/**************************************************************************/
assign PXCLK_pulse_high = ( PXCLK_1xdelay == 0 && PXCLK == 1) ? 1:0;
assign HSYNC_constant_high = ( HSYNC == 1 && HSYNC_1xdelay == 1) ? 1:0;
assign HSYNC_constant_low = ( HSYNC == 0 && HSYNC_1xdelay == 0) ? 1:0;
/**************************************************************************/

always @(posedge CLK)
begin
    if( START && PXCLK_pulse_high && HSYNC_constant_high )
    begin
      case(state)
        BYTE1:
        begin
          RED_reg<= {D7,D6,D5,D4,D3};
          GREEN_prev<= {D2,D1,D0};
          ready_color_reg <= 1'b0;
          state<= BYTE2;
          debug_reg<= !debug_reg;
        end
        BYTE2:
        begin
          GREEN_reg<={GREEN_prev,D7,D6,D5};
          BLUE_reg<={D4,D3,D2,D1,D0};
          ready_color_reg <= 1'b1;
          state<= BYTE1;
          debug_reg<= !debug_reg;
        end
      endcase
    end
    else if ( HSYNC_constant_low )
    begin
      ready_color_reg <= 1'b0;
      state <= BYTE1;
    end
end

assign BLUE = BLUE_reg;
assign GREEN = GREEN_reg;
assign RED = RED_reg;
assign ready_color = ready_color_reg;
assign debug = debug_reg;


endmodule
