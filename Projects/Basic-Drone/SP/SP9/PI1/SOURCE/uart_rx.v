module uart_rx (
    reset,
    clk,
    sdin,
    //debug,
    data,
    data_rdy,
    data_debug
);
//********************************************************//
//PARAMETER
localparam baudrate = 54600;
localparam numBits = 8;
localparam bit_position = $clog2(numBits);
//localparam time_bit = 1/(numBits/baudrate);
//localparam fpga_clock_T = 12_000_000;
//localparam pulses_needed = fpga_clock_T/time_bit;
//localparam pulses_needed = 220;	// 54600 @ 12MHz
//localparam offset = 110;
localparam pulses_needed = 1831;		// 54600 @ 100MHz
localparam offset = 916;	
localparam N = $clog2(pulses_needed + offset);
//******************INPUT AND OUTPUT**********************//
input clk;
input sdin;
input reset;
//OUTPUT
output [ numBits-1:0 ] data;
output data_rdy;
output data_debug;
//output debug;
//********************************************************//
reg flag_reg;
reg [7:0] data_reg;
reg [bit_position-1:0] position;
reg [N-1:0] count_pulses_needed;
reg [1:0] IDLE;
reg [1:0] START;
reg [1:0] CLOCK_DATA;
reg [1:0] STOP;
reg [1:0] state_bus;
reg data_rdy_reg;
reg data_debug_reg;


//******************************************************//
always @( posedge clk ) begin
	if (reset) begin
		// Añadido Reset y movida inicialización de variable sa este punto.
		// Reindentado y reordenado de lineas: Inocuo para síntesis.
		// flag_reg => no esta iniciaizada, que valor debe tener inicialmente? da igual, es para debug xD
		// El primer estado es "START" en el cual espera 330 ciclos sin vigilar el pin "sdin", ¿Por qué? Parece más lógico que empiece en el estado "IDLE". Corregido a IDLE.
		data_reg = 8'd0;
		position = 0;
		count_pulses_needed = 0;
		IDLE = 2'd0;
		START = 2'd1;
		CLOCK_DATA = 2'd2;
		STOP = 2'd3;
		state_bus = 2'd0;
		data_rdy_reg = 0;
	end else begin
		case(state_bus)
			IDLE:
			begin
				data_rdy_reg <= 0;
				data_reg <= 8'd0;
				data_debug_reg <= 0;
				if (sdin == 0)
					state_bus <= START;
				else
					state_bus <= IDLE;
			end
			 START:
			 begin
				  data_rdy_reg <= 0;
				  if ( count_pulses_needed == pulses_needed + offset ) begin
						state_bus <= CLOCK_DATA;
						count_pulses_needed <= 0;
						flag_reg <=  !flag_reg;
						data_reg[numBits-2:0] <= data_reg[numBits-1:1];
						data_reg[numBits-1] <= sdin;
						data_debug_reg <= sdin;

				  end else begin
						state_bus <= START;
						count_pulses_needed <= count_pulses_needed + 1;
				  end
			 end
			 CLOCK_DATA:
			 begin
				  data_rdy_reg <= 0;
				  if ( count_pulses_needed == pulses_needed )
				  begin
						count_pulses_needed <= 0;
						position <= position + 1;
						if (position >= 3'd7) begin
							data_reg <= data_reg;
						end else begin
							data_reg[numBits-2:0] <= data_reg[numBits-1:1];
							data_reg[numBits-1] <= sdin;
						end
						data_debug_reg <= sdin;
						state_bus <= ( position >= 3'd7 ) ? STOP : CLOCK_DATA;
						flag_reg <= ( position >= 3'd7 ) ? flag_reg : !flag_reg;
				  end
				  else
				  begin
						count_pulses_needed <= count_pulses_needed + 1;
						state_bus <= CLOCK_DATA;
				  end
			 end
			 STOP:
			 begin
				  if( count_pulses_needed == pulses_needed )
				  begin
						state_bus <= IDLE;
						count_pulses_needed <= 0;
						data_rdy_reg <= 1;
						data_debug_reg <= 0;
				  end
				  else
				  begin
						data_rdy_reg <= 1;
						state_bus <= STOP;
						count_pulses_needed <= count_pulses_needed + 1;
						data_debug_reg <= 0;
				  end
			 end
		endcase
	end
end
//*********************************************//
assign data = data_reg;
assign debug = sdin;
assign data_rdy = data_rdy_reg;
assign data_debug = data_debug_reg;
endmodule
