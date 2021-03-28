module top_uart_rx
  (
    input            rst,
    input            clk,
    input            uart_rx,
    output [7:0]     led
  );

  wire uart_dat_ready;
  wire [7:0] uart_data;

  uart_rx
    //#(.G_FREQ_CLK(10**8),  // nexys4
    #(.G_FREQ_CLK(12*(10**6)), // alhambra 2
      .G_BAUD (115200)
    ) i_uart_rg
    (
      .rst       (rst),
      .clk       (clk),
      .uart_rx   (uart_rx),
      .receiving (uart_receiving),
      .dat_ready (uart_dat_ready),
      .dat_o     (uart_data)
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

