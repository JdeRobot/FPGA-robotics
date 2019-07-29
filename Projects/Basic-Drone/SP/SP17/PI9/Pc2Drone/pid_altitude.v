//================================================ START FILE HEADER ================================================
// Filename : pid.v
// Module Name : pid
// Module ID : Part of SP17PI2
// Description : Computes pid control.
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module pid_altitude 
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input	reset,
	input	clk,
	input	sink_data_valid,
	input [7:0] sink_command,				// [ 0 , 255 ]
	input	signed [15:0] sink_data,		// [ 0 , 5000 ] Assumed Tops at 5m.
	input [7:0] sink_kp,						// [ 0 , 255 ]
	input [7:0] sink_ki,						// [ 0 , 255 ]
	input [7:0] sink_kd,						// [ 0 , 255 ]
// OUTPUT PORT DECLARATION
	output reg source_data_valid,
	output reg signed [14:0] source_pid	// [ 0 , 12240 ]
);

// INPUT/OUTPUT PORT DECLARATION


// LOCAL PARAMETER DECLARATION
localparam zeros4 = 4'd0;
//localparam alpha = 32'sd800;	// 0=0 1=1024
// ======================= State machine Parameters ======================= //
localparam S_WF_DV = 3'd0, S_1_STAGE = 3'd1, S_2_STAGE = 3'd2;


// INTERNAL REGISTERS DECLARATION
reg [2:0] state;
reg signed [31:0] error_i_acumm;
reg signed [31:0] error_p_reg;
reg signed [31:0] error_i_reg;
reg signed [31:0] error_i_acumm_prereg;
reg signed [31:0] error_d_prereg;
reg signed [31:0] error_d_reg;
reg signed [31:0] error_d_reg_prev;
reg signed [31:0] pid_prereg;
//reg signed [31:0] error_filt_prev;


// WIRES DECLARATION
wire signed [15:0] sink_command_scaled;	// [ 0 , 4080 ]
wire signed [15:0] error;						// [ -5000 , 4080 ]
wire signed [15:0] sink_kp_signed;			// [ 0 , 255 ]
wire signed [15:0] sink_ki_signed;			// [ 0 , 255 ]
wire signed [15:0] sink_kd_signed;			// [ 0 , 255 ]
wire signed [31:0] error_i_prescaled;		// [ -1.275.000 , 1.040.400 ]
wire signed [31:0] error_i;					// [ -79.687 , 65.025 ]
wire signed [31:0] error_filt;


// CONTINOUS ASSIGNMENT
// ****** Error Computing ****** //
assign sink_command_scaled = {zeros4, sink_command, zeros4};	// Scale sink_command x16 into sink_command_scaled
assign error = sink_command_scaled - sink_data;						// Computes error
// ****** PID Params Scaling ****** //
assign sink_kp_signed = {zeros4, zeros4, sink_kp};					// Signs Kp value
assign sink_ki_signed = {zeros4, zeros4, sink_ki};					// Signs Ki value
assign sink_kd_signed = {zeros4, zeros4, sink_kd};					// Signs Kd value
// ****** Error Pre-Filter ****** //
//assign error_filt = ((alpha*error)>>>10)+(((32'sd1024-alpha)*error_filt_prev)>>>10);


// TASK DECLARATION
task treset;
begin
	source_data_valid <= 0;
	source_pid <= 15'd0;
	error_i_acumm <= 0;
	error_p_reg <= 0;
	error_i_reg <= 0;
	error_d_reg <= 0;
	error_d_reg_prev <= 0;
	error_i_acumm_prereg <= 0;
	error_d_prereg <= 0;
	pid_prereg <= 0;
	//error_filt_prev <= 0;
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
					// ********** Update Error ********** //
					//error_filt_prev <= error_filt;
					// ********** P ********** //
					error_p_reg <= ((sink_kp_signed*error)>>>4);
					// ********** I ********** //
					error_i_reg <= ((sink_ki_signed*error)>>>4);
					// ********** D ********** //
					//error_d_reg <= ((sink_kd_signed*error_filt)>>>4);
					error_d_reg <= ((sink_kd_signed*error)>>>4);
					// ********** STATE ********** //
					state <= S_1_STAGE;
				end else begin
					state <= S_WF_DV;
				end
				source_data_valid <= 0;
			end
			
			S_1_STAGE: begin	// 1
				state <= S_2_STAGE;	
				// ********** Computes I ********** //
				if (sink_command>10) begin
					if (sink_command_scaled < sink_data) begin
						error_i_acumm_prereg <= error_i_acumm_prereg;
						// ********** Computes D ********** //
						error_d_reg_prev <= error_d_reg;
						// ********** Add Errors ********** //
						pid_prereg <= error_p_reg + (error_i_acumm + error_i_reg) + (error_d_reg - error_d_reg_prev);
					end else begin
						error_i_acumm_prereg <= error_i_acumm + error_i_reg;
						// ********** Computes D ********** //
						error_d_reg_prev <= error_d_reg;
						// ********** Add Errors ********** //
						pid_prereg <= error_p_reg + (error_i_acumm + error_i_reg) + (error_d_reg - error_d_reg_prev);
					end
				end else begin
					error_i_acumm_prereg <= error_i_acumm + error_i_reg;
					// ********** Computes D ********** //
					error_d_reg_prev <= error_d_reg;
					// ********** Add Errors ********** //
					pid_prereg <= error_p_reg + (error_i_acumm + error_i_reg) + (error_d_reg - error_d_reg_prev);
				end
			end
			
			S_2_STAGE: begin	// 2
				state <= S_WF_DV;	
				// ********** Limits I ********** //
				if (error_i_acumm_prereg>32'sd0 && error_i_acumm_prereg<=32'sd12240) begin
					error_i_acumm <= error_i_acumm_prereg;
				end else begin
					if (error_i_acumm_prereg>32'sd12240) begin
						error_i_acumm <= 32'sd12240;
					end else begin
						error_i_acumm <= 32'sd0;
					end
				end
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









/*********** USEFUL CODE ***********


if (sink_data_valid) begin
	/*if ( (error_p<12240) && (error_p>0) ) begin
		source_pid <= error_p;	// [ 0 , 12240 ]
	end else begin
		if ((error_p<=0)) begin
			source_pid <= 15'd0;
		end else begin
			source_pid <= 15'd12240;
		end
	end*/
/*	// Computes Integral Error
	error_i_acumm <= error_i_acumm + error_i;
	// Add Errors
	source_pid <= error_i_acumm + error_p + error_i;
	source_data_valid <= 1;
end else begin
	source_pid <= source_pid;
	source_data_valid <= 0;
end



S_2_STAGE: begin	// 2
	state <= S_WF_DV;
end
*/


