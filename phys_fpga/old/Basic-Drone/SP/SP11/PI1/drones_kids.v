module drones_kids(
    //Input
    clk_system,
    reset_system,
    sdin,
    s1,
    led,
    //Output
    source_data_rdy,
    source_data,
    debug,
    ppm_output,
    data_debug
);

input clk_system;
input reset_system;
input sdin;
input s1;

output led;
output debug;
output source_data_rdy;
output [2:0] source_data;
output data_debug;
output ppm_output;

wire [7:0] data;
wire data_rdy;

uart uart1(
    .reset(!reset_system),
    .clk(clk_system),
    .sdin(sdin),
    //.debug(debug),
    .data(data),
    .data_rdy(data_rdy),
    .data_debug(data_debug)
);

KeyPress KeyPress1(
  .reset(!reset_system),
	.clk(clk_system),
	.sink_data_ready(uart1.data_rdy),
	.sink_data(uart1.data),
	.s1(s1),
	.led(led),
	.source_data_ready(source_data_rdy),
	.source_data(source_data)
);

ppm_encoder ppm_encoder1(
  .clk(clk_system),
  .ppm_output(ppm_output)
  );

//assign debug = data_rdy_debug;
//assign debug = data_debug;


endmodule
