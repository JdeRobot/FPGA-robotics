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

   //reg [7:0] motor_pwm_left;  // left pwm motor ca2: -100 to 100
   //reg [7:0] motor_pwm_rght; // right pwm motor ca2: -100 to 100

   //reg [15:0] motor_dps_limit; // DPS limit of the 2 motors

   reg [15:0] motor_dps_left; // DPS for the left motor
   reg [15:0] motor_dps_rght; // DPS for the right motor

   // led eye left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
   reg [24-1:0] led_eye_left_rgb; 
   // led eye right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
   reg [24-1:0] led_eye_rght_rgb;
   // led blink left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
   reg [24-1:0] led_blink_left_rgb;
   // led blink right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
   reg [24-1:0] led_blink_rght_rgb;

   // 2's complement number: -512 to 511
   reg signed [10-1:0] servo_1;
   reg signed [10-1:0] servo_2;

   reg btn2_rg1, btn2_rg2;
   wire puls_btn2;

   reg [3:0] cnt_rg;
  parameter
    MOTOR_PWM_LEFT  = 0,
    MOTOR_PWM_RGHT  = 1,
    MOTOR_DPS_LIMIT = 2,
    MOTOR_DPS_LEFT  = 3,
    MOTOR_DPS_RGHT  = 4,
    LED_EYE_LEFT    = 5,
    LED_EYE_RGHT    = 6,
    LED_BLINK_LEFT  = 7,
    LED_BLINK_RGHT  = 8,
    SERVO_1         = 9,
    SERVO_2         = 10;

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
      cnt_rg <= MOTOR_DPS_LEFT; // the first 3 commands are internal (not used)
    else begin
      if (puls_btn2) begin
        if (cnt_rg == SERVO_2) 
          cnt_rg <= 0;
        else
          cnt_rg <= cnt_rg + 1'b1;
      end
    end
  end

  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      //motor_pwm_left <= 0;
      //motor_pwm_rght <= 0;
      //motor_dps_limit <= 16'd0100; 
      motor_dps_left <= 0;
      motor_dps_rght <= 0;
      led_eye_left_rgb <= 0;
      led_eye_rght_rgb <= 0;
      led_blink_left_rgb <= 0;
      led_blink_rght_rgb <= 0;
      servo_1 <= 0;
      servo_2 <= 0;
    end
    else begin
      if (puls_btn2) begin
        case (cnt_rg)
          //MOTOR_PWM_LEFT: begin
          //  if (motor_pwm_left >= 192)
          //    motor_pwm_left <= 0;
          //  else
          //    motor_pwm_left <= motor_pwm_left + 6'd32;
          //end
          //MOTOR_PWM_RGHT: begin
          //  if (motor_pwm_rght >= 192)
          //    motor_pwm_rght <= 0;
          //  else
          //    motor_pwm_rght <= motor_pwm_rght + 6'd32;
          //end
          //MOTOR_DPS_LIMIT: begin
            //if (motor_dps_limit >= 1000)
              //motor_dps_limit <= 0;
            //else
              //motor_dps_limit <= motor_dps_limit + 6'd16;
          //end
          MOTOR_DPS_LEFT: begin
            if (motor_dps_left >= 900)
              motor_dps_left <= 0;
            else
              motor_dps_left <= motor_dps_left + 6'd32;
          end
          MOTOR_DPS_RGHT: begin
            if (motor_dps_rght >= 900)
              motor_dps_rght <= 16'h8000; //negative number
            else
              motor_dps_rght <= motor_dps_rght + 16'd400;
          end
 
          LED_EYE_LEFT: begin
            if (led_eye_left_rgb[7:0] >= 64)
              led_eye_left_rgb <= 0;
            else
              led_eye_left_rgb[7:0] <= led_eye_left_rgb[7:0] + 6'd32;
          end
          LED_EYE_RGHT: begin
            if (led_eye_rght_rgb[15:8] >= 64)
              led_eye_rght_rgb <= 24'd0;
            else
              led_eye_rght_rgb[15:8] <= led_eye_rght_rgb[15:8] + 6'd32;
          end
          LED_BLINK_LEFT: begin
            if (led_blink_left_rgb[23:16] >= 128)
              led_blink_left_rgb <= 24'd0;
            else
              led_blink_left_rgb[23:16] <= led_blink_left_rgb[23:16] + 6'd32;
          end
          LED_BLINK_RGHT: begin
            if (led_blink_rght_rgb[7:0] >= 128)
              led_blink_rght_rgb <= 24'd0;
            else begin
              led_blink_rght_rgb[7:0] <= led_blink_rght_rgb[7:0] + 6'd32;
              led_blink_rght_rgb[15:8] <= led_blink_rght_rgb[15:8] + 6'd32;
              led_blink_rght_rgb[23:16] <= led_blink_rght_rgb[23:16] + 6'd32;
            end
          end
          SERVO_1: begin
            if (servo_1 >= 480) //+511 is the upper limit of 10bit signed number
              servo_1 <= -10'sd500; // -500 should be -90 degrees
            else begin
              servo_1 <= servo_1 + 32; // 5.76 degrees
            end
          end
          SERVO_2: begin
            if (servo_2 <= -480) // -512 is the lower limit of 10bit signed
              servo_2 <= 10'sd500; // start in +90
            else begin
              servo_2 <= servo_2 - 32; // 5.76 degrees
            end
          end
        endcase
      end
    end
  end




  top_spi_controller_wrp i_top_spi_ctrl_wrp
  (
    .rst         (rst),
    .clk         (clk),
    //.motor_pwm_left_i     (motor_pwm_left),
    //.motor_pwm_rght_i     (motor_pwm_rght),
    //.motor_dps_limit_i    (motor_dps_limit),
    .motor_dps_left_i     (motor_dps_left),
    .motor_dps_rght_i     (motor_dps_rght),
    .led_eye_left_rgb_i   (led_eye_left_rgb),
    .led_eye_rght_rgb_i   (led_eye_rght_rgb),
    .led_blink_left_rgb_i (led_blink_left_rgb),
    .led_blink_rght_rgb_i (led_blink_rght_rgb),
    .servo_1_i            (servo_1),
    .servo_2_i            (servo_2),
    .sclk_o               (sclk_o), 
    .miso_i               (miso_i),
    //output mosi_en_o, 
    .mosi_o               (mosi_o),
    .spi_ss_n             (spi_ss_n),  // spi slave select , active low
    .rpi_running          (rpi_running) // 1 when running, to inform gopigo
  );

endmodule // btntest_spi_controller

