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
// OUTPUT PORT DECLARATION
	output reg source_data_valid,
	output reg signed [14:0] source_pid	// [ 0 , 12240 ]
);

// INPUT/OUTPUT PORT DECLARATION


// LOCAL PARAMETER DECLARATION
localparam zeros4 = 4'd0;
// ======================= State machine Parameters ======================= //
localparam S_WF_DV = 3'd0, S_1_STAGE = 3'd1, S_2_STAGE = 3'd2;


// INTERNAL REGISTERS DECLARATION
reg [2:0] state;
reg signed [31:0] error_i_acumm;
reg signed [31:0] error_p_reg;
reg signed [31:0] error_i_reg;
reg signed [31:0] error_i_acumm_prereg;
reg signed [31:0] pid_prereg;


// WIRES DECLARATION
wire signed [15:0] sink_command_scaled;	// [ 0 , 4080 ]
wire signed [15:0] error;						// [ -5000 , 4080 ]
wire signed [15:0] sink_kp_signed;			// [ 0 , 255 ]
wire signed [15:0] sink_ki_signed;			// [ 0 , 255 ]
wire signed [31:0] error_p_prescaled;		// [ -1.275.000 , 1.040.400 ]
wire signed [31:0] error_p;					// [ -79.687 , 65.025 ]
wire signed [31:0] error_i_prescaled;		// [ -1.275.000 , 1.040.400 ]
wire signed [31:0] error_i;					// [ -79.687 , 65.025 ]


// CONTINOUS ASSIGNMENT
// ****** Error Computing ****** //
assign sink_command_scaled = {zeros4, sink_command, zeros4};	// Scale sink_command x16 into sink_command_scaled
assign error = sink_command_scaled - sink_data;						// Computes error
// ****** PID Params Scaling ****** //
assign sink_kp_signed = {zeros4, zeros4, sink_kp};					// Signs Kp value
assign sink_ki_signed = {zeros4, zeros4, sink_ki};					// Signs Ki value
// ****** P Parameter Computing ****** //
assign error_p_prescaled = (error * sink_kp_signed);				// Computes proportional error
//assign error_p = {error_p_prescaled[31],error_p_prescaled[31],error_p_prescaled[31],error_p_prescaled[31], error_p_prescaled[31:4]};	// Equals to >>4, scaling error to Kp/16
assign error_p = error_p_prescaled >>> 4;					// Equals to >>4, scaling error to Kp/16



// TASK DECLARATION
task treset;
begin
	source_data_valid <= 0;
	source_pid <= 15'd0;
	error_i_acumm <= 0;
	error_p_reg <= 0;
	error_i_reg <= 0;
	error_i_acumm_prereg <= 0;
	pid_prereg <= 0;
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
					error_p_reg <= error_p;
					// ********** I ********** //
					error_i_reg <= ((sink_ki_signed*error)>>>4);
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
				error_i_acumm_prereg <= error_i_acumm + error_i_reg;		
				// ********** Add Errors ********** //
				pid_prereg <= error_p_reg + error_i_acumm + error_i_reg;
			end
			
			S_2_STAGE: begin	// 2
				state <= S_WF_DV;	
				// ********** Computes I ********** //
				if (error_i_acumm_prereg>32'sd0 && error_i_acumm_prereg<=32'sd12240) begin
					error_i_acumm <= error_i_acumm_prereg;
				end else begin
					if (error_i_acumm_prereg>32'sd12240) begin
						error_i_acumm <= 32'sd12240;
					end else begin
						error_i_acumm <= 32'sd0;
					end
				end
				// ********** Add Errors ********** //
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


