// ----------------------
// Felipe Machado Sanchez
// Area de Tecnologia Electronica
// Universidad Rey Juan Carlos
// https://github.com/felipe-m

// FPGA-GoPiGo3 SPI interface

// There are 2 kind of commands, SET and GET.
// +SET commands establish a new value, for example motor_dps or led_brightness
// +GET commands ask GoPiGo3 to send the value

// For SET commands, this module routinely checks if input ports have changed
// if there is any change, it will send the new value to the GoPiGo3 via SPI
// These ports have different widths, which depend on the GoPiGo3 specifications

// For GET commands, this module checks if its corresponding input is '1'
// in that case, this module will send the reading command to de SPI
// The input should only be '1' a clock cycle. This inputs are just one bit
// Once the SPI command is received, it will be available in parallel at its
// corresponding output port.
// There will be also a output bit port that indicates that output value is
// valid. This signal will be available for just one clock cycle



module top_spi_controller
  #(
    // it has to be an integer number, if not integer, round it to the closest
    // if using the PLL, use the resulting pll clock
    //parameter G_CLK_FREQ_MHZ = 12  // Alhambra II 12MHz
    //parameter G_CLK_FREQ_MHZ = 25  // ULX3S 25MHz
    parameter G_CLK_FREQ_MHZ = 50, // using PLL (use the generated frequency)
    //parameter G_CLK_FREQ_MHZ = 100  // using PLL (use the generated frequency)
    parameter G_GPG_TPD = 2 // gopigo motor ticks per degree
  )

(
  input  clk,
  input  rst,

  // SET commands
  input  [7:0] motor_pwm_left_i,  // left pwm motor ca2: -100 to 100
  input  [7:0] motor_pwm_rght_i, // right pwm motor ca2: -100 to 100

  // DPS (degrees per second) Limits for both of the motors.
  // for our purposes, no need to have a different limit for right and left
  // 0-1000 is the preferred speed under standard conditions.
  // 0: no limit
  // Any value over 32 767 will be capped down (not that the motor is capable
  // of going at that speed.
  // Default speed is 300: 0x012C. MSB: 8'h01  LSB: 8'h2C
  input  [15:0] motor_dps_limit_i,

  input  [15:0] motor_dps_left_i, // left motor DPS (degrees per second)
                                  // limited by motor_dps_limit_i
                                  // it is signed
  input  [15:0] motor_dps_rght_i, // right motor DPS (degrees per second)

  // led eye left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
  input  [24-1:0] led_eye_left_rgb_i, 
  // led eye right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
  input  [24-1:0] led_eye_rght_rgb_i,
  // led blink left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
  input  [24-1:0] led_blink_left_rgb_i,
  // led blink right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
  input  [24-1:0] led_blink_rght_rgb_i,

  // Servo pulse length in us, even that is 16 bit.Range valid from 1000 to 2000
  // 1000 is -90degrees, 1500 is 0 degrees, 2000 iis 90 degrees
  input  [16-1:0] servo_spi_1_i,
  input  [16-1:0] servo_spi_2_i,

  // GET commands
  // get left motor ticks. Active just one clock cycle
  input     get_motor_ticks_left_i,  // get left motor ticks 
  input     get_motor_ticks_rght_i,  // get right motor ticks

  output     motor_ticks_left_rdy_o,  // left motor ticks are ready (one clk)
  output     motor_ticks_rght_rdy_o,  // right motor ticks are ready (one clk)
  // motor ticks value are 32 bits in 2's complement
  output [32-1:0] motor_ticks_left_o,  // left motor ticks value
  output [32-1:0] motor_ticks_rght_o,  // right motor ticks value
  
  output [7:0] leds,
  // SPI
  output sclk_o, 
  input  miso_i,
  //output mosi_en_o, 
  output mosi_o,
  output spi_ss_n,  // spi slave select , active low
  output rpi_running  // 1 when running, to inform gopigo
);

  wire  [15:0] motor_tps_limit; // Motor ticks per second limit
                                  // after multipliying degrees per second
                                  // by                 ticks per degree

  wire  [15:0] motor_tps_left; // left motor DPS (degrees per second)
                                  // limited by motor_dps_limit_i
                                  // it is signed
  wire  [15:0] motor_tps_rght; // right motor DPS (degrees per second)

  wire       spi_busy;
  wire       spi_send; // command to send a new SPI byte
  wire       spi_end;  // end of transimission, has to be acknowledged
  wire       ena_2clk;
  wire       spi_ack;  // ackknowledgment of the end of transmission
  wire [7:0] data_to_spi;   // data to send out to SPI
  wire [7:0] data_from_spi; // data received from the SPI

  wire       cpol = 1'b0;
  wire       dord = 1'b0;
  wire       cpha = 1'b0;

  assign rpi_running = ~rst;
  assign leds[7:1] = 0;

  assign motor_tps_limit = motor_dps_limit_i * G_GPG_TPD;
  assign motor_tps_left  = motor_dps_left_i  * G_GPG_TPD;
  assign motor_tps_rght  = motor_dps_rght_i  * G_GPG_TPD;

  spi_ctrl
  #(.G_CLK_FREQ_MHZ(G_CLK_FREQ_MHZ)
  ) i_spi_ctrl
  (
    .rst         (rst),
    .clk         (clk),
    .motor_pwm_left_i     (motor_pwm_left_i),
    .motor_pwm_rght_i     (motor_pwm_rght_i),
    .motor_tps_limit_i    (motor_tps_limit),
    .motor_tps_left_i     (motor_tps_left),
    .motor_tps_rght_i     (motor_tps_rght),
    .led_eye_left_rgb_i   (led_eye_left_rgb_i),
    .led_eye_rght_rgb_i   (led_eye_rght_rgb_i),
    .led_blink_left_rgb_i (led_blink_left_rgb_i),
    .led_blink_rght_rgb_i (led_blink_rght_rgb_i),
    .servo_spi_1_i        (servo_spi_1_i),
    .servo_spi_2_i        (servo_spi_2_i),

    .get_motor_ticks_left_i (get_motor_ticks_left_i),
    .get_motor_ticks_rght_i (get_motor_ticks_rght_i),
    .motor_ticks_left_rdy_o (motor_ticks_left_rdy_o),
    .motor_ticks_rght_rdy_o (motor_ticks_rght_rdy_o),
    .motor_ticks_left_o     (motor_ticks_left_o),
    .motor_ticks_rght_o     (motor_ticks_rght_o),

    .spi_ss_n      (spi_ss_n), // spi slave select
    .spi_busy      (spi_busy),
    .spi_end       (spi_end),
    .data_from_spi (data_from_spi),
    .ena_2clk      (ena_2clk),
    .spi_send      (spi_send),
    .spi_ack       (spi_ack),
    .data_to_spi   (data_to_spi)
  );


  SPI_Master i_spi_master
   (
    // System
    .clk_i      (clk),
    .rst_i      (rst),
    .ena_i      (ena_2clk),  // 2*SCK
    // Interface SPI master-FPGA control
    .start_i    (spi_send),
    .tx_i       (data_to_spi),
    .rx_o       (data_from_spi),
    .busy_o     (spi_busy), 
    .irq_o      (spi_end), 
    .ack_i      (spi_ack),
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

