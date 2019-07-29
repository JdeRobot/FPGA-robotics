//================================================ START FILE HEADER ================================================
// Filename : uart_rx.v
// Module Name : uart_rx
// Module ID : SP8PI1
// Description : Rx UART module only, BR parametrizable, 1 Start bit, 1 Stop bit, no parity, LSb first.
//================================================= VERSION CONTROL =================================================
// $Revision: 2911 $
// $Author: enavarro $
// $Date: $
// $URL: $
//================================================= MAINTENANCE LOG =================================================
//
//================================================ MODULE DECLARATION ===============================================
module uart_rx 
// GLOBAL PARAMETER DECLARATION
#(	parameter BR_PERIOD = 1831,
	parameter BR_PERIOD_HALF = 916
)
(
// INPUT PORT DECLARATION
	input	reset,
	input	clk,
	input	sdin,
// OUTPUT PORT DECLARATION
	output	reg	data_rdy,
	output	reg	[7:0]	data,
	output	reg			source_ber_framing_error
);

// INPUT/OUTPUT PORT DECLARATION
// LOCAL PARAMETER DECLARATION
// ======================= State machine Parameters ======================= //
localparam S_WF_IDLE = 0, S_WW_IDLE = 1, S_WW_START_BIT = 2, S_SAMPLE_DATA = 3, S_WF_STOP_BIT = 4;

// INTERNAL REGISTERS DECLARATION	
(* syn_encoding = "safe" *) reg [2:0] state;
reg unsigned [31:0]	timer_Count;
reg unsigned [2:0]	bit_Count;
reg unsigned [7:0]	data_Aux;

// TASK DECLARATION
task clear_Timer;
begin
		timer_Count <= 32'd0;	// Resets Timer count
end
endtask

task increment_Timer;
input [31:0] Top_Count;
begin
	if (timer_Count < Top_Count) begin
		timer_Count <= timer_Count + 31'd1;	// Increments Timer count by 1
	end else begin
		timer_Count <= Top_Count;				// Maintains Timer count at Top_Count value
	end
end
endtask

task maintain_Outputs;
begin
	data_rdy <= 0;
	data <= data;
	source_ber_framing_error <= 0;
end
endtask

task reset_Outputs;
begin
	data_rdy <= 0;
	data <= 0;
	source_ber_framing_error <= 0;
end
endtask

task update_Outputs;
input [7:0] datain;
input framing_error;
input data_valid;
begin
	data_rdy <= data_valid;
	data <= datain;
	source_ber_framing_error <= framing_error;
end
endtask

task treset;
begin
	state <= S_WF_IDLE;
	reset_Outputs();
	clear_Timer();
	bit_Count <= 0;
	data_Aux <= 0;
end
endtask

// ALWAYS CONSTRUCT BLOCK
always @(posedge clk)
begin
	if (reset) begin
		treset();
	end else begin
	
		case (state)
			
			S_WF_IDLE: begin	// 0
				// ********* Timer *********
				clear_Timer();
				// ********* Inputs manage *********
				if (sdin) begin
					state <= S_WW_IDLE;
				end else begin
					state <= S_WF_IDLE;
				end
				// ********* Outputs manage *********
				maintain_Outputs();
				// ********* Internal Variables Manage *********
				bit_Count <= 0;
				data_Aux <= 0;
			end
			
			S_WW_IDLE: begin	// 1
				// ********* Timer *********
				clear_Timer();
				// ********* Inputs manage *********
				if (sdin) begin
					state <= S_WW_IDLE;
				end else begin
					state <= S_WW_START_BIT;
				end
				// ********* Outputs manage *********
				maintain_Outputs();
				// ********* Internal Variables Manage *********
				bit_Count <= 0;
				data_Aux <= 0;
			end
			
			S_WW_START_BIT: begin // 2
				// ********* Timer manage *********
				if (timer_Count < BR_PERIOD) begin
					increment_Timer(BR_PERIOD);
					state <= S_WW_START_BIT;
				end else begin
					clear_Timer();
					state <= S_SAMPLE_DATA;
				end
				// ********* Outputs manage *********
				maintain_Outputs();
				// ********* Internal Variables Manage *********
				bit_Count <= 0;
				data_Aux <= 0;
			end
			
			S_SAMPLE_DATA: begin // 3
				// ********* Timer manage *********
				if (timer_Count < BR_PERIOD) begin
					// ********* Runs Timer *********
					increment_Timer(BR_PERIOD);
					state <= S_SAMPLE_DATA;
					// ********* Sample data *********
					if (timer_Count == BR_PERIOD_HALF) begin
						data_Aux[bit_Count] <= sdin;
					end else begin
						data_Aux <= data_Aux;
					end
					// ********* Internal Variables Manage *********
					bit_Count <= bit_Count;
					// ********* Outputs manage *********
					maintain_Outputs();
				end else begin
					// ********* Resets Timer *********
					clear_Timer();
					// ********* Internal Variables Manage *********
					if (bit_Count < 7) begin
						state <= S_SAMPLE_DATA;
						bit_Count <= bit_Count + 3'd1;
						// ********* Outputs manage *********
						maintain_Outputs();
					end else begin
						state <= S_WF_STOP_BIT;
						bit_Count <= 0;
						// ********* Outputs manage *********
						maintain_Outputs();
					end
					data_Aux <= data_Aux;
				end
			end
			
			S_WF_STOP_BIT: begin // 4
				// ********* Timer manage *********
				if (timer_Count < BR_PERIOD_HALF) begin
					increment_Timer(BR_PERIOD_HALF);
					state <= S_WF_STOP_BIT;
					// ********* Outputs manage *********
					maintain_Outputs();
				end else begin
					clear_Timer();
					state <= S_WF_IDLE;
					// ********* Outputs manage *********
					if (sdin == 1) begin
						update_Outputs(data_Aux, 1'b0, 1'b1);
					end else begin
						update_Outputs(8'b0, 1'b1, 1'b0);
					end
				end
				// ********* Internal Variables Manage *********
				bit_Count <= bit_Count;
				data_Aux <= data_Aux;
			end
			
			default: begin
				treset();
			end
				
		endcase
		
		// ********* Debug only *********
		//debug_only_state <= state;
		//debug_only_bit_count <= bit_Count;
		
	end // reset end
end // always end


// CONTINOUS ASSIGNMENT

// END OF MODULE
endmodule





