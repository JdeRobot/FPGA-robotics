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
module pid 
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input	reset,
	input	clk,
	input	sink_data_valid,
	input	signed [7:0] sink_command,
	input	signed [15:0] sink_data,
	input	signed [7:0] sink_kp,
// OUTPUT PORT DECLARATION
	output reg source_data_valid,
	output reg signed [14:0] source_data
);

// INPUT/OUTPUT PORT DECLARATION
// LOCAL PARAMETER DECLARATION
// ======================= State machine Parameters ======================= //

// INTERNAL REGISTERS DECLARATION

// WIRES DECLARATION

// TASK DECLARATION
task treset;
begin
	source_data_valid <= 0;
	source_data <= 15'd0;
end
endtask

// ALWAYS CONSTRUCT BLOCK
always @(posedge clk)
begin
	if (reset) begin
		treset();
	end else begin
		if (sink_data_valid) begin
			source_data <= (sink_command-sink_data) * sink_kp;
			source_data_valid <= 1;
		end else begin
			source_data <= source_data;
			source_data_valid <= 0;
		end
	end
end

// CONTINOUS ASSIGNMENT

// END OF MODULE
endmodule





