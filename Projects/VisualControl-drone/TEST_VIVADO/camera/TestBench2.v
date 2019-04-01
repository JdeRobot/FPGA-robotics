`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   22:01:50 03/27/2019
// Design Name:   camera
// Module Name:   D:/FPGA-robotics/Projects/VisualControl-drone/TEST_VIVADO/camera/TestBench2.v
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

module TestBench2;

	// Inputs
	reg START_I2C;
	reg VSYNC;
	reg HREF;
	reg CLK;
	reg PCLK;
	reg [7:0] D;
	reg [7:0] ram [0:958];
	// Outputs
	wire [8:0] PIXEL_ROW_DEBUG;
	wire [9:0] PIXEL_COLUMN_DEBUG;
	wire [17:0] SUM_PIXEL_DEBUG;
	wire COLUMN_SUM_DEBUG;
	wire ROW_SUM_DEBUG;
	wire READY_COLOR_CAPTURE_COLOR;
	wire READY_COLOR_PROCESS_COLOR;
	wire DEBUG4;
	wire DEBUG5;
	wire DEBUG6;
	wire DEBUG7;
	integer i, j, k;
	localparam Rmin = 5'd25;
	localparam Rmax = 5'd31;
	localparam Gmin = 6'd0;
	localparam Gmax = 6'd5;
	localparam Bmin = 5'd0;
	localparam Bmax = 5'd5;
	// Instantiate the Unit Under Test (UUT)
	camera uut (
		.START_I2C(START_I2C),
		.VSYNC(VSYNC),
		.HREF(HREF),
		.CLK(CLK),
		.PCLK(PCLK),
		.D(D),
		.PIXEL_ROW_DEBUG(PIXEL_ROW_DEBUG),
		.PIXEL_COLUMN_DEBUG(PIXEL_COLUMN_DEBUG),
		.SUM_PIXEL_DEBUG(SUM_PIXEL_DEBUG),
		.DEBUG0(COLUMN_SUM_DEBUG),
		.DEBUG1(ROW_SUM_DEBUG),
		.DEBUG2(READY_COLOR_CAPTURE_COLOR),
		.DEBUG3(READY_COLOR_PROCESS_COLOR),
		.DEBUG4(DEBUG4),
		.DEBUG5(DEBUG5),
		.DEBUG6(DEBUG6),
		.DEBUG7(DEBUG7)
	);

	initial begin
		// Initialize Inputs
		START_I2C = 1;
		VSYNC = 0;
		HREF = 0;
		CLK = 0;
		PCLK = 0;
		//D = 8'd248;
		D = 8'd0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here

	end
	always
	begin
		CLK=!CLK;#1;
	end

	initial
	begin
  $readmemb("image.mem", ram);
	end


	always
	begin
		VSYNC=1;#20;
		VSYNC=0;#10;
		for( i=0; i<480; i=i+1)
		begin
			HREF=1;#10;
			for ( j=0; j<1280; j=j+1)
			begin
				PCLK=1;D=ram[j];#40;
				PCLK=0;#40;
				$monitor ($realtime, " Read Data = %0b" ,ram[0]);
			end
			HREF=0;#10;
			for ( k=0; k<1280; k=k+1)
			begin
				#80;
			end
		end
	end

	endmodule
