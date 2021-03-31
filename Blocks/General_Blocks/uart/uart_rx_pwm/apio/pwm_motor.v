
module pwm_motor
  #(parameter
    //G_FREQ_CLK  = 10**8,  // clock frequency -- 100MHz for Nexys4
    G_FREQ_CLK  = 12000000,  // clock frequency -- 12 MHz for Alhambra II
    G_PWM_FRQ   = 25000   // PWM frequency
  )
  (
    input            rst,
    input            clk,
    input            new_vel_i, // new velocity command
    input            dir_i,     // direction: 0: forward, 1: backwards
    input  [2:0]     vel_i,     // velocity: 0 to 7
    output reg       dir_o1,    // direction output
    output reg       dir_o2,    // direction output (to run: not dir_o1)
    output reg       pwm
  );

  // end of the counter of the frequency divider
  // divided by 8 because we have 8 speeds, so the pulse is for each of
  // the 8 divisions (actually it has 7 speeds and stopped:
  //   0/8, 1/8, 2/8, 3/8, 4/8, 5/8, 6/8, 7/8
  parameter C_PRESCALER_END = G_FREQ_CLK/(G_PWM_FRQ*8);
  
  parameter NB_PRESCALER = $clog2(C_PRESCALER_END-1);
  reg  [NB_PRESCALER-1:0] prescaler_cnt;
  wire            end_prescaler_cnt;
  reg  [2:0]      pwm_cnt; // count up to 7
  wire            end_pwm_cnt;  // when the PWM is at 7 (the last number)
  wire            end_pwm_cycle; // when is at 7 but in the last clk
  reg  [2:0]      vel_rg;       // velocity: 0 to 7, saved in a register
  reg  [2:0]      nxt_vel_rg; 
  reg             dir_rg;       // direction saved in a register
  reg             nxt_dir_rg; // direction to be changed in the next PWM cycle

  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      prescaler_cnt <= 0;
    else begin
      if (end_prescaler_cnt) // end of the count
        prescaler_cnt <= 0;
      else
        prescaler_cnt <= prescaler_cnt + 1;
    end
  end

  assign end_prescaler_cnt =(prescaler_cnt == C_PRESCALER_END-1) ?  1'b1 : 1'b0;

  // count from 0 to 7. The 7 velocities of the PWM
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      pwm_cnt <= 0;
    else begin
      if (end_prescaler_cnt) begin
        if (pwm_cnt == 7)
          pwm_cnt <= 0;
        else 
          pwm_cnt <= pwm_cnt + 1;
      end
    end
  end

  assign end_pwm_cnt = (pwm_cnt == 7) ? 1'b1 : 1'b0;
  assign end_pwm_cycle = (end_pwm_cnt && end_prescaler_cnt) ? 1'b1 : 1'b0;

  // saving the new velocity, but updating it for the next PWM cycle
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      vel_rg <= 0;
      nxt_vel_rg <= 0;
      dir_rg <= 1'b0;
      nxt_dir_rg <= 1'b0;
    end
    else begin
      if (new_vel_i) begin // remmember that there is a new velocity
        nxt_vel_rg <= vel_i;
        nxt_dir_rg <= dir_i;
      end
      else if (end_pwm_cycle) begin
        vel_rg <= nxt_vel_rg; // saving the new velocity, for the next PWM cycle
        dir_rg <= nxt_dir_rg; // saving the new direction,for the next PWM cycle
      end
    end
  end
        

  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      pwm <= 1'b0;
      dir_o1 <= 1'b0;
      dir_o2 <= 1'b0;
    end
    else begin
      if (vel_rg > pwm_cnt) // when pwm_cnt is 7, it is off 87,5%
        pwm <= 1'b1;
      else
        pwm <= 1'b0;
      if (dir_rg) begin
        dir_o1 <= 1'b0;
        dir_o2 <= 1'b1;
      end
      else begin
        dir_o1 <= 1'b1;
        dir_o2 <= 1'b0;
      end
    end
  end

endmodule

