`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:35:04 12/31/2019
// Design Name:   vga_sync
// Module Name:   F:/xilinx_proy/ov7670/v05_disp_veril_04/tb_vga_sync.v
// Project Name:  v05_disp_veril_04
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_sync
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_vga_sync;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire visible;
	wire new_pxl;
	wire hsync;
	wire vsync;
	wire [9:0] col;
	wire [9:0] row;

	// Instantiate the Unit Under Test (UUT)
	vga_sync uut (
		.rst(rst), 
		.clk(clk), 
		.visible(visible), 
		.new_pxl(new_pxl), 
		.hsync(hsync), 
		.vsync(vsync), 
		.col(col), 
		.row(row)
	);

  always begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end

  initial begin
  // Initialize Inputs
    rst = 1;
    // Wait 100 ns for global reset to finish
    #105;
    rst = 0;
  end

endmodule

