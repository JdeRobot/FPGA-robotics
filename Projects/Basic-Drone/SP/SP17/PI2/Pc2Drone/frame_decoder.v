//================================================ START FILE HEADER ================================================
// Filename : frame_decoder.v
// Module Name : frame_decoder
// Module ID : SP8PI1
// Description : Decodes Input frame, and outputs CHn and OFFn values.
// Description : Frame: STX1|STX2|CH1|CH2|CH3|CH4|OFF1|OFF2|OFF3|OFF4|RSV1|RSV2|RSV3|RSV4|RSV5|RSV6
// Description : STX1 value = 0xff = 255, STX2 value = 0x5a = 90
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module frame_decoder 
// GLOBAL PARAMETER DECLARATION
(
// INPUT PORT DECLARATION
	input	reset,
	input	clk,
	input	sink_data_valid,
	input	[7:0]	sink_data,
// OUTPUT PORT DECLARATION
	output reg source_data_valid,
	output reg [7:0] source_CH1data,
	output reg [7:0] source_CH2data,
	output reg [7:0] source_CH3data,
	output reg [7:0] source_CH4data,
	output reg [7:0] source_offset1data,
	output reg [7:0] source_offset2data,
	output reg [7:0] source_offset3data,
	output reg [7:0] source_offset4data,
	output reg [4:0] state,							// ELIMINAR
	output debug_sinkdatavalid						// ELIMINAR
);

// INPUT/OUTPUT PORT DECLARATION
// LOCAL PARAMETER DECLARATION
// ======================= State machine Parameters ======================= //
localparam S_WF_STX1 = 5'd0, S_WF_STX2 = 5'd1, S_CH1_ADQ = 5'd2, S_CH2_ADQ = 5'd3, S_CH3_ADQ = 5'd4, S_CH4_ADQ = 5'd5;
localparam S_OFF1_ADQ = 5'd6, S_OFF2_ADQ = 5'd7, S_OFF3_ADQ = 5'd8, S_OFF4_ADQ = 5'd9;
localparam S_RSV = 5'd10;
localparam LIMIT_WDT = 32'd42000;

// INTERNAL REGISTERS DECLARATION
//(* syn_encoding = "safe" *) reg [2:0] state;
//reg [3:0] state = S_WF_STX1;
reg [31:0] count;
reg [31:0] WDT;
reg preinit;


// WIRES DECLARATION

// TASK DECLARATION
task treset;
begin
	state <= S_WF_STX1;
	count <= 32'd0;
	WDT <= 32'd0;
	source_data_valid <= 0;
	preinit <= 1;
	/*source_CH1data <= 8'd0;
	source_CH2data <= 8'd0;
	source_CH3data <= 8'd0;
	source_CH4data <= 8'd0;
	source_offset1data <= 8'd0;
	source_offset2data <= 8'd0;
	source_offset3data <= 8'd0;
	source_offset4data <= 8'd0;*/
	source_CH1data <= 8'd0;				// Actually: alt_command
	source_CH2data <= 8'd128;
	source_CH3data <= 8'd128;
	source_CH4data <= 8'd128;
	source_offset1data <= 8'd16;		// Actually: alt_kp
	source_offset2data <= 8'd128;
	source_offset3data <= 8'd128;
	source_offset4data <= 8'd128;
end
endtask

// ALWAYS CONSTRUCT BLOCK
always @(posedge clk)
begin
	if (reset) begin
		treset();
	end else begin
		
		if (sink_data_valid) begin
			WDT <= 32'd0;
			case (state)
				S_WF_STX1: begin
					if (sink_data==8'hFF) begin
						state <= S_WF_STX2;
					end else begin
						state <= S_WF_STX1;
					end
				end
				S_WF_STX2: begin
					if (sink_data==8'h5A) begin
						state <= S_CH1_ADQ;
					end else begin
						state <= S_WF_STX1;
					end
				end
				S_CH1_ADQ: begin
					if (sink_data < 10) begin	// Por debajo de 17cm no intenta ni despegar, para evitar vórtice
						source_CH1data <= 0;
					end else begin
						source_CH1data <= sink_data;
					end
					state <= S_CH2_ADQ;
				end
				S_CH2_ADQ: begin
					source_CH2data <= sink_data;
					state <= S_CH3_ADQ;
				end
				S_CH3_ADQ: begin
					source_CH3data <= sink_data;
					state <= S_CH4_ADQ;
				end
				S_CH4_ADQ: begin
					source_CH4data <= sink_data;
					state <= S_OFF1_ADQ;
				end
				S_OFF1_ADQ: begin
					source_offset1data <= sink_data;
					state <= S_OFF2_ADQ;
				end
				S_OFF2_ADQ: begin
					source_offset2data <= sink_data;
					state <= S_OFF3_ADQ;
				end
				S_OFF3_ADQ: begin
					source_offset3data <= sink_data;
					state <= S_OFF4_ADQ;
				end
				S_OFF4_ADQ: begin
					source_offset4data <= sink_data;
					state <= S_RSV;
				end
				S_RSV: begin
					if (count < 5) begin
						count <= count + 32'd1;
						state <= S_RSV;
					end else begin
						count <= 32'd0;
						state <= S_WF_STX1;
						source_data_valid <= 1;
					end
				end
				default: 
					treset();
			endcase
		end else begin
			if (preinit==1) begin
				preinit<=0;
				source_data_valid <= 1;
			end else begin
				source_data_valid <= 0;
				if (WDT < LIMIT_WDT) begin
					WDT <= WDT + 32'd1;
					state <= state;
				end else begin
					WDT <= WDT;
					state <= S_WF_STX1;
				end
			end
		end
		
	end // reset end
end // always end


// CONTINOUS ASSIGNMENT
assign debug_state = state;
assign debug_sinkdatavalid = sink_data_valid;

// END OF MODULE
endmodule





