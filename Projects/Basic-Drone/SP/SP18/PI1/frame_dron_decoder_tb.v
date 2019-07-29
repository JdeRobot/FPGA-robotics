`timescale 1ns/10ps		 //$GC: Para la simulaci�n se utilizar� una granuralidad de 1ns
				 //$GC: Para la simulaci�n se utlizar� una resoluci�n temporal de 1ps
// ======================= Port declarations I/Os ======================= //
module frame_dron_decoder_tb();

// ======================= Inputs al MUT =======================
reg reset;
reg clk;
reg sink_data_valid;
reg [7:0] sink_data;

// ======================= Outputs del MUT =======================
wire source_data_valid;
wire [15:0] source_H_disp_front;
wire [15:0] source_H_disp_side;
wire [15:0] source_Altitude;

// ======================= System Params =======================
parameter T_main=10;

// ======================= Par�metros del MUT =======================
parameter MODULO_REVISADO  = "frame_dron_decoder";
parameter VERSION_REVISADA = "V 0.x";

//=================== AUX REGS FOR TESTS =======================
reg [8*21:0] NombreTest;	// Usado para identificar el test en curso

// ======================= Instantiation =======================
frame_dron_decoder	MUT(
									.reset(reset),
									.clk(clk),
									.sink_data_valid(sink_data_valid),
									.sink_data(sink_data),
									.source_data_valid(source_data_valid),
									.source_H_disp_front(source_H_disp_front),
									.source_H_disp_side(source_H_disp_side),
									.source_Altitude(source_Altitude)
								);

// ======================= CLK Signal =======================
always #(T_main/2) clk = ~clk;

// ======================= Secuencia de testeo =======================
initial begin  
	$display("Starts Initialization");
	NombreTest = "INIT";
	// ------------ INIT ------------ //
	reset = 1;
	sink_data_valid = 0;
	sink_data = 0;
	clk = 0;
	#(100);
	reset = 0;
	@(posedge clk);	
	#(100);
	$display("Initialization ends");


	/**********************************************************/           
	//$TCINDEX: TEST_1
	/**********************************************************/  
	$display("Starts TEST_1");
	NombreTest = "TEST_1";
	// STX1
	sink_data_valid = 1;
	sink_data = 255;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	// STX2
	sink_data_valid = 1;
	sink_data = 165;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	// H_disp_front_MSB		Expected = -2
	sink_data_valid = 1;
	sink_data = 255;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	// H_disp_front_LSB
	sink_data_valid = 1;
	sink_data = 254;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	// H_disp_side_MSB		Expected = 400
	sink_data_valid = 1;
	sink_data = 1;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	// H_disp_side_LSB
	sink_data_valid = 1;
	sink_data = 144;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	// altitude_MSB			Expected = 31
	sink_data_valid = 1;
	sink_data = 0;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	// altitude_LSB
	sink_data_valid = 1;
	sink_data = 31;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	
	
	
	$display("Ends TEST_1");

end
endmodule
