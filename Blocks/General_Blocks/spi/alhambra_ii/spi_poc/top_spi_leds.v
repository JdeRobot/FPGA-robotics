
module top_spi_leds
   (
    input  clk,
    input  rst,
    output [7:0] leds,
    // SPI
    output sclk_o, 
    input  miso_i,
    //output mosi_en_o, 
    output mosi_o,
    output ssb,
    output rpi_running  // 1 when running, to inform gopigo
   );

  wire       busy_spi;
  wire       start;
  wire       ack;
  wire       ena_2clk;
  wire [7:0] data_spi;

  wire       cpol = 1'b0;
  wire       dord = 1'b0;
  wire       cpha = 1'b0;

  assign rpi_running = ~rst;

  spi_ledctrl i_spi_ledctrl
  (
    .rst         (rst),
    .clk         (clk),
    //.MISO        (MISO),
    //.data_flash  (data_flash),
    .busy_spi    (busy_spi),
    .leds        (leds),
    //.SCLK        (SCLK),
    //.MOSI        (MOSI),
    .SSBar       (ssb),
    .start       (start),
    .ack         (ack),
    .ena_2clk    (ena_2clk),
    .data_spi    (data_spi)
  );


  SPI_Master i_spi_master
   (
    // System
    .clk_i      (clk),
    .rst_i      (rst),
    .ena_i      (ena_2clk),  // 2*SCK
    // Interface
    .start_i    (start),
    .ack_i      (ack),  // IRQ Ack
    .tx_i       (data_spi),
    .busy_o     (busy_spi), 
    // Mode options
    .cpol_i     (cpol),  // SCK value for idle
    .dord_i     (dord),  // 1 LSB first
    .cpha_i     (cpha),  // 1 Trailing sample
    // SPI
    .sclk_o     (sclk_o), 
    .miso_i     (miso_i),
    //.mosi_en_o  (ssb), 
    .mosi_o     (mosi_o)
   );



endmodule // top_spi_leds

