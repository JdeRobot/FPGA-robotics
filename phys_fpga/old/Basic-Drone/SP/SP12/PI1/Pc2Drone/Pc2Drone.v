//================================================ START FILE HEADER ================================================
// Filename : Pc2Drone.v
// Module Name : Pc2Drone
// Module ID : SP12PI1
// Description : Main Pc2Drone file.
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module Pc2Drone 
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input clk_system,
	input uart_input,
// OUTPUT PORT DECLARATION
	output uart_data_rdy,		// Solo para debug
	output frame_decoder_dv,	// Solo para debug
	output uart_input_debug,	// Solo para debug
	output [4:0] debug_state_output,
	output debug_sinkdatavalid_output
);

// INPUT/OUTPUT PORT DECLARATION



// LOCAL PARAMETER DECLARATION
// ======= State machine Parameters ======= //

// INTERNAL REGISTERS DECLARATION	
//reg reset_system = 0;

// WIRES DECLARATION
//wire uart_data_rdy;						// Sustituido por "output uart_data_rdy"
wire [7:0] uart_data;
//wire frame_decoder_dv;					// Sustituido por "output frame_decoder_dv"
wire [7:0] frame_decoder_CH1data;
wire [7:0] frame_decoder_CH2data;
wire [7:0] frame_decoder_CH3data;
wire [7:0] frame_decoder_CH4data;
wire [7:0] frame_decoder_OFF1data;
wire [7:0] frame_decoder_OFF2data;
wire [7:0] frame_decoder_OFF3data;
wire [7:0] frame_decoder_OFF4data;
wire reset_system;

// MODULES INSTANTIATIONS
reset_module reset_module_System(
    .clk(clk_system),
    .reset(reset_system)
);


uart_rx uart(
    .reset(reset_system),
    .clk(clk_system),
    .sdin(uart_input),
    .data(uart_data),
    .data_rdy(uart_data_rdy)
);


frame_decoder uart_frame_decoder(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(uart_data_rdy),
    .sink_data(uart_data),
    .source_data_valid(frame_decoder_dv),
    .source_CH1data(frame_decoder_CH1data),
    .source_CH2data(frame_decoder_CH2data),
    .source_CH3data(frame_decoder_CH3data),
    .source_CH4data(frame_decoder_CH4data),
    .source_offset1data(frame_decoder_OFF1data),
    .source_offset2data(frame_decoder_OFF2data),
    .source_offset3data(frame_decoder_OFF3data),
    .source_offset4data(frame_decoder_OFF4data),
	 .state(debug_state_output),
	 .debug_sinkdatavalid(debug_sinkdatavalid_output)
);


// TASK DECLARATION

// ALWAYS CONSTRUCT BLOCK
/*always @(posedge clk) begin
end // always end*/

// CONTINOUS ASSIGNMENT
//wire uart_input_debug;
assign uart_input_debug = uart_input;

// END OF MODULE
endmodule





