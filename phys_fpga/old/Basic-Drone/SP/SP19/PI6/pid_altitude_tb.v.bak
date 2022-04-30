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
reg [7:0] sink_kd;

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
				.sink_kd(sink_kd),
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
	sink_kd = 0;
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
	sink_kd = 0;
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
	sink_kd = 0;
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
	sink_kd = 0;
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
	sink_kd = 0;
	#(T_main);
	sink_data_valid = 0;
	#(10*T_main);
	$display("Ends TEST_2.3");
	// **** Test 2.4 **** //
	$display("Starts TEST_2.4");
	NombreTest = "TEST_2.4";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 800;
	sink_kp = 100;
	sink_ki = 200;
	sink_kd = 0;
	repeat (10) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_2.4");
	// **** Test 2.5 **** //
	$display("Starts TEST_2.5");
	NombreTest = "TEST_2.5";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 1300;
	sink_kp = 100;
	sink_ki = 200;
	sink_kd = 0;
	repeat (12) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_2.5");
	/**********************************************************/           
	//$TCINDEX: TEST_3: Test D
	/**********************************************************/
	// **** Test 3.1 **** //	Error Zero
	$display("Starts TEST_3.1");
	NombreTest = "TEST_3.1";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 960;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 16;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_3.1");
	// **** Test 3.2 **** //	Desde Error zero hacia abajo
	$display("Starts TEST_3.2");
	NombreTest = "TEST_3.2";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 950;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 16;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_3.2");
	// **** Test 3.3 **** //	Desde abajo hacia arriba
	$display("Starts TEST_3.3");
	NombreTest = "TEST_3.3";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 1000;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 16;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_3.3");
	/**********************************************************/           
	//$TCINDEX: TEST_4: Test D under command
	/**********************************************************/
	// ------------ Re-INIT ------------ //
	reset = 1;
	sink_data_valid = 0;
	sink_command = 0;
	sink_data = 0;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 0;
	clk = 0;
	#(100);
	reset = 0;
	@(posedge clk);
	@(negedge clk);	
	#(100);
	$display("Re-Initialization ends");
	// **** Test 4.1 **** //	Se coloca por debajo de la consigna
	$display("Starts TEST_4.1");
	NombreTest = "TEST_4.1";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 900;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 16;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_4.1");
	// **** Test 4.2 **** //	Se testea desde abajo hacia arriba, por debajo de la consigna
	$display("Starts TEST_4.2");
	NombreTest = "TEST_4.2";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 930;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 16;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_4.2");
	// **** Test 4.3 **** //	Atina en la consigna
	$display("Starts TEST_4.3");
	NombreTest = "TEST_4.3";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 960;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 16;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_4.3");
	// **** Test 4.4 **** //	Se pasa de largo
	$display("Starts TEST_4.4");
	NombreTest = "TEST_4.4";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 1000;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 250;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_4.4");
	// **** Test 4.5 **** //	Atina al bajar
	$display("Starts TEST_4.5");
	NombreTest = "TEST_4.5";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 960;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 160;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_4.5");
	// **** Test 4.6 **** //	Se pasa al bajar
	$display("Starts TEST_4.6");
	NombreTest = "TEST_4.6";
	sink_command = 60;	// Comandar 60 * 16 = 960mm de altura
	sink_data = 930;
	sink_kp = 0;
	sink_ki = 0;
	sink_kd = 16;
	repeat (3) begin
		sink_data_valid = 1;
		#(T_main);
		sink_data_valid = 0;
		#(3*T_main);
	end
	$display("Ends TEST_4.6");
end
endmodule
