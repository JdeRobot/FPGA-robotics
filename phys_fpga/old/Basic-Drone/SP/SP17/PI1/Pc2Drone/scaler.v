//================================================ START FILE HEADER ================================================
// Filename : scaler.v
// Module Name : scaler
// Module ID : Part of SP15PI1
// Description : Multiplies input value sink_data plus fixed value, outputing source_data=sink_data*constant_mult;
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module scaler 
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input	reset,
	input	clk,
	input	sink_data_valid,
	input	[7:0]	sink_data,
	input	[7:0]	sink_offset,
// OUTPUT PORT DECLARATION
	output reg source_data_valid,
	output reg [14:0] source_data
);

// INPUT/OUTPUT PORT DECLARATION
// LOCAL PARAMETER DECLARATION
// ======================= State machine Parameters ======================= //
localparam CONSTANT_VAL = 15'd48;

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
			source_data <= (sink_data+sink_offset-8'd128) * CONSTANT_VAL;
			//source_data <= sink_data * CONSTANT_VAL + sink_offset;	// Usar esta si el offset actual resuelve poco.
			source_data_valid <= 1;
		end else begin
			source_data <= source_data;
			source_data_valid <= 0;
		end
	end // reset end
end // always end


// CONTINOUS ASSIGNMENT

// END OF MODULE
endmodule





