module top_uart_rx
  (
    input            rst,
    input            clk,
    input            uart_rx_i,
    output           motor1_dir1,
    output           motor1_dir2,
    output           motor1_pwm,
    output           motor2_dir1,
    output           motor2_dir2,
    output           motor2_pwm,
    output [7:0]     led
  );

  wire uart_dat_ready;
  wire [7:0] uart_data;

  uart_rx
    //#(.G_FREQ_CLK(10**8),  // nexys4
    #(.G_FREQ_CLK(12*(10**6)), // alhambra 2
      .G_BAUD (115200)
    ) i_uart_rx
    (
      .rst       (rst),
      .clk       (clk),
      .uart_rx_i (uart_rx_i),
      .receiving (uart_receiving),
      .dat_ready (uart_dat_ready),
      .dat_o     (uart_data)
    );

  pwm_motor pwm1
    (
      .rst       (rst),
      .clk       (clk),
      .new_vel_i (uart_dat_ready),
      .dir_i     (uart_data[3]),
      .vel_i     (uart_data[2:0]),
      .dir_o1    (motor1_dir1),
      .dir_o2    (motor1_dir2),
      .pwm       (motor1_pwm)
    );

  pwm_motor pwm2
    (
      .rst       (rst),
      .clk       (clk),
      .new_vel_i (uart_dat_ready),
      .dir_i     (uart_data[7]),
      .vel_i     (uart_data[6:4]),
      .dir_o1    (motor2_dir1),
      .dir_o2    (motor2_dir2),
      .pwm       (motor2_pwm)
    );

  uart_leds i_leds
    (
      .rst       (rst),
      .clk       (clk),
      .dat_ready (uart_dat_ready),
      .uart_data (uart_data),
      .leds      (led)
    );

endmodule

