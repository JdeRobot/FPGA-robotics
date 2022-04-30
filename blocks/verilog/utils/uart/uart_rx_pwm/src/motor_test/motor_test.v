module motor_test
  (
    input            sw1,
    output           motor1_dir1,
    output           motor1_dir2,
    output           motor1_pwm,
    output           motor2_dir1,
    output           motor2_dir2,
    output           motor2_pwm,
    output           led
  );

  assign led = sw1;

  assign motor1_dir1 = 1'b1;
  assign motor1_dir2 = 1'b0;
  assign motor1_pwm = 1'b1;

  assign motor2_dir1 = 1'b0;
  assign motor2_dir2 = 1'b1;
  assign motor2_pwm = 1'b1;

endmodule

