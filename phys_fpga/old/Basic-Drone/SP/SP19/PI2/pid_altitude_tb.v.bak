`timescale 1ns/10ps		 //$GC: Para la simulaci�n se utilizar� una granuralidad de 1ns
				 //$GC: Para la simulaci�n se utlizar� una resoluci�n temporal de 1ps
// ======================= Port declarations I/Os ======================= //
module pid_tb();

// ======================= Inputs al MUT =======================
reg reset;
reg clk;
reg sink_data_valid;
reg [7:0] sink_command;
reg [15:0] sink_data;
reg [7:0] sink_kp;

// ======================= Outputs del MUT =======================
wire source_data_valid;
wire [14:0] source_data;


// ======================= System Params =======================
parameter T_main=10;

// ======================= Par�metros del MUT =======================
parameter MODULO_REVISADO  = "pid";
parameter VERSION_REVISADA = "V 0.x";

//=================== AUX REGS FOR TESTS =======================
reg [8*21:0] NombreTest;	// Usado para identificar el test en curso

// ======================= Instantiation =======================
pid	MUT(
				.reset(reset),
				.clk(clk),
				.sink_data_valid(sink_data_valid),
				.sink_command(sink_command),
				.sink_data(sink_data),
				.sink_kp(sink_kp),
				.source_data_valid(source_data_valid),
				.source_data(source_data)
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
	// **** Test 1 **** //
	sink_data_valid = 1;
	sink_command = -45;
	sink_data = 19;
	sink_kp = 1;
	#(T_main);
	sink_data_valid = 0;
	#(100*T_main);
	
	
	
	$display("Ends TEST_1");

end
endmodule
