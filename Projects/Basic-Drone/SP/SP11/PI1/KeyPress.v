
module KeyPress (
	reset,
	clk,
	sink_data_ready,
	sink_data,
	s1,
	led,
	source_data_ready,
	source_data
);


localparam K_a=8'd97, K_w=8'd119, K_s=8'd115, K_d=8'd100, K_LSHIFT=8'd91, K_SPACE=8'd93, K_b=8'd98; // Assuming Tx of d91 on left shift keypress and Tx of d93 on space keypress


// INPUT PORT DECLARATION
input	reset, clk;
input	sink_data_ready;
input	[7:0] sink_data;
input s1;
// OUTPUT PORT DECLARATION
output source_data_ready;
output [2:0] source_data;
output led;
// REG DECLARATION
reg led_reg;
reg source_data_ready_reg;
reg [2:0] source_data_reg;;

// TASK DECLARATION
task treset;
begin
	source_data_ready_reg <= 0;
	source_data_reg <= 0;
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
					source_data_reg <= 3'd0;
					source_data_ready_reg <= 1;
				end

				K_w: begin
					source_data_reg <= 3'd1; //001
					source_data_ready_reg <= 1;
				end

				K_s: begin
					source_data_reg <= 3'd2;
					source_data_ready_reg <= 1;
				end

				K_d: begin
					source_data_reg <= 3'd3;
					source_data_ready_reg <= 1;
				end

				K_LSHIFT: begin
					source_data_reg <= 3'd4;
					source_data_ready_reg <= 1;
				end

				K_SPACE: begin
					source_data_reg <= 3'd5;
					source_data_ready_reg <= 1;
				end

				K_b: begin
					source_data_reg <= 3'd6;
					source_data_ready_reg <= 1;
				end

				default: begin
					source_data_reg <= source_data_reg;
					source_data_ready_reg <= 0;
				end

			endcase

		end else begin
			source_data_reg <= source_data_reg;
			source_data_ready_reg <= 0;
		end

	end
end

always @( posedge clk )
begin
    if (s1 == 1)
        led_reg <= 1;
    else
        led_reg <= 0;
end

assign led = led_reg;
assign source_data = source_data_reg;
assign source_data_ready = source_data_ready_reg;
endmodule
