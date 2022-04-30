`timescale 1ns/10ps		 //$GC: Para la simulaci�n se utilizar� una granuralidad de 1ns
				 //$GC: Para la simulaci�n se utlizar� una resoluci�n temporal de 1ps
// ======================= Port declarations I/Os ======================= //
module pid_altitude_tb();

// ======================= Inputs al MUT =======================
reg reset;
reg clk;
reg sink_data_valid;
reg [7:0] sink_command;
reg [15:0] sink_data;
reg [7:0] sink_kp;
reg [7:0] sink_ki;

// ======================= Outputs del MUT =======================
wire source_data_valid;
wire [14:0] source_pid;


// ======================= System Params =======================
parameter T_main=10;

// ======================= Par�metros del MUT =======================
parameter MODULO_REVISADO  = "pid_altitude";
parameter VERSION_REVISADA = "V 0.x";

//=================== AUX REGS FOR TESTS =======================
reg [8*21:0] NombreTest;	// Usado para identificar el test en curso

// ======================= Instantiation =======================
pid_altitude	MUT(
				.reset(reset),
				.clk(clk),
				.sink_data_valid(sink_data_valid),
				.sink_command(sink_command),
				.sink_data(sink_data),
				.sink_kp(sink_kp),
				.sink_ki(sink_ki),
				.source_data_valid(source_data_valid),
				.source_pid(source_pid)
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
	sink_command = 0;
	sink_data = 0;
	sink_kp = 0;
	sink_ki = 0;
	clk = 0;
	#(100);
	reset = 0;
	@(posedge clk);
	@(negedge clk);	
	#(100);
	$display("Initialization ends");


	/**********************************************************/           
	//$TCINDEX: TEST_1: Test P
	/**********************************************************/  
	$display("Starts TEST_1");
	NombreTest = "TEST_1";
	// **** Test 1 **** //
	sink_data_valid = 1;
	sink_command = 60;		// Comandar 60 * 16 = 960mm de altura
	sink_data = 950;
	sink_kp = 100;
	sink_ki = 0;
	#(T_main);
	sink_data_valid = 0;
	#(10*T_main);
	$display("Ends TEST_1");
	/**********************************************************/           
	//$TCINDEX: TEST_2: Test PI
	/**********************************************************/
	// **** Test 2.1 **** //
	$display("Starts TEST_2.1");
	NombreTest = "TEST_2.1";
	sink_data_valid = 1;
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 950;
	sink_kp = 100;
	sink_ki = 16;
	#(T_main);
	sink_data_valid = 0;
	#(10*T_main);
	$display("Ends TEST_2.1");
	// **** Test 2.2 **** //
	$display("Starts TEST_2.2");
	NombreTest = "TEST_2.2";
	sink_data_valid = 1;
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 950;
	sink_kp = 100;
	sink_ki = 0;
	#(T_main);
	sink_data_valid = 0;
	#(10*T_main);
	$display("Ends TEST_2.2");
	// **** Test 2.3 **** //
	$display("Starts TEST_2.3");
	NombreTest = "TEST_2.3";
	sink_data_valid = 1;
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 950;
	sink_kp = 100;
	sink_ki = 2;
	#(T_main);
	sink_data_valid = 0;
	#(10*T_main);
	$display("Ends TEST_2.3");

end
endmodule
