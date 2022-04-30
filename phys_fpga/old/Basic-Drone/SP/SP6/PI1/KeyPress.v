//================================================ START FILE HEADER ================================================
// Design Name : 	P...
// File Name   : 	KeyPress.v
// Function    : 	Codes input byte at output
// Description	: 	
// Mod			:	
//================================================= VERSION CONTROL =================================================
// $Revision:  $
// $Author:  Eloy Navarro Morales $
// $Date:  $
// $URL:  $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module KeyPress (
	// **************** System Inputs **************** //
	reset, clk,
	// **************** DSP Inputs **************** //
	sink_data_ready, sink_data,
	// **************** SPI I/Os **************** //
	source_data_ready, source_data,
	// **************** Debug probes **************** //
);


// GLOBAL PARAMETER DECLARATION
// LOCAL PARAMETER DECLARATION
localparam K_a=8'd97, K_w=8'd119, K_s=8'd115, K_d=8'd100, K_LSHIFT=8'd91, K_SPACE=8'd93, K_b=8'd98; // Assuming Tx of d91 on left shift keypress and Tx of d93 on space keypress


// INPUT PORT DECLARATION
input	reset, clk;
input	sink_data_ready;
input	[7:0] sink_data;
// OUTPUT PORT DECLARATION
output reg source_data_ready;
output reg [2:0] source_data;


// INTERNAL REGISTERS DECLARATION
//(* syn_encoding = "safe" *) reg [2:0] state;
//reg [47:0] buffer;


// WIRES DECLARATION
//wire [47:0] buffer_wire;
//assign buffer_wire = {sink_Q, sink_Freq};


// TASK DECLARATION
task treset;
begin 
	source_data_ready <= 0;
	source_data <= 0;
end 
endtask


// ======================= Main Logic ======================= //
always @(posedge clk)
begin
	if (reset) begin
		treset();
	end else begin
	
		if (sink_data_ready) begin
		
			case (sink_data)
			
				K_a: begin
					source_data <= 3'd0;
					source_data_ready <= 1;
				end
			
				K_w: begin
					source_data <= 3'd1;
					source_data_ready <= 1;
				end
			
				K_s: begin
					source_data <= 3'd2;
					source_data_ready <= 1;
				end
			
				K_d: begin
					source_data <= 3'd3;
					source_data_ready <= 1;
				end
			
				K_LSHIFT: begin
					source_data <= 3'd4;
					source_data_ready <= 1;
				end
			
				K_SPACE: begin
					source_data <= 3'd5;
					source_data_ready <= 1;
				end
			
				K_b: begin
					source_data <= 3'd6;
					source_data_ready <= 1;
				end
				
				default: begin
					source_data <= source_data;
					source_data_ready <= 0;
				end
				
			endcase
			
		end else begin
			source_data <= source_data;
			source_data_ready <= 0;
		end
		
		
		// --------- Debug probes --------- //
	end
end
endmodule






