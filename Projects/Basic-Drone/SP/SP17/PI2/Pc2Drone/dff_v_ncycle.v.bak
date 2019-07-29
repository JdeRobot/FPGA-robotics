//================================================ START FILE HEADER ================================================
// Filename 	: dff_v_ncycle.v
// Design Name	: SP14PI1
// Module Name : dff_v_ncycle
// Description : Data Flip flop, Variable width and cycles
//================================================= VERSION CONTROL =================================================
// $Revision:  $
// $Author:  $
// $Date:  $
// $URL:  $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module dff_v_ncycle (
	Q,   // Output Data
	D,   // Input Data
	clk // clk
);
// GLOBAL PARAMETER DECLARATION
parameter Depth	= 14;
parameter nCycles	= 3;
// LOCAL PARAMETER DECLARATION
localparam internal_nCycles = (nCycles-2);
// INPUT PORT DECLARATION
input [(Depth-1):0] D;
input clk;
// OUTPUT PORT DECLARATION
output reg [(Depth-1):0] Q;
// INPUT/OUTPUT PORT DECLARATION
// INTERNAL REGISTERS DECLARATION
reg unsigned [(Depth-1):0] aux [internal_nCycles:0];
reg unsigned [31:0] i;
// INTERNAL WIRE DECLARATION
// INTERNAL TRI DECLARATION
// LOCAL INTEGER DECLARATION
// LOCAL REAL DECLARATION
// LOCAL TIME DECLARATION
// TASK DECLARATION
// FUNCTON DECLARATION
// SPECIFY BLOCK DECLARATION
// INITIAL CONSTRUCT BLOCK
// COMPONENT INSTANTIATIONS
// ALWAYS CONSTRUCT BLOCK
always @ (posedge clk)
	begin
		
		aux[0] <= D;
		for (i=0;i<internal_nCycles;i=i+1) begin
			aux[(i+1)] <= aux[i];
		end
		Q <= aux[internal_nCycles];
		
	end
// CONTINOUS ASSIGNMENT
// END OF MODULE
endmodule
