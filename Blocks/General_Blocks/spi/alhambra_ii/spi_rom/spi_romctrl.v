

//////////////////////////////////////////////////////////////////////////////////
// 12MHz clock with 115200 baud

// control module to send to SPI to turn on leds
module spi_romctrl
(
  input            rst,
  input            clk,
  input            busy_spi,
  output reg       spi_ss_n, // spi slave select, active low
  output reg       spi_send, // command to send a new SPI byte
  output reg       spi_end_tx,
  output           ena_2clk, // ena spi, twice the frequency
  output     [7:0] data_spi
);

  // ROM where the SPI commands are kept. In the future it would be a FIFO
  // it has 9 bits because the 8th bit is for ending a transmission and
  // be able to start a new one. Not sure if it is necessary. CHECK
  // if spirom[8]=='1' -> it will wait and stop de transmission
  reg [8:0] spirom;
  reg [8:0] spirom_rg;
  // address of the ROM
  reg [5:0] rom_addr;
  reg       incr_addr; // increment the address of the ROM

  always @ (rom_addr) begin
    case (rom_addr)
      6'h00:      // the first 0 means to transmit
        spirom <= 9'h008; // 08 is the address, the 1st 0 means to transmit
      6'h01:
        spirom <= 9'h006; // 06: SPI_MESSAGE_TYPE: SET_LED
      6'h02:
        spirom <= 9'h002; // 01:  LED_EYE_RIGHT
                          // 02:  LED_EYE_LEFT
                          // 04:  LED_BLINKER_LEFT
                          // 08:  LED_BLINKER_RIGHT
      6'h03:
        spirom <= 9'h010; // 00-FF:  Led's red component
      6'h04:
        spirom <= 9'h01F; // 00-FF:  Led's green component
      6'h05:
        spirom <= 9'h000; // 00-FF:  Led's blue component
      6'h06:
        spirom <= 9'h101; // No transmision, wait for 1
      6'h07:
        spirom <= 9'h100; // end of transmission
      default:
        spirom <= 9'h100; // end of transmission
    endcase
  end

  // FSM states
  parameter
     WAIT_GPG_ST  = 0, // wait a little bit for the gogpigo board to start
                       // maybe it is not necessary
     EN_SPI_ST    = 1, // to have some time to active the SPI enable
                       // before sending any command
     WAIT_SPI_ST  = 2, // wait for the SPI to be ready (not busy)
     CHECK_ROM_ST = 3, // check the content of the ROM to see what is going to
                       // be sent
     SPI_SEND_ST  = 4, // Sending the SPI byte
     EN_SPI2_ST   = 5, // keeping the SPI enabled before dissabling it
     FINISH_ST    = 6; // all done

  reg [2:0] spi_state, spi_state_nxt; // present and next state
            
     
  // slave select (chip enable) for the SPI of the slave (gopigo)
  parameter C_SPI_SS_ON  = 1'b0; // active low
  parameter C_SPI_SS_OFF = 1'b1;

  reg [3:0] cnt_spi_clk;  // count to 12 for the spi clock divider
  //wire end_ena_2clk;
  reg  ena_spi_clk;  // enable SPI clk
  wire end_cnt_spi_clk;

  // counter that has a variable end of the count
  reg [28:0] cnt_var; // to have time before sending the commands
                      // 25 bits: 33.5 millions -> 12MHz -> ~2.8 segs
  wire cnt_var_ended; // indicates the end of the count
  reg [28:0] end_cnt_val;   // indicates the value at the count finish
  reg  ena_cnt_var;  // enable of the counter

  //parameter C_STARTUP_END = 2**25-1; // for synthesis
                                      // 12MHz -> 83.3 ns  x 33,554,432 ->
                                      // 0,36Hz  -> 2,8 s
  //parameter C_STARTUP_END = 2**22-1; // for synthesis
                                      // 12MHz -> 83.3 ns  x 4,192,304 ->
                                      // 2,86Hz  -> 349ms
  parameter C_STARTUP_END = 1500-1; // for simulation

  //parameter C_EN_SPI_END = 2**20-1; // for synthesis
                                      // 12MHz -> 83.3 ns  x 10**6 ->
                                      // 12Hz  -> 83.3 ms
  //parameter C_EN_SPI_END = 2**16-1; // for synthesis
                                      // 12MHz -> 83.3 ns  x 65000 ->
                                      // 183Hz -> 5.5 ms
  parameter C_EN_SPI_END = 500-1; // for simulation


  // -------------- timer (counter) to wait a configurable amount of time

  always @(posedge rst, posedge clk)
  begin
    if (rst)
      cnt_var <= 0;
    else begin
      if (ena_cnt_var) begin
        if (cnt_var_ended)
          cnt_var <= 0;
        else
          cnt_var <= cnt_var + 1;
      end
      else
        cnt_var <= 0;
    end
  end

  assign cnt_var_ended = (cnt_var == end_cnt_val) ? 1'b1 : 1'b0;


  // -------------- SPI clock generation -----------------------
  // clk divider. Alhambra clock is 12 MHz, 
  // from the logic analyzer, SCK is 500 kHz, then ena_2clk has to be 1MHz
  // count to 12
  always @(posedge rst, posedge clk)
  begin
    if (rst)
      cnt_spi_clk <= 3'b0;
    else begin
      if ((end_cnt_spi_clk) || (ena_spi_clk == 1'b0))
        cnt_spi_clk <= 3'b0;
      else
        cnt_spi_clk <= cnt_spi_clk + 1;
    end
  end

  // end of the count 0 to 11: 1 MHz signal
  assign end_cnt_spi_clk = (cnt_spi_clk == 12-1) ? 1'b1 : 1'b0;
  assign ena_2clk = end_cnt_spi_clk;

  
  // ------------------- ROM MEMORY -----------------------
  // rom address counter
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      rom_addr <= 0;
    else begin
      if (incr_addr)
        rom_addr <= rom_addr + 1;
    end
  end

  // ROM Memory with clk (to use a BRAM)
  always @(posedge clk)
  begin
    spirom_rg <= spirom;
  end

  assign data_spi = spirom_rg;


  // --------------- FINITE STATE MACHINE (FSM) ------------

  // FSM sequential process
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      spi_state <= WAIT_GPG_ST;
    else
      spi_state <= spi_state_nxt;
  end

  // FSM combinational process
  always @ (*)
  begin
    spi_state_nxt = spi_state; // default value
    ena_cnt_var = 1'b0;
    end_cnt_val = C_STARTUP_END;
    spi_ss_n  = C_SPI_SS_OFF; // disable the slave SPI
    incr_addr = 1'b0;
    spi_send  = 1'b0;
    spi_end_tx  = 1'b0; // end of transmission
    ena_spi_clk = 1'b0; // disable the generation of the SPI clock
    case (spi_state)
      WAIT_GPG_ST: begin // wait for a while for the gopigo to boot
        ena_cnt_var = 1'b1;
        end_cnt_val = C_STARTUP_END; // end count value for the counter
        if (cnt_var_ended) begin
          spi_state_nxt = EN_SPI_ST; // 
          ena_cnt_var = 1'b0;
        end
      end
      EN_SPI_ST: begin // enable the SPI slave, and wait some time
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n  = C_SPI_SS_ON; // enable the slave SPI
        ena_cnt_var = 1'b1;
        end_cnt_val = C_EN_SPI_END; // end count value for the counter
        if (cnt_var_ended) begin
          spi_state_nxt = CHECK_ROM_ST; // 
          ena_cnt_var = 1'b0;
        end
      end
      CHECK_ROM_ST: begin // check the ROM to see if it has something to send
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n = C_SPI_SS_ON; // enable the slave SPI
        if (spirom_rg[8]) begin // do not send
          if (spirom_rg[0] == 1'b0) // end of transmission
            spi_state_nxt = FINISH_ST;
          else begin // dont send any more for now,
                     // but maybe there are more commands
            incr_addr = 1'b1;
            spi_state_nxt = EN_SPI2_ST;
          end
        end
        else begin // new byte to send
          if (!busy_spi) begin
            spi_send  = 1'b1;
            incr_addr = 1'b1;
            spi_state_nxt = SPI_SEND_ST;
          end  // if busy keep waiting
        end
      end
      SPI_SEND_ST: begin // just one cycle to send the new byte
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n  = C_SPI_SS_ON; // enable the slave SPI
        spi_send  = 1'b0;  // the send command was activated in the transition
        incr_addr = 1'b0;
        spi_state_nxt = CHECK_ROM_ST;
      end
      EN_SPI2_ST: begin // finishing the transmission, enabling the SPI slave,
                        // before dissabling it
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n = C_SPI_SS_ON; // enable the slave SPI
        ena_cnt_var  = 1'b1;
        end_cnt_val = C_EN_SPI_END; // end count for the counter
        if (cnt_var_ended) begin
          spi_state_nxt = WAIT_GPG_ST; // back to chek
          ena_cnt_var = 1'b0;
        end
      end
      FINISH_ST: begin // transmission ended
        spi_end_tx  = 1'b1; // end of transmission
      end
    endcase
  end



endmodule


