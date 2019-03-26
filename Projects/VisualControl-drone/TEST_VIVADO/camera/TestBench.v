`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   20:19:35 03/26/2019
// Design Name:   camera
// Module Name:   D:/FPGA-robotics/Projects/VisualControl-drone/TEST_VIVADO/camera/TestBench.v
// Project Name:  camera
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: camera
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module TestBench;

	// Inputs
	reg START_I2C;
	reg VSYNC;
	reg HREF;
	reg CLK;
	reg PCLK;

	// Outputs
	wire [8:0] PIXEL_ROW;
	wire [9:0] PIXEL_COLUMN;
	wire DEBUG;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	camera uut (
		.START_I2C(START_I2C),
		.VSYNC(VSYNC),
		.HREF(HREF),
		.CLK(CLK),
		.PCLK(PCLK),
		.PIXEL_ROW(PIXEL_ROW),
		.PIXEL_COLUMN(PIXEL_COLUMN),
		.DEBUG(DEBUG)
	);

	initial begin
		// Initialize Inputs
		START_I2C = 1;
		VSYNC = 0;
		HREF = 0;
		CLK = 0;
		PCLK = 0;

		// Wait 100 ns for global reset to finish
		#1;

		// Add stimulus here
		for (i=0;i<460;i=i+1)
		begin
			CLK=!CLK; #1;
		end

	end


endmodule
