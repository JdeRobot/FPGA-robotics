`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    13:48:53 03/20/2019
// Design Name:
// Module Name:    camera
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
module camera(
		input START_I2C,
		input VSYNC,
		input HREF,
		input CLK,
		input PCLK,
		input [7:0] D,
		output [8:0] PIXEL_ROW_DEBUG,
		output [9:0] PIXEL_COLUMN_DEBUG,
		output [17:0] SUM_PIXEL_DEBUG,
		output DEBUG0,
		output DEBUG1,
		output DEBUG2,
		output DEBUG3,
		output DEBUG4,
		output DEBUG5,
		output DEBUG6,
		output DEBUG7
);


reg START = 1'b1;
/*wire START;
start start_0(
    .START_I2C(START_I2C),
    .VSYNC(VSYNC),
    .START(START)

);*/

wire [4:0] RED;
wire [5:0] GREEN;
wire [4:0] BLUE;
wire READY_COLOR;
wire [8:0] PIXEL_ROW;
wire [9:0] PIXEL_COLUMN;


counter_rows counter_rows_0(
	 .VSYNC(VSYNC),
    .HREF(HREF),
    .PCLK(PCLK),
    .CLK(CLK),
    //.START(start_0.START),
	 .START(START),
    .DEBUG(DEBUG0),
    .PIXEL_ROW(PIXEL_ROW)
);

counter_columns counter_columns_0(
    .VSYNC(VSYNC),
    .HREF(HREF),
    .PCLK(PCLK),
    .CLK(CLK),
    .START(START),
    .DEBUG(DEBUG1),
    .PIXEL_COLUMN(PIXEL_COLUMN)
);
capture_color capture_color_0(
	  .VSYNC(VSYNC),
	  .HREF(HREF),
	  .PCLK(PCLK),
	  .CLK(CLK),
	  .START(START),
	  .D(D),
	  .RED(RED),
	  .GREEN(GREEN),
	  .BLUE(BLUE),
	  .READY_COLOR(READY_COLOR),
	  .DEBUG(DEBUG2)
	);
process_color process_color_0(
	  .RED(capture_color_0.RED),
    .GREEN(capture_color_0.GREEN),
	  .BLUE(capture_color_0.BLUE),
    .HREF(HREF),
	  .VSYNC(VSYNC),
	  .PIXEL_ROW(counter_rows_0.PIXEL_ROW),
	  .PIXEL_COLUMN(counter_columns_0.PIXEL_COLUMN),
	  .CLK(CLK),
	  .PCLK(PCLK),
	  .START(START),
	  .READY_COLOR(capture_color_0.READY_COLOR),
		.PIXEL_ROW_DEBUG(PIXEL_ROW_DEBUG),
    .PIXEL_COLUMN_DEBUG(PIXEL_COLUMN_DEBUG),
		.SUM_PIXEL_DEBUG(SUM_PIXEL_DEBUG),
	  .DEBUG(DEBUG3)
);

endmodule
