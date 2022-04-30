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
	output debug_CH0_16A,	// Solo para debug
	output debug_CH1_0A,		// Solo para debug
	output debug_CH2_18A,	// Solo para debug
	output debug_CH3_20A,	// Solo para debug
	output debug_CH4_2A,		// Solo para debug
	output debug_CH5_31B,	// Solo para debug
	output debug_CH6_5B,		// Solo para debug
	output ppm_output
);

// INPUT/OUTPUT PORT DECLARATION
// LOCAL PARAMETER DECLARATION
localparam ppm_min_pulses = 15'd8261;
localparam ppm_middle_pulses = 15'd14411;
localparam ppm_max_pulses = 15'd20555;
// INTERNAL REGISTERS DECLARATION	


// WIRES DECLARATION
// ************ System Inputs ************ //
wire reset_system,clk_system_pll;
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
wire [7:0] alt_command;
wire [7:0] front_command;
wire [7:0] side_command;
wire [7:0] frame_decoder_CH4data;
wire [7:0] alt_kp;
wire [7:0] alt_ki;
wire [7:0] alt_kd;
wire [7:0] xy_kp;
wire [7:0] xy_ki;
wire [7:0] xy_kd;
wire [7:0] frame_decoder_OFF4data;
// ************ Entre Scalers y PPM Encoder ************ //
wire pid_altitude_dv;
wire [14:0] throttle_order;
wire [14:0] front_order;
wire [14:0] side_order;
wire [14:0] scaler_4_data;
// ************ Entre drone frame decoder y PIDs ************ //
wire drone_frame_decoder_data_rdy;
wire [15:0] drone_H_disp_front;
wire [15:0] drone_H_disp_side;
wire [15:0] drone_altitude;

	 

// MODULES INSTANTIATIONS
// ************************ SYSTEM MODULES ************************ //
Pc2drone_pll Pc2drone_pll_inst(.PACKAGEPIN(clk_system),
                               .PLLOUTCORE(clk_system_pll),
                               .RESET(1'd1));


reset_module reset_module_System(
    .clk(clk_system_pll),
    .reset(reset_system)
);


// ************************ PC COMMANDS ************************ //
dff_v_ncycle uart_pc_sync(
    .Q(uart_input_pc_sync),
    .D(uart_input_pc),
    .clk(clk_system_pll)
);

defparam uart_pc.BR_PERIOD = 24;
defparam uart_pc.BR_PERIOD_HALF = 12;
uart_rx uart_pc(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sdin(uart_input_pc_sync),
    .data(uart_pc_data),
    .data_rdy(uart_pc_data_rdy)
);

frame_decoder Commands_frame_decoder(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sink_data_valid(uart_pc_data_rdy),
    .sink_data(uart_pc_data),
    .source_data_valid(pc_frame_decoder_dv),
    .source_CH1data(alt_command),
    .source_CH2data(side_command),
    .source_CH3data(front_command),
    .source_CH4data(frame_decoder_CH4data),
    .source_alt_kp(alt_kp),
    .source_alt_ki(alt_ki),
    .source_alt_kd(alt_kd),
    .source_xy_kp(xy_kp),
    .source_xy_ki(xy_ki),
    .source_xy_kd(xy_kd),
    .source_offset4data(frame_decoder_OFF4data)
);


// ************************ OPEN LOOP CONTROLS ************************ //
scaler scaler_4(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sink_data_valid(pc_frame_decoder_dv),
    .sink_data(frame_decoder_CH4data),
    .sink_offset(frame_decoder_OFF4data),
    .source_data(scaler_4_data)
);


// ************************ DRONE FRAME DECODER ************************ //
dff_v_ncycle uart_drone_sync(
    .Q(uart_input_drone_sync),
    .D(uart_input_drone),
    .clk(clk_system_pll)
);

defparam uart_drone.BR_PERIOD = 24;
defparam uart_drone.BR_PERIOD_HALF = 12;
uart_rx uart_drone(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sdin(uart_input_drone_sync),
    .data(uart_drone_data),
    .data_rdy(uart_drone_data_rdy)
);

frame_dron_decoder dron_frame_decoder_1(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sink_data_valid(uart_drone_data_rdy),
    .sink_data(uart_drone_data),
    .source_data_valid(drone_frame_decoder_data_rdy),
    .source_H_disp_front(drone_H_disp_front),
    .source_H_disp_side(drone_H_disp_side),
    .source_Altitude(drone_altitude)
);



// ************************ PIDs ************************ //
// PID: X: Frontal Displacement
pid_horizontal pid_front(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sink_data_valid(drone_frame_decoder_data_rdy),
    .sink_command(front_command),	// Default Mid value = 128 equals zero
    .sink_kp(xy_kp),
    .sink_ki(xy_ki),
    .sink_kd(xy_kd),
    .sink_data(drone_H_disp_front),
    .source_pid(front_order)
);
// PID: Y: Side Displacement
pid_horizontal pid_side(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sink_data_valid(drone_frame_decoder_data_rdy),
    .sink_command(side_command),		// Default Mid value = 128 equals zero
    .sink_kp(xy_kp),
    .sink_ki(xy_ki),
    .sink_kd(xy_kd),
    .sink_data(drone_H_disp_side),
    .source_pid(side_order)
);
// PID: Altura
pid_altitude pid_alt(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sink_data_valid(drone_frame_decoder_data_rdy),
    .sink_command(alt_command),		// Default Min value = 0 equals zero
    .sink_kp(alt_kp),
    .sink_ki(alt_ki),
    .sink_kd(alt_kd),
    .sink_data(drone_altitude),
    .source_data_valid(pid_altitude_dv),
    .source_pid(throttle_order)
);


// ************************ PPM ************************ //
// Desired input range = [ 0 , 12240 ]
// 0 (min value) * 48 (Poly_ord_0) + 8267 = 8267
// 128 (mid value) * 48 (Poly_ord_0) 6144	+ 8267 = 14411
// 255 (max value) * 48 (Poly_ord_0) 12240 + 8267 = 20507
ppm_encoder ppm_encoder_1(
    .reset(reset_system),
    .clk(clk_system_pll),
    .sink_data_valid(pid_altitude_dv),
	 .CH1_sink(throttle_order),			// Altura
	 //.CH2_sink(front_order),				// Delante/Detras
	 //.CH3_sink(side_order),				// Derecha/Izquierda
	 .CH2_sink(side_order),					// Delante/Detras
	 .CH3_sink(front_order),				// Derecha/Izquierda
	 .CH4_sink(scaler_4_data),
    .ppm_output(ppm_output)
);



// TASK DECLARATION
// ALWAYS CONSTRUCT BLOCK
// CONTINOUS ASSIGNMENT
// ************************ DEBUG PROBES ************************ //
assign debug_CH0_16A = uart_input_drone_sync;
assign debug_CH1_0A = drone_frame_decoder_data_rdy;
assign debug_CH2_18A = uart_input_pc_sync;
assign debug_CH3_20A = pc_frame_decoder_dv;
assign debug_CH4_2A = 0;
assign debug_CH5_31B = 0;
assign debug_CH6_5B = 0;


// END OF MODULE
endmodule





