`timescale 1ns/10ps		 //$GC: Para la simulaci�n se utilizar� una granuralidad de 1ns
				 //$GC: Para la simulaci�n se utlizar� una resoluci�n temporal de 1ps
// ======================= Port declarations I/Os ======================= //
module uart_rx_tb();
// ======================= Inputs al MUT =======================

	reg reset;
	reg clk;
	reg sdin;

	// ======================= Outputs del MUT =======================
	wire  data_rdy;
	wire  [7:0]	data;
	wire  source_ber_framing_error;
	
// ======================= Par�metros Sistema =======================
parameter T_main=10;	//$CLOCK: Para todos los ensayos de este m�dulo se utilizar� un reloj de 100MHz
// ======================= Par�metros del MUT =======================
parameter MODULO_REVISADO  = "uart_rx";
parameter VERSION_REVISADA = "V 0.x";
//===================AUX REGS FOR TESTS
reg[0:15] contador_PASSBits1;     //$DEF: Registro auxiliar utilizado durante el ensayo
reg [12:0] aux_1_reg;  //: Registro auxiliar utilizado durante el ensayo
reg[7:0] Tx_data;			//$DEF: Registro auxiliar utilizada durante el ensayo
reg [8*21:0] NombreTest;	// Usado para identificar el test en curso
// ======================= Instanciaci�n MUTs=======================
defparam MUT.BR_PERIOD = 1831;		//$DEF: Par�metro: BR_PERIOD = 1831. Periodo de ritmo de baudios.
defparam MUT.BR_PERIOD_HALF = 916;	//$DEF: Par�metro: BR_PERIOD_HA = 916. Mitad del periodo de ritmo de baudios.
uart_rx	 MUT(			.reset(reset),
				.clk(clk),
				.sdin(sdin),
				.data_rdy(data_rdy),
				.data(data),
				.source_ber_framing_error(source_ber_framing_error)
					);

// ======================= Generaci�n de se�al de reloj y reset=======================
always #(T_main/2) clk = ~clk;
//	always #(T_main) aux_count = aux_count + 1;
// ======================= Tasks =======================
// ======================= Secuencia de testeo =======================
	initial begin
		/**********************************************************/
		//$TINDEX: 1
		//$TITLE: Comprobaci�n del correcto funcionamiento del proceso en el proceso de conversi�n de secuencia de bits a bytes.
		//$TDESC: En este ensayo se comprueba que el proceso funciona correctamente siendo los bytes de su salida data los correspondientes a los bytes recibidos. Para ello ser�n introducidos secuencias de bits correspondientes a bytes de un determinado valor.
		/**********************************************************/ 
		$display("Comienza la simulaci�n del T_1");
		/**********************************************************/ 
		/****************************************************************/
		//$TECH50128: Para este ensayo se emplea la t�cnica de ensayos en 50128: 2011 A21 'Cobertura de ensayo para el c�digo'.
		/****************************************************************/
		/****************************************************************/
		//$TECH50128: Para este ensayo se emplea la t�cnica de ensayos en 50128: 2011 D4 'An�lisis de valores l�mite'.
		/****************************************************************/
		/**********************************************************/           
		//$TCINDEX: 1.1           
		//$TCDESC: Test de power-on reset de logica programable
		/**********************************************************/    
		$display("Comienza la simulaci�n del TC_1.1");
		NombreTest = "TEST_1.1";
		// ------------ Inicializaci�n del MUT + Test ------------ //
		reset    	= 1;          //$PT: Inicializaci�n: reset y sdin en nivel alto clk = 0
		sdin		= 1;		//$PT: Esperar 10 ciclos de reloj de 100MHz para situar reset en nivel bajo 
		clk = 0;
		#(100);
		reset    	= 0;               	//$PT: Esperar un nivel alto del reloj de 100 Mhz para verificar el valor de las salidas      
		@(posedge clk);	
		#(100);
		$display("Simulaci�n del TC_1.1 terminada.");


		/**********************************************************/           
		//$TCINDEX: 1.2           
		//$TCDESC: Test recepcion:   Start=0   Tx_data[7:0]=00000000   Stop=1
		/**********************************************************/  
		$display("Comienza la simulaci�n del TC_1.2");
		NombreTest = "TEST_1.2";
		sdin    	= 0;
		#(1831*T_main);
		//
		sdin    	= 0;	
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;	
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		//
		sdin    	= 1;
		#(1831*T_main);
		//
		@(negedge clk); 		//$PT: Esperar nivel bajo del reloj de 100MHz, posteriormente esperar por 446 niveles altos del reloj de 100MHz para verificar el valor de las salidas del proceso
		repeat(1000*T_main) @(posedge clk); 
		$display("Simulaci�n del TC_1.2 terminada.");


		/**********************************************************/           
		//$TCINDEX: 1.3           
		//$TCDESC: Test recepcion:   Start=0   Tx_data[7:0]=00000001   Stop=1
		/**********************************************************/  
		$display("Comienza la simulaci�n del TC_1.3");
		NombreTest = "TEST_1.3";
		sdin    	= 0;
		#(1831*T_main);
		//
		sdin    	= 1;	
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		sdin    	= 0;	
		#(1831*T_main);
		sdin    	= 0;
		#(1831*T_main);
		//
		sdin    	= 1;
		#(1831*T_main);
		//
		@(negedge clk); 		//$PT: Esperar nivel bajo del reloj de 100MHz, posteriormente esperar por 446 niveles altos del reloj de 100MHz para verificar el valor de las salidas del proceso
		repeat(1000*T_main) @(posedge clk); 
		#1_00			//$PT: Esperar 10 ciclos de reloj de 100MHz como salva al finalizar el caso de ensayo

		$display("Simulaci�n del TC_1.3 terminada.");
	end
endmodule
