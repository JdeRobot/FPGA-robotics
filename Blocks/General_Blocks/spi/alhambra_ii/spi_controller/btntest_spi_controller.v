// module to test the spi_controller, the test in in hardware
// using btn2

module btntest_spi_controller
   (
    input  clk,
    input  rst,
    input  btn2,

    //output [7:0]   leds, 
  
    // SPI
    output sclk_o, 
    input  miso_i,
    //output mosi_en_o, 
    output mosi_o,
    output spi_ss_n,  // spi slave select , active low
    output rpi_running  // 1 when running, to inform gopigo
   );

   reg [7:0] motor_pwm_left;  // left pwm motor ca2: -100 to 100
   reg [7:0] motor_pwm_rght; // right pwm motor ca2: -100 to 100

   // led eye left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
   reg [24-1:0] led_eye_left_rgb; 
   // led eye right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
   reg [24-1:0] led_eye_rght_rgb;
   // led blink left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
   reg [24-1:0] led_blink_left_rgb;
   // led blink right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
   reg [24-1:0] led_blink_rght_rgb;

   reg btn2_rg1, btn2_rg2;
   wire puls_btn2;

   reg [2:0] cnt_rg;
  parameter
    MOTOR_PWM_LEFT = 0,
    MOTOR_PWM_RGHT = 1,
    LED_EYE_LEFT   = 2,
    LED_EYE_RGHT   = 3,
    LED_BLINK_LEFT = 4,
    LED_BLINK_RGHT = 5;

  // btn2 will change the values of motor_pwm_left_
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      btn2_rg1 <= 1'b0;
      btn2_rg2 <= 1'b0;
    end
    else begin
      btn2_rg1 <= btn2;
      btn2_rg2 <= btn2_rg1;
    end
  end

  assign puls_btn2 = (btn2_rg1 && ~btn2_rg2) ? 1'b1 : 1'b0;

  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      cnt_rg <= 0;
    else begin
      if (puls_btn2) begin
        if (cnt_rg == LED_BLINK_RGHT) 
          cnt_rg <= 0;
        else
          cnt_rg <= cnt_rg + 1'b1;
      end
    end
  end

  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      motor_pwm_left <= 0;
      motor_pwm_rght <= 0;
      led_eye_left_rgb <= 0;
      led_eye_rght_rgb <= 0;
      led_blink_left_rgb <= 0;
      led_blink_rght_rgb <= 0;
    end
    else begin
      if (puls_btn2) begin
        case (cnt_rg)
          MOTOR_PWM_LEFT: begin
            if (motor_pwm_left >= 192)
              motor_pwm_left <= 0;
            else
              motor_pwm_left <= motor_pwm_left + 6'd32;
          end
          MOTOR_PWM_RGHT: begin
            if (motor_pwm_rght >= 192)
              motor_pwm_rght <= 0;
            else
              motor_pwm_rght <= motor_pwm_rght + 6'd32;
          end
          LED_EYE_LEFT: begin
            if (led_eye_left_rgb[7:0] >= 192)
              led_eye_left_rgb <= 0;
            else
              led_eye_left_rgb[7:0] <= led_eye_left_rgb[7:0] + 6'd32;
          end
          LED_EYE_RGHT: begin
            if (led_eye_rght_rgb[15:8] >= 192)
              led_eye_rght_rgb <= 0;
            else
              led_eye_rght_rgb[15:8] <= led_eye_rght_rgb[15:8] + 6'd32;
          end
          LED_BLINK_LEFT: begin
            if (led_blink_left_rgb[23:16] >= 192)
              led_blink_left_rgb <= 0;
            else
              led_blink_left_rgb[23:16] <= led_blink_left_rgb[23:16] + 6'd32;
          end
          LED_BLINK_RGHT: begin
            if (led_blink_rght_rgb[7:0] >= 192)
              led_blink_rght_rgb <= 0;
            else begin
              led_blink_rght_rgb[7:0] <= led_blink_rght_rgb[7:0] + 6'd32;
              led_blink_rght_rgb[15:8] <= led_blink_rght_rgb[15:8] + 6'd32;
              led_blink_rght_rgb[23:16] <= led_blink_rght_rgb[23:16] + 6'd32;
            end
          end
        endcase
      end
    end
  end




  top_spi_controller i_top_spi_ctrl
  (
    .rst         (rst),
    .clk         (clk),
    .motor_pwm_left_i     (motor_pwm_left),
    .motor_pwm_rght_i     (motor_pwm_rght),
    .led_eye_left_rgb_i   (led_eye_left_rgb),
    .led_eye_rght_rgb_i   (led_eye_rght_rgb),
    .led_blink_left_rgb_i (led_blink_left_rgb),
    .led_blink_rght_rgb_i (led_blink_rght_rgb),
    .sclk_o               (sclk_o), 
    .miso_i               (miso_i),
    //output mosi_en_o, 
    .mosi_o               (mosi_o),
    .spi_ss_n             (spi_ss_n),  // spi slave select , active low
    .rpi_running          (rpi_running) // 1 when running, to inform gopigo
  );

endmodule // btntest_spi_controller

