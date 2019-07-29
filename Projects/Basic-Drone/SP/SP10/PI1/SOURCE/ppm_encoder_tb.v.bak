//-----------------------------------------------------
// Design Name 	: 	KeyPress_tb
// File Name   	: 	KeyPress_tb.v
// Function    	: 	Tests KeyPress_tb functionality
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
`timescale 1ns/1ps      //$GLOBAL CONDITIONS: 1ns.
								//$GC: 1ps for suimulation resolution.
// ======================= Port declarations I/Os ======================= //
module KeyPress_tb();

// MUT INPUT PORT DECLARATION
reg	reset, clk;
reg	sink_data_ready;
reg	[7:0] sink_data;
// MUT OUTPUT PORT DECLARATION
wire source_data_ready;
wire [2:0] source_data;

// TEST PARAMETERS
parameter T_main=10;	// $CLOCK: 100MHz main system clock
parameter T_SPI_HALF=250;	// 

// MUT PARAMETERS
parameter MODULO_REVISADO  = "KeyPress.v";
parameter VERSION_REVISADA = "r...";

// MUT INSTANTIATION
	KeyPress MUT(	
				.reset(reset),
				.clk(clk),
				.sink_data_ready(sink_data_ready),
				.sink_data(sink_data),
				.source_data_ready(source_data_ready),
				.source_data(source_data)
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
		reset = 1;
		// MUT Inputs
		sink_data_ready = 0;
		sink_data = 0;
		#(T_main) reset=0;	// Deasserts reset after 1 main clk edge.
		#(T_main*10);			// WF 10 clks
		
		// ********** MUT SIMPLE TEST **********
		wait(clk==0);		//$PT: Waits for main clk deassertion
		wait(clk==1);		//$PT: Waits for main clk assertion
		wait(clk==0);		//$PT: Waits for main clk negedge
		
		// ********** Send char "w" **********
		sink_data_ready = 1;
		sink_data = 8'd119;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		// ********** Send char "a" **********
		sink_data_ready = 1;
		sink_data = 8'd97;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		// ********** Send char "w" **********
		sink_data_ready = 1;
		sink_data = 8'd119;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		// ********** Send char "s" **********
		sink_data_ready = 1;
		sink_data = 8'd115;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		// ********** Send char "d" **********
		sink_data_ready = 1;
		sink_data = 8'd100;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		// ********** Send char unk **********
		sink_data_ready = 1;
		sink_data = 8'd54;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		// ********** Send char "left Shift" (assuming left Shift==d91) **********
		sink_data_ready = 1;
		sink_data = 8'd91;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		// ********** Send char "space" (assuming space==d93) **********
		sink_data_ready = 1;
		sink_data = 8'd93;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		// ********** Send char "b" **********
		sink_data_ready = 1;
		sink_data = 8'd98;
		#(T_main);
		sink_data_ready = 0;
		#(T_main*10);	// Gap between UART RXs
		
		
		
	end
endmodule


