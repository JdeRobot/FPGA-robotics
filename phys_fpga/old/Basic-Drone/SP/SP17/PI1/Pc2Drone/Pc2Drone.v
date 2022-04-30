//================================================ START FILE HEADER ================================================
// Filename : Pc2dronee.v
// Module Name : Pc2drone
// Module ID : SP12PI1
// Description : Main Pc2drone file.
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module Pc2drone
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input clk_system,
	input uart_input_pc,
	input uart_input_drone,
// OUTPUT PORT DECLARATION
	output uart_input_debug,	// Solo para debug
	output uart_data_rdy_debug,// Solo para debug
	output drone_frame_decoder_data_rdy_debug,// Solo para debug
	output ppm_output
);


// INPUT/OUTPUT PORT DECLARATION
// LOCAL PARAMETER DECLARATION
localparam ppm_min_pulses = 15'd8261;
localparam ppm_middle_pulses = 15'd14411;
localparam ppm_max_pulses = 15'd20555;
// INTERNAL REGISTERS DECLARATION	


// WIRES DECLARATION
// ************ Gen�ricas al Sistema ************ //
wire reset_system;
// ************ Entre Sync y UART ************ //
wire uart_input_pc_sync;
wire uart_input_drone_sync;
// ************ Entre UART PC y FrameDecoder ************ //
wire uart_pc_data_rdy;
wire [7:0] uart_pc_data;
// ************ Entre UART drone y FrameDecoder ************ //
wire uart_drone_data_rdy;
wire [7:0] uart_drone_data;
// ************ Entre FrameDecoder y Scalers ************ //
wire pc_frame_decoder_dv;
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
// ************ Entre drone frame decoder y PIDs ************ //
wire drone_frame_decoder_data_rdy;
wire [15:0] drone_H_disp_front;
wire [15:0] drone_H_disp_side;
wire [15:0] drone_Altitude;

	 

// MODULES INSTANTIATIONS
reset_module reset_module_System(
    .clk(clk_system),
    .reset(reset_system)
);


dff_v_ncycle uart_pc_sync(
    .Q(uart_input_pc_sync),
    .D(uart_input_pc),
    .clk(clk_system)
);


dff_v_ncycle uart_drone_sync(
    .Q(uart_input_drone_sync),
    .D(uart_input_drone),
    .clk(clk_system)
);

defparam uart_pc.BR_PERIOD = 24;
defparam uart_pc.BR_PERIOD_HALF = 12;
uart_rx uart_pc(
    .reset(reset_system),
    .clk(clk_system),
    .sdin(uart_input_pc_sync),
    .data(uart_pc_data),
    .data_rdy(uart_pc_data_rdy)
);

defparam uart_drone.BR_PERIOD = 24;
defparam uart_drone.BR_PERIOD_HALF = 12;
uart_rx uart_drone(
    .reset(reset_system),
    .clk(clk_system),
    .sdin(uart_input_drone_sync),
    .data(uart_drone_data),
    .data_rdy(uart_drone_data_rdy)
);


frame_decoder uart_frame_decoder(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(uart_pc_data_rdy),
    .sink_data(uart_pc_data),
    .source_data_valid(pc_frame_decoder_dv),
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
    .sink_data_valid(pc_frame_decoder_dv),
    .sink_data(frame_decoder_CH1data),
    .sink_offset(frame_decoder_OFF1data),
    .source_data_valid(scaler_1_dv),
    .source_data(scaler_1_data)
);


scaler scaler_2(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(pc_frame_decoder_dv),
    .sink_data(frame_decoder_CH2data),
    .sink_offset(frame_decoder_OFF2data),
    .source_data(scaler_2_data)
);


scaler scaler_3(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(pc_frame_decoder_dv),
    .sink_data(frame_decoder_CH3data),
    .sink_offset(frame_decoder_OFF3data),
    .source_data(scaler_3_data)
);


scaler scaler_4(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(pc_frame_decoder_dv),
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


frame_dron_decoder frame_dron_decoder_1(
    .reset(reset_system),
    .clk(clk_system),
    .sink_data_valid(uart_drone_data_rdy),
    .sink_data(uart_drone_data),
    .source_data_valid(drone_frame_decoder_data_rdy),
    .source_H_disp_front(drone_H_disp_front),
    .source_H_disp_side(drone_H_disp_side),
    .source_Altitude(drone_Altitude)
);


// TASK DECLARATION

// ALWAYS CONSTRUCT BLOCK

// CONTINOUS ASSIGNMENT
//assign uart_input_debug = uart_input_drone;
assign uart_input_debug = uart_input_drone_sync;
assign uart_data_rdy_debug = uart_drone_data_rdy;
assign drone_frame_decoder_data_rdy_debug = drone_frame_decoder_data_rdy;

// END OF MODULE
endmodule





