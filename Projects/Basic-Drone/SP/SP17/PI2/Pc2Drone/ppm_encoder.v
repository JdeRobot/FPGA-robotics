//================================================ START FILE HEADER ================================================
// Filename 	: ppm_encoder.v
// Design Name	: Part of SP15PI1
// Module Name : ppm_encoder
// Description : Generates ppm signal from input channels.
//================================================= VERSION CONTROL =================================================
// $Revision:  $
// $Author:  $
// $Date:  $
// $URL:  $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module ppm_encoder(
    clk,
	 reset,
    sink_data_valid,
	 CH1_sink,
	 CH2_sink,
	 CH3_sink,
	 CH4_sink,
    ppm_output
);
// GLOBAL PARAMETER DECLARATION
// LOCAL PARAMETER DECLARATION
// ************ ppm control parameters ************ //
localparam ppm_min_pulses = 15'd8261;
localparam ppm_middle_pulses = 15'd14411;
localparam ppm_max_pulses = 15'd20555;
localparam pulses_separator = 15'd3600;
// ************ state parameters ************ //
localparam A=3'd0, W=3'd1, S=3'd2, D=3'd3, SHIFT=3'd4, SPACE=3'd5, B=3'd6, IDLE = 3'd7;
localparam CHANNEL=2'd0, GENERATE_CHANNEL=2'd1, SEPARATOR=2'd2;
localparam INIT_PROTOCOL=4'd0, CH1=4'd1, CH2=4'd2, CH3=4'd3, CH4=4'd4, CH5=4'd5, CH6=4'd6; 
localparam CH7=4'd7, CH8=4'd8, CH9=4'd9, CH10=4'd10, CH11=4'd11, CH12=4'd12;


// INPUT PORT DECLARATION
input clk;
input reset;
input sink_data_valid;
input [14:0] CH1_sink, CH2_sink, CH3_sink, CH4_sink;
// OUTPUT PORT DECLARATION
output ppm_output;


// INTERNAL REGISTERS DECLARATION
// CH Variables
reg [18:0] init_pulses;
reg [14:0] throttle;
reg [14:0] aileron;
reg [14:0] elevator;
reg [14:0] rudder;
// PPM Variables
reg [18:0] pulses2count;
reg [18:0] counter;
reg ppm_output_reg;
// State Variables
reg [1:0] PPM_STATE;
reg [3:0] CHOOSE_CHANNEL;


// INTERNAL WIRE DECLARATION
// INTERNAL TRI DECLARATION
// LOCAL INTEGER DECLARATION
// LOCAL REAL DECLARATION
// LOCAL TIME DECLARATION


// TASK DECLARATION
task treset;
begin
	// Inicialización en base a sincronía con Eachine E010
	/*throttle <= ppm_min_pulses;
	aileron <= ppm_max_pulses;
	elevator <= ppm_min_pulses;
	rudder <= ppm_max_pulses;*/
	// Inicialización en base a situación previa a vuelo
	throttle <= ppm_min_pulses;
	aileron <= ppm_middle_pulses;
	elevator <= ppm_middle_pulses;
	rudder <= ppm_middle_pulses;
	init_pulses <= 19'd158519;
	pulses2count <= 19'd0;
	counter <= 19'd0;
	ppm_output_reg <= 1;
	PPM_STATE <= CHANNEL;
	CHOOSE_CHANNEL <= CH1;
end
endtask


// FUNCTON DECLARATION
// SPECIFY BLOCK DECLARATION
// INITIAL CONSTRUCT BLOCK
// COMPONENT INSTANTIATIONS
// ALWAYS CONSTRUCT BLOCK
always @(posedge clk)
begin
	if (reset) begin
		treset();
	end else begin
	
		// ************ Carga de valores de trama entrante ************ //
		if (sink_data_valid) begin
			throttle <= CH1_sink + 15'd8267;
			aileron <= CH2_sink + 15'd8267;
			elevator <= CH3_sink + 15'd8267;
			rudder <= CH4_sink + 15'd8267;
		end else begin
			throttle <= throttle;
			aileron <= aileron;
			elevator <= elevator;
			rudder <= rudder;
		end
		
		// ************ Mantenimiento del PPM ************ //
		case(PPM_STATE)
		
			CHANNEL: begin
				case(CHOOSE_CHANNEL)
					CH1: begin
						pulses2count <= throttle;
						CHOOSE_CHANNEL <= CH2;
						init_pulses <= init_pulses + throttle;
					end
					CH2: begin
						pulses2count <= aileron;
						CHOOSE_CHANNEL <= CH3;
						init_pulses <= init_pulses + aileron;
					end
					CH3: begin
						pulses2count <= elevator;
						CHOOSE_CHANNEL <= CH4;
						init_pulses <= init_pulses + elevator;
					end
					CH4: begin
						pulses2count <= rudder;
						CHOOSE_CHANNEL <= CH5;
						init_pulses <= init_pulses + rudder;
					end
					CH5: begin
						pulses2count <= ppm_min_pulses;
						CHOOSE_CHANNEL <= CH6;
						init_pulses <= init_pulses + ppm_min_pulses;
					end
					CH6: begin
						pulses2count <= ppm_min_pulses;
						CHOOSE_CHANNEL <= CH7;
						init_pulses <= init_pulses + ppm_min_pulses;
					end
					CH7: begin
						pulses2count <= ppm_middle_pulses;
						CHOOSE_CHANNEL <= CH8;
						init_pulses <= init_pulses + ppm_min_pulses;
					end
					CH8: begin
						pulses2count <= ppm_middle_pulses;
						CHOOSE_CHANNEL <= CH9;
						init_pulses <= init_pulses + ppm_min_pulses;
					end
					CH9: begin
						pulses2count <= ppm_middle_pulses;
						CHOOSE_CHANNEL <= CH10;
						init_pulses <= init_pulses + ppm_min_pulses;
					end
					CH10: begin
						pulses2count <= ppm_middle_pulses;
						CHOOSE_CHANNEL <= CH11;
						init_pulses <= init_pulses + ppm_min_pulses;
					end
					CH11: begin
						pulses2count <= ppm_middle_pulses;
						CHOOSE_CHANNEL <= CH12;
						init_pulses <= init_pulses + ppm_min_pulses;
					end
					CH12: begin
						pulses2count <= ppm_middle_pulses;
						CHOOSE_CHANNEL <= INIT_PROTOCOL;
						//init_pulses <= (19'd366195) - ( 19'd46800 + init_pulses + ppm_middle_pulses);
						init_pulses <= (19'd319395 - init_pulses - ppm_middle_pulses);
					end
					INIT_PROTOCOL: begin
						pulses2count <= init_pulses;
						CHOOSE_CHANNEL <= CH1;
						//init_pulses <= 19'd366195;
					end
				endcase
				PPM_STATE <= SEPARATOR;
			end
			
			SEPARATOR: begin
				if (counter == pulses_separator-2) begin
					counter <= 0;
					PPM_STATE <= GENERATE_CHANNEL;
				end else begin
					counter <= counter + 1;
					PPM_STATE <= SEPARATOR;
					ppm_output_reg <= 0;
				end
			end
			
			GENERATE_CHANNEL: begin
				if ( counter == pulses2count) begin
					counter <= 0;
					PPM_STATE <= CHANNEL;
					if ( CHOOSE_CHANNEL == CH1 ) begin
						init_pulses <= 19'd0;
					end
				end else begin
					counter <= counter + 1;
					PPM_STATE <= GENERATE_CHANNEL;
					ppm_output_reg <= 1;
				end
			end
			
		endcase
		
	 end
end


// CONTINOUS ASSIGNMENT
assign ppm_output = ppm_output_reg;


// END OF MODULE
endmodule


