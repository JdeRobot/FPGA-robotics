//================================================ START FILE HEADER ================================================
// Filename : pid_horizontal.v
// Module Name : pid_horizontal
// Module ID : Part of SP17PI5
// Description : Computes pid control for horizonal axis XY.
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module pid_horizontal 
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input	reset,
	input	clk,
	input	sink_data_valid,
	input [7:0] sink_command,				// [ 0 , 255 ]	Assuming 128 = 0 Velocity commanded
	input	signed [15:0] sink_data,		// [ -32768 , 32767 ]
	input [7:0] sink_kp,						// [ 0 , 255 ]
	input [7:0] sink_ki,						// [ 0 , 255 ]
	input [7:0] sink_kd,						// [ 0 , 255 ]
// OUTPUT PORT DECLARATION
	output reg source_data_valid,
	output reg signed [14:0] source_pid	// [ 0 , 12240 ]
);

// INPUT/OUTPUT PORT DECLARATION


// LOCAL PARAMETER DECLARATION
localparam zeros4 = 4'sd0;
// ======================= State machine Parameters ======================= //
localparam S_WF_DV = 2'd0, S_1_STAGE = 2'd1, S_2_STAGE = 2'd2;


// INTERNAL REGISTERS DECLARATION
reg [1:0] state;
reg signed [31:0] error_p_reg;
reg signed [31:0] pid_prereg;
reg signed [31:0] error_d_reg;
reg signed [31:0] error_d_reg_prev;


// WIRES DECLARATION
wire signed [15:0] sink_command_scaled;	// [ 0 , 4080 ]	Assuming 128*16 (2048) = 0 Velocity commanded
wire signed [15:0] error;						// [ -34816 , 34799 ]
wire signed [15:0] sink_kp_signed;			// [ 0 , 255 ]
wire signed [15:0] sink_kd_signed;			// [ 0 , 255 ]


// CONTINOUS ASSIGNMENT
// ****** Error Computing ****** //
assign sink_command_scaled = {zeros4, sink_command, zeros4};	// Scale sink_command x16 into sink_command_scaled
assign error = sink_command_scaled - 16'sd2048 - sink_data;						// Computes error
// ****** PID Params Scaling ****** //
assign sink_kp_signed = {zeros4, zeros4, sink_kp};					// Signs Kp value
assign sink_kd_signed = {zeros4, zeros4, sink_kd};					// Signs Kd value


// TASK DECLARATION
task treset;
begin
	source_data_valid <= 0;
	source_pid <= 15'd0;
	error_p_reg <= 0;
	pid_prereg <= 0;
	error_d_reg <= 0;
	error_d_reg_prev <= 0;
	state <= S_WF_DV;
end
endtask


// ALWAYS CONSTRUCT BLOCK
always @(posedge clk)
begin
	if (reset) begin
		treset();
	end else begin
		case (state)
			S_WF_DV: begin		// 0
				if (sink_data_valid) begin
					// ********** P ********** //
					error_p_reg <= ((sink_kp_signed*error)>>>4);
					// ********** D ********** //
					error_d_reg <= ((sink_kd_signed*error)>>>4);
					// ********** STATE ********** //
					state <= S_1_STAGE;
				end else begin
					state <= S_WF_DV;
				end
				source_data_valid <= 0;
			end
			
			S_1_STAGE: begin	// 1
				// ********** Computes D ********** //
				error_d_reg_prev <= error_d_reg;
				// ********** Add Errors ********** //
				pid_prereg <= error_p_reg + 32'sd6114 + (error_d_reg - error_d_reg_prev);
				// ********** STATE ********** //
				state <= S_2_STAGE;
			end
			
			S_2_STAGE: begin	// 2
				state <= S_WF_DV;	
				// ********** Outputs Errors ********** //
				if ( pid_prereg>32'sd0 && pid_prereg<32'sd12240 ) begin
					source_pid <= pid_prereg;
				end else begin
					if ( pid_prereg > 32'sd12240 ) begin
						source_pid <= 15'd12240;
					end else begin
						source_pid <= 0;
					end
				end
				source_data_valid <= 1;
			end
			
			default: begin
				treset();
			end
		endcase
	end
end


// END OF MODULE
endmodule
