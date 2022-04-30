`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:59:44 12/29/2019
// Design Name:   debounce_1pulse
// Module Name:   F:/urjc/proyectos/vhdl/ov7670/v05_disp_verilog_02/tb_debounce.v
// Project Name:  v05_disp_veril_02
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: debounce_1pulse
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_debounce;

	// Inputs
	reg rst;
	reg clk;
	reg sig_in;

	// Outputs
	wire sig_out;

	// Instantiate the Unit Under Test (UUT)
	debounce_1pulse uut (
		.rst(rst), 
		.clk(clk), 
		.sig_in(sig_in), 
		.sig_out(sig_out)
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

  initial begin
    sig_in = 0;
    // Wait 100 ns for global reset to finish
    #235;
    sig_in = 1;
    #10;
    sig_in = 0;
    #10;
    sig_in = 1;
    #20;
    sig_in = 0;
    #20;
    sig_in = 1;
    #10_000;     //  ---- 1
    sig_in = 0;
    #20;
    sig_in = 1;
    #20;
    sig_in = 0;
    #10;
    sig_in = 1;
    #10;
    sig_in = 0;
    #10_000;    //  --- 0
    sig_in = 1;
    #10;
    sig_in = 0;
    #10;
    sig_in = 1;
    #20;
    sig_in = 0;
    #20;
    sig_in = 1;
    #400_000_000;     //  ---- 1
    sig_in = 0;
    #20;
    sig_in = 1;
    #20;
    sig_in = 0;
    #10;
    sig_in = 1;
    #10;
    sig_in = 0;
    #10_000;    //  --- 0
  end

endmodule

