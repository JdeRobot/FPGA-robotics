//-----------------------------------------------------
// Design Name 	: 	ppm_encoder_tb
// File Name   	: 	ppm_encoder_tb.v
// Function    	: 	Tests ppm_encoder functionality
// Description	: 	
// Mod		:	
//-----------------------------------------------------
//-----------------------------------------------------
// CONTROL DE VERSIONES
//$Revision: $
//$Author: $
//$Date: $
//$URL: $
//-----------------------------------------------------
//$TOOL: MODELSIM VERSION 10.5c
//$ENTORNO:
//-----------------------------------------------------
`timescale 1ns/100ps      //$GLOBAL CONDITIONS: 1ns for time inc.
								//$GC: 100ps for simulation resolution.
// ======================= Port declarations I/Os ======================= //
module ppm_encoder_tb();

// MUT INPUT PORT DECLARATION
//reg	reset, clk;
reg	clk;
//reg	sink_data_ready;
//reg	[7:0] sink_data;
// MUT OUTPUT PORT DECLARATION
wire ppm_output;
//wire [2:0] source_data;

// TEST PARAMETERS
parameter T_main=83;	// $CLOCK: 12.0482MHz main system clock

// MUT PARAMETERS
parameter MODULO_REVISADO  = "ppm_encoder.v";
parameter VERSION_REVISADA = "r...";

// MUT INSTANTIATION
ppm_encoder MUT(	
				.clk(clk),
				.ppm_output(ppm_output)
				);

// MAIN CLK GENERATION
always #(T_main/2) clk = ~clk;

// INCLUDES
//	`include "Print_Pass_Tasks.v"

// TEST SEQUENCE
	initial begin
		// ********** MUT RESET **********
		// System signals
		clk = 0;
		//reset = 1;
		// MUT Inputs
		//sink_data_ready = 0;
		//sink_data = 0;
		//#(T_main) reset=0;	// Deasserts reset after 1 main clk edge.
		#(T_main*10);			// WF 10 clks
		
		// ********** MUT SIMPLE TEST **********
		wait(clk==0);		//$PT: Waits for main clk deassertion
		wait(clk==1);		//$PT: Waits for main clk assertion
		wait(clk==0);		//$PT: Waits for main clk negedge
		
		// ********** Send char "w" **********
		//sink_data_ready = 1;
		//sink_data = 8'd119;
		//#(T_main);
		//sink_data_ready = 0;
		//#(T_main*10);	// Gap between UART RXs
		
		
	end
endmodule


