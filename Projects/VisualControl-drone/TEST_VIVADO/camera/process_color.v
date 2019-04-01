`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    13:39:26 03/20/2019
// Design Name:
// Module Name:    process_color
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
module process_color(
    input [4:0] RED,
    input [5:0] GREEN,
    input [4:0] BLUE,
    input HREF,
    input VSYNC,
    input [8:0] PIXEL_ROW,
    input [9:0] PIXEL_COLUMN,
    input CLK,
    input PCLK,
    input START,
    input READY_COLOR,
    output [8:0] PIXEL_ROW_DEBUG,
    output [9:0] PIXEL_COLUMN_DEBUG,
    output [17:0] SUM_PIXEL_DEBUG,
    output DEBUG
    );

localparam anchura = 640;
localparam altura = 480;
localparam Rmin = 5'd25;
localparam Rmax = 5'd31;
localparam Gmin = 6'd0;
localparam Gmax = 6'd5;
localparam Bmin = 5'd0;
localparam Bmax = 5'd5;
reg [7:0] led_reg = 8'd0;
reg [4:0] red_color = 5'd0;
reg [17:0] sum_reg = 18'd0;
reg debug_reg = 1'b0;
reg [17:0] acumX_reg = 18'd0;
reg [16:0] acumY_reg =17'd0;
reg VSYNC_1xdelay;
reg HREF_1xdelay;
reg PCLK_1xdelay;
reg READY_COLOR_1xdelay;

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
always @(posedge CLK)
begin
  READY_COLOR_1xdelay <= READY_COLOR;
end
/**************************************************************************/
wire PCLK_pulse_high = ( PCLK_1xdelay == 0 && PCLK == 1) ? 1:0;
wire PCLK_pulse_low = ( PCLK_1xdelay == 1 && PCLK == 0) ? 1:0;
wire HREF_constant_high = ( HREF == 1 && HREF_1xdelay == 1) ? 1:0;
wire HREF_constant_low = ( HREF == 0 && HREF_1xdelay == 0) ? 1:0;
wire FRAME_FINISH = ( PIXEL_ROW == 8'd480 && PIXEL_COLUMN == 9'd639) ? 1:0;
wire READY_COLOR_pulse_high = ( READY_COLOR_1xdelay == 0 && READY_COLOR == 1) ? 1:0;
/**************************************************************************/

always @(posedge CLK)
begin
  if(READY_COLOR_pulse_high)
  begin
    debug_reg <= !debug_reg;
    //if( RED>=Rmin && RED<=Rmax && GREEN>=Gmin && GREEN<= Gmax && BLUE>=Bmin && BLUE<=Bmax )//ha pasado el filtro
    if (!FRAME_FINISH)
    begin
      if( RED>=Rmin)//ha pasado el filtro
      begin
          sum_reg <= sum_reg + 18'd1;
      end
    end
    else
    begin
      sum_reg <= 18'd0;
    end
  end
end

assign DEBUG = debug_reg;
assign PIXEL_ROW_DEBUG = PIXEL_ROW;
assign PIXEL_COLUMN_DEBUG = PIXEL_COLUMN;
assign SUM_PIXEL_DEBUG = sum_reg;

endmodule
