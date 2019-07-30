//================================================ START FILE HEADER ================================================
// Design Name : 	serializer_SPI
// File Name   : 	serializer_SPI.v
// Function    : 	Picks 8Bytes packages as input and serializes it on output @ 4Mbps with a 4Mhz synchronous clk signal.
// Description	: 	On every sink_DataValid assertion, samples sink_Data input Byte, and send it LSb first.
// Mod			:	Removes "reset" from sensitive list
//================================================= VERSION CONTROL =================================================
// $Revision: 1799 $
// $Author:  
// $Date: 
// $URL: 
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module serializer_SPI (
	// **************** System Inputs ****************//
	input	reset, clk,
	// **************** Serializer management ****************//
	input [7:0] sink_Data,	// Bytes to Serialize
	input sink_DataValid,	// New data available at "sink_Data" on assertion
	output reg Tx_Data, Tx_Clk,
	output reg source_busy, source_over_run,		// Active High Serializer Busy and OverRun signals
	// --------- Debug probes --------- //
);


// ======================= Constants, Parameters ======================= //
// *********************** Tx Layer States *********************** //
localparam S_Send_Data_Bit=2, S_limit_Tx_BR=3, S_frame_synch=1;
// *********************** System Parameters *********************** //
parameter BR_LIMIT = 25; // Bit Rate limit: 25 counts @ 100MHz = 4MHz
parameter BR_Limit_Half = 12;



// ======================= Wires ======================= //
wire new_data;
assign new_data = sink_DataValid;



// ======================= Variables ======================= //
(* syn_encoding = "safe" *) reg [2:0] state;
reg unsigned [7:0] buffer [0:1];	// 2 Bytes for data storage
reg unsigned [9:0] buffer_length;
reg unsigned [7:0] tx_data_aux;
reg unsigned [9:0] count;
reg unsigned [9:0] limit_count;
reg finish;
reg first_time;
reg first_bit_inframe;



// ======================= Main Logic ======================= //
always @(posedge clk)
begin
	if (reset) begin
		state <= S_Send_Data_Bit;
		Tx_Data <= 1;
		Tx_Clk <= 1;
		count <= 0;
		limit_count <= 0;
		finish = 0;
		buffer_length = 0;
		source_busy <= 1;
		source_over_run <= 0;
		first_time <= 1;
		first_bit_inframe <= 1;
	end else begin
		
		// --------- Buffer length Manager --------- //
		if ( new_data && finish ) begin
			buffer_length = buffer_length;
			source_busy <= source_busy;
			buffer[0] = buffer[1];
			buffer[1] = sink_Data;
		end else if ( new_data ) begin
			if ( buffer_length == 0 ) begin
				buffer_length = 10'd1;
				buffer[0] = sink_Data;
				source_busy <= 0;
			end else if ( buffer_length == 1 ) begin
				buffer_length = 10'd2;
				buffer[1] = sink_Data;
				source_busy <= 1;
			end else begin
				buffer_length = 10'd2;
				source_busy <= 1;
				source_over_run <= 1;
			end
		end else if ( finish ) begin
			if ( buffer_length > 0 ) begin
				buffer_length = buffer_length - 10'b1;
				buffer[0] = buffer[1];
			end else begin
				buffer_length = buffer_length;
			end
			source_busy <= 0;
		end else begin
			buffer_length = buffer_length;
			if (first_time) begin
				source_busy <= 0;
				first_time <= 0;
			end else begin
				source_busy <= source_busy;
			end
		end
		
		// --------- Tx State Machine --------- //
		case (state)
			
			// ------------------------- S_Send_Data_Bit State Begin (2) -------------------------
			S_Send_Data_Bit: begin
				if ( buffer_length > 0 ) begin
					tx_data_aux = buffer[0];
					if (first_bit_inframe) begin
						first_bit_inframe <= 0;
						state <= S_frame_synch;
						Tx_Clk <= 0;
						count <= count;
						Tx_Data <= 1;	// MSb first
					end else begin
						count <= count + 10'd1;
						Tx_Clk <= 1;
						state <= S_limit_Tx_BR;
						Tx_Data <= tx_data_aux[count];	// MSb first
					end
				end else begin
					state <= S_Send_Data_Bit;
					Tx_Clk <= 1;
					Tx_Data <= 1;
					first_bit_inframe <= 1;
				end
				finish = 0;
			end
			// ------------------------- S_Send_Data_Bit State End -------------------------
			
			// ------------------------- S_limit_Tx_BR State Begin (3) -------------------------
			S_limit_Tx_BR: begin
				if ( limit_count < (BR_LIMIT-2) ) begin
					state <= S_limit_Tx_BR;
					limit_count <= limit_count + 10'd1;
					finish = 0;
					if ( limit_count < (BR_Limit_Half-1) ) begin
						Tx_Clk <= 1;
					end else begin
						Tx_Clk <= 0;
					end
				end else begin
					if ( count < 8 ) begin
						finish = 0;
					end else begin
						count <= 0;
						finish = 1;
					end
					state <= S_Send_Data_Bit;
					limit_count <= 0;
					Tx_Clk <= 0;
				end
			end
			// ------------------------- S_limit_Tx_BR State End -------------------------

			// ------------------------- S_frame_synch State Begin (1) -------------------------
			S_frame_synch: begin
				finish = 0;
				Tx_Clk <= 0;
				if ( limit_count < (BR_Limit_Half-1) ) begin
					state <= S_frame_synch;
					limit_count <= limit_count + 10'd1;
				end else begin
					state <= S_Send_Data_Bit;
					limit_count <= 0;
				end
			end
			// ------------------------- S_frame_synch State End -------------------------
			
			// ------------------------- default State Begin -------------------------
			default: begin
				state <= S_Send_Data_Bit;
				Tx_Data <= 1;
				Tx_Clk <= 1;
				count <= 0;
				limit_count <= 0;
				finish = 0;
			end
			// ------------------------- default State End -------------------------
			
		endcase
		
		// --------- Debug probes --------- //
	end
end
endmodule
