/***********************************************************************

  SPI Master

  This file is part FPGA Libre project http://fpgalibre.sf.net/

  Description:
  Configurable Master Serial Protocol Interface controller.
  This is different than SPI_controller:
  - Modes can be configured with signals, not just generics.
  - The SS logic is left to the upper level.
  - We always return to IDLE before transmitting again.
  - IMPORTANT! assumes that start_i resets the ena_i generator. In
    this way start_i can last 1 clock cycle (no need to wait for
    busy_o to become 1).

  To Do:
  -

  Author:
    - Salvador E. Tropea, salvador en inti gob ar

------------------------------------------------------------------------------

 Copyright (c) 2017 Salvador E. Tropea <salvador en inti gob ar>
 Copyright (c) 2017 Instituto Nacional de Tecnología Industrial

 Distributed under the GPL v2 or newer license

------------------------------------------------------------------------------

 Design unit:      SPI_Master(RTL) (Entity and architecture)
 File name:        spi_master.v
 Note:             None
 Limitations:      None known
 Errors:           None known
 Library:          None
 Dependencies:     IEEE.std_logic_1164
                   IEEE.numeric_std
 Target FPGA:
 Language:         Verilog
 Wishbone:         None
 Synthesis tools:
 Simulation tools: GHDL [Sokcho edition] (0.2x)
 Text editor:      SETEdit 0.5.x

***********************************************************************/


module SPI_Master
  #(
    parameter DATA_W=8   // Transaction data width
   )
   (
    // System
    input  clk_i,
    input  rst_i,
    input  ena_i,  // 2*SCK
    // Interface
    input  start_i,
    input  [DATA_W-1:0] tx_i,
    output [DATA_W-1:0] rx_o, 
    output busy_o, 
    output reg irq_o,
    input  ack_i,  // IRQ Ack
    // Mode options
    input  cpol_i,  // SCK value for idle
    input  dord_i,  // 1 LSB first
    input  cpha_i,  // 1 Trailing sample
    // SPI
    output sclk_o, 
    input  miso_i,
    output mosi_en_o, 
    output mosi_o
   );

//localparam integer CNT_BITS=$clog2(DATA_W);
localparam integer CNT_BITS=3; //log2(8)
localparam IDLE=0, LEADING_SCLK=1, TRAILING_SCLK=2, STOP=3; // state_t

reg  [DATA_W-1:0] reg_r=0;
reg  sclk_r=0;
reg  [CNT_BITS-1:0] bit_cnt=0;
reg  [1:0] state=IDLE; // states for shifter_FSM.
reg  miso_r; // Sampled MISO

always @(posedge clk_i)
begin : shifter_FSM
  if (rst_i)
     begin
     state  <= IDLE;
     sclk_r <= 0;
     irq_o  <= 0;
     miso_r <= 1'b0;
     end
  else
     begin
     if (ack_i)
        irq_o <= 0;
     case (state)
        IDLE:
          if (start_i) // init transaction
             begin
             state   <= LEADING_SCLK;
             reg_r   <= tx_i;
             bit_cnt <= 0;
             end
        LEADING_SCLK:
          if (ena_i)
             begin
             state  <= TRAILING_SCLK;
             sclk_r <= !sclk_r;
             if (!cpha_i) // Leading sample
                miso_r <= miso_i;
             end
        TRAILING_SCLK:
          if (ena_i)
             begin
             sclk_r <= !sclk_r;
             if (bit_cnt==DATA_W-1)
                begin
                state <= STOP;
                bit_cnt <= 0;
                end
             else
                begin
                state <= LEADING_SCLK;
                bit_cnt <= bit_cnt+1;
                end
             if (cpha_i) // Leading sample
                miso_r <= miso_i;
             end
        default: // STOP
          // Maintain the last bit for half the clock to finish
          // If we don't do it we could violate the slave hold time
          if (ena_i)
             begin
             irq_o <= 1;
             state <= IDLE;
             end
     endcase
     // Shift in cases
     if (ena_i)
        if (  (state==TRAILING_SCLK && !cpha_i) ||
            (((state==LEADING_SCLK && bit_cnt) || state==STOP) && cpha_i))
           begin
           // Shift
           if (dord_i)
              // Right
              reg_r <= {miso_r,reg_r[DATA_W-1:1]};
           else
              // Left
              reg_r <= {reg_r[DATA_W-2:0],miso_r};
           end
     end // !rst_i
end // shifter_FSM

// The FSM generates CPOL=0, if CPOL is 1 we just invert
assign sclk_o=sclk_r^cpol_i;
// MOSI takes the LSB or MSB according to DORD
assign mosi_o=dord_i ? reg_r[0] : reg_r[DATA_W-1];
assign mosi_en_o=state==IDLE; //cambio Felipe
assign rx_o=reg_r;
assign busy_o=state!=IDLE;

endmodule // SPI_Master

