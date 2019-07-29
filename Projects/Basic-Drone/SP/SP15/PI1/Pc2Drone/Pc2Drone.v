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
	output uart_input_debug,	// Solo para debug
	output frame_decoder_dv,	// Solo para debug
	output ppm_output
);


// INPUT/OUTPUT PORT DECLARATION
// LOCAL PARAMETER DECLARATION
localparam ppm_min_pulses = 15'd8261;
localparam ppm_middle_pulses = 15'd14411;
localparam ppm_max_pulses = 15'd20555;
// INTERNAL REGISTERS DECLARATION	


// WIRES DECLARATION
// ************ Genéricas al Sistema ************ //
wire reset_system;
// ************ Entre Sync y UART ************ //
wire uart_input_sync;
// ************ Entre UART y FrameDecoder ************ //
wire uart_data_rdy;
wire [7:0] uart_data;
// ************ Entre FrameDecoder y Scalers ************ //
//wire frame_decoder_dv;					// Sustituido por "output frame_decoder_dv"
wire [7:0] frame_decoder_CH1data;
wire [7:0] frame_decoder_CH2data;
wire [7:0] frame_decoder_CH3data;
wire [7:0] frame_decoder_CH4data;
wire [7:0] frame_decoder_OFF1data;
wire [7:0] frame_decoder_OFF2data;
wire [7:0] frame_decoder_OFF3data;
wire [7:0] frame_decoder_OFF4data;
// ************ Entre Scalers y PPM Encoder ************ //
wire scaler_1_dv;
wire [14:0] scaler_1_data;
wire [14:0] scaler_2_data;
wire [14:0] scaler_3_data;
wire [14:0] scaler_4_data;


// MODULES INSTANTIATIONS
reset_module reset_module_System(
    .clk(clk_system),
    .reset(reset_system)
);


dff_v_ncycle uart_sync(
    .Q(uart_input_sync),
    .D(uart_input),
    .clk(clk_system)
);


uart_rx uart(
    .reset(reset_system),
    .clk(clk_system),
    .sdin(uart_input_sync),
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
    .source_offset4data(frame_decoder_OFF4data)
);


scaler scaler_1(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(frame_decoder_dv),
    .sink_data(frame_decoder_CH1data),
    .sink_offset(frame_decoder_OFF1data),
    .source_data_valid(scaler_1_dv),
    .source_data(scaler_1_data)
);


scaler scaler_2(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(frame_decoder_dv),
    .sink_data(frame_decoder_CH2data),
    .sink_offset(frame_decoder_OFF2data),
    .source_data(scaler_2_data)
);


scaler scaler_3(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(frame_decoder_dv),
    .sink_data(frame_decoder_CH3data),
    .sink_offset(frame_decoder_OFF3data),
    .source_data(scaler_3_data)
);


scaler scaler_4(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(frame_decoder_dv),
    .sink_data(frame_decoder_CH4data),
    .sink_offset(frame_decoder_OFF4data),
    .source_data(scaler_4_data)
);


// 0 (min value) * 48 (Poly_ord_0) = 0
// 128 (mid value) * 48 (Poly_ord_0) 6144		+  	8267  	=  	14411
// 128 (mid value) * 48 (Poly_ord_0) 12240
ppm_encoder ppm_encoder_1(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(scaler_1_dv),
	 .CH1_sink(scaler_1_data),
	 .CH2_sink(scaler_2_data),		
	 .CH3_sink(scaler_3_data),
	 .CH4_sink(scaler_4_data),
    .ppm_output(ppm_output)
);


// TASK DECLARATION

// ALWAYS CONSTRUCT BLOCK

// CONTINOUS ASSIGNMENT
assign uart_input_debug = uart_input;

// END OF MODULE
endmodule





