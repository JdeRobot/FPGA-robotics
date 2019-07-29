module uart (
    reset,
    clk,
    sdin,
    //debug,
    data,
    data_rdy,
    data_debug,
);
//********************************************************//
//PARAMETER
localparam baudrate = 54600;
localparam numBits = 8;
localparam bit_position = $clog2(numBits);
//localparam time_bit = 1/(numBits/baudrate);
//localparam fpga_clock_T = 12_000_000;
//localparam pulses_needed = fpga_clock_T/time_bit;
localparam pulses_needed = 220;
localparam offset = 110;
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
reg [7:0] data_reg = 8'd0;
reg [bit_position:0] position = 0;
reg [N-1:0] count_pulses_needed = 0;
reg [1:0] IDLE = 2'd0;
reg [1:0] START = 2'd1;
reg [1:0] CLOCK_DATA = 2'd2;
reg [1:0] STOP = 2'd3;

reg [1:0] state_bus = IDLE;
reg data_rdy_reg = 0;
reg data_debug_reg;
//reg debug_reg = 0;


//******************************************************//
always @( posedge clk )
begin
 case(state_bus)
    IDLE:
    begin
        data_rdy_reg <= 0;
        data_reg <= 8'd0;
        position <= 4'd0;
        if (sdin == 0)
            state_bus <= START;
        else
            state_bus <= IDLE;
    end
    START:
    begin
        data_rdy_reg <= 0;
        if( count_pulses_needed == offset )
        begin
            state_bus <= CLOCK_DATA;
            count_pulses_needed <= 0;
        end
        else
        begin
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
    						if (position >= 4'd8) begin
    							data_reg <= data_reg;
    						end else begin
    							data_reg[numBits-2:0] <= data_reg[numBits-1:1];
    							data_reg[numBits-1] <= sdin;
    						end
    						data_debug_reg <= sdin;
    						state_bus <= ( position >= 4'd8 ) ? STOP : CLOCK_DATA;
    						flag_reg <= ( position >= 4'd8 ) ? flag_reg : !flag_reg;
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
        end
        else
        begin
            data_rdy_reg <= 1;
            state_bus <= STOP;
            count_pulses_needed <= count_pulses_needed + 1;
        end
    end
 endcase
end
//*********************************************//
assign data = data_reg;
//assign debug = sdin;
assign data_rdy = data_rdy_reg;
assign data_debug = flag_reg;
endmodule
