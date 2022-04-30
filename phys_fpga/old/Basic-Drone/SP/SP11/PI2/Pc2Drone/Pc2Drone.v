//================================================ START FILE HEADER ================================================
// Filename : Pc2Drone.v
// Module Name : Pc2Drone
// Module ID : SP11PI2
// Description : Main Pc2Drone file.
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module Pc2Drone 
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input clk_system,
	input uart_input,
// OUTPUT PORT DECLARATION
	output data_rdy,
	output [7:0] data,
	output uart_input_debug
);

// INPUT/OUTPUT PORT DECLARATION



// LOCAL PARAMETER DECLARATION
// ======= State machine Parameters ======= //

// INTERNAL REGISTERS DECLARATION	
reg [31:0] count;
reg reset_system = 0;


// MODULES INSTANTIATIONS
uart_rx uart(
    .reset(reset_system),
    .clk(clk_system),
    .sdin(uart_input),
    .data(data),
    .data_rdy(data_rdy)
);


// TASK DECLARATION

// ALWAYS CONSTRUCT BLOCK
/*always @(posedge clk)
begin
	if (count < 100) begin
		count <= count + 32'd1;
	end else begin
		count <= 32'd0;
		test <= ~test;
	end
end // always end*/


// CONTINOUS ASSIGNMENT
assign uart_input_debug = uart_input;

// END OF MODULE
endmodule





