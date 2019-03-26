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
		output [8:0] PIXEL_ROW,
		output [9:0] PIXEL_COLUMN,
		output DEBUG
);


reg START = 1'b1;
/*wire START;
start start_0(
    .START_I2C(START_I2C),
    .VSYNC(VSYNC),
    .START(START)

);*/
 

counter_rows counter_rows_0(
	 .VSYNC(VSYNC),
    .HREF(HREF),
    .PCLK(PCLK),
    .CLK(CLK),
    //.START(start_0.START),
	 .START(START),
    .DEBUG(DEBUG),
    .PIXEL_ROW(PIXEL_ROW)

);

counter_columns counter_columns_0(
    .VSYNC(VSYNC),
    .HREF(HREF),
    .PCLK(PCLK),
    .CLK(CLK),
    .START(START),
    //.DEBUG,
    .PIXEL_COLUMN(PIXEL_COLUMN)

);

endmodule
