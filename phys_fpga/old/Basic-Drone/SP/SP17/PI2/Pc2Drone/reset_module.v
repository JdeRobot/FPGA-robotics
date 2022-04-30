//================================================ START FILE HEADER ================================================
// Filename : reset_module.v
// Module Name : reset_module
// Module ID : Part of SP12PI1
// Description : Generates reset signal.
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module reset_module 
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input	clk,
// OUTPUT PORT DECLARATION
	output reg reset
);

// INPUT/OUTPUT PORT DECLARATION

// LOCAL PARAMETER DECLARATION

// INTERNAL REGISTERS DECLARATION
reg [21:0] count = 21'd0;

// WIRES DECLARATION

// TASK DECLARATION


// ALWAYS CONSTRUCT BLOCK
always @(posedge clk)
begin
	if (count == 22'd1200051) begin
		reset <= 0;
		count <= count;
	end else begin
		reset <= 1;
		count <= count + 22'd1;
	end
end // always end


// CONTINOUS ASSIGNMENT

// END OF MODULE
endmodule





