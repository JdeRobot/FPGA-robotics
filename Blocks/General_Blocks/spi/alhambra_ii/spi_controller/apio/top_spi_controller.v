
module top_spi_controller
   (
    input  clk,
    input  rst,

    input  [7:0] motor_pwm_left_i,  // left pwm motor ca2: -100 to 100
    input  [7:0] motor_pwm_rght_i, // right pwm motor ca2: -100 to 100

    // led eye left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
    input  [24-1:0] led_eye_left_rgb_i, 
    // led eye right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
    input  [24-1:0] led_eye_rght_rgb_i,
    // led blink left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
    input  [24-1:0] led_blink_left_rgb_i,
    // led blink right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
    input  [24-1:0] led_blink_rght_rgb_i,
  
    output [7:0] leds,
    // SPI
    output sclk_o, 
    input  miso_i,
    //output mosi_en_o, 
    output mosi_o,
    output spi_ss_n,  // spi slave select , active low
    output rpi_running  // 1 when running, to inform gopigo
   );

  wire       busy_spi;
  wire       spi_send; // command to send a new SPI byte
  wire       end_tx;  // end of transmission
  wire       ena_2clk;
  wire [7:0] data_spi;

  wire       cpol = 1'b0;
  wire       dord = 1'b0;
  wire       cpha = 1'b0;

  assign rpi_running = ~rst;
  assign leds[7:1] = 0;

  spi_ctrl i_spi_ctrl
  (
    .rst         (rst),
    .clk         (clk),
    .busy_spi    (busy_spi),
    .motor_pwm_left_i     (motor_pwm_left_i),
    .motor_pwm_rght_i     (motor_pwm_rght_i),
    .led_eye_left_rgb_i   (led_eye_left_rgb_i),
    .led_eye_rght_rgb_i   (led_eye_rght_rgb_i),
    .led_blink_left_rgb_i (led_blink_left_rgb_i),
    .led_blink_rght_rgb_i (led_blink_rght_rgb_i),
    .spi_ss_n    (spi_ss_n), // spi slave select
    .spi_send    (spi_send),
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
    .start_i    (spi_send),
    //.ack_i      (spi_end_tx),  // IRQ Ack
    .tx_i       (data_spi),
    .busy_o     (busy_spi), 
    // Mode options
    .cpol_i     (cpol),  // SCK value for idle
    .dord_i     (dord),  // 1 LSB first
    .cpha_i     (cpha),  // 1 Trailing sample
    // SPI
    .sclk_o     (sclk_o), 
    .miso_i     (miso_i),
    .mosi_o     (mosi_o)
   );



endmodule // top_spi_controller

