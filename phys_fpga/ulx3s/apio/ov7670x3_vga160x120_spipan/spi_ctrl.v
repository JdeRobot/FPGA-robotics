// ----------------------
// Felipe Machado Sanchez
// Area de Tecnologia Electronica
// Universidad Rey Juan Carlos
// https://github.com/felipe-m

// Clock frequency defined with parameter G_CLK_FREQ_MHZ

//Receives Motor PWM and leds commands for the GoPiGo3, and send them via SPI
//before sending them, check if there has been any change since the last sending

module spi_ctrl
  #(
    // it has to be an integer number, if not integer, round it to the closest
    //parameter G_CLK_FREQ_MHZ = 12  // Alhambra II 12MHz
    //parameter G_CLK_FREQ_MHZ = 25  // ULX3S 25
    parameter G_CLK_FREQ_MHZ = 50  // using PLL
  )
  (
    input            rst,
    input            clk,

    // SET commands
    input  [7:0] motor_pwm_left_i,  // left pwm motor ca2: -100 to 100
    input  [7:0] motor_pwm_rght_i, // right pwm motor ca2: -100 to 100

    // TPS (ticks per second) Limits for both of the motors.
    // for our purposes, no need to have a different limit for right and left
    // 0-1000 is the preferred speed under standard conditions.
    // 0: no limit
    // Any value over 32 767 will be capped down (not that the motor is capable
    // of going at that speed.
    // Default speed is 300: 0x012C. MSB: 8'h01  LSB: 8'h2C
    input  [15:0] motor_tps_limit_i,

    input  [15:0] motor_tps_left_i, // left motor TPS (ticks per second)
                                    // limited by motor_tps_limit_i
    input  [15:0] motor_tps_rght_i, // right motor TPS (ticks per second)


    // led eye left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
    input  [24-1:0] led_eye_left_rgb_i, 

    // led eye right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
    input  [24-1:0] led_eye_rght_rgb_i,

    // led blink left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
    input  [24-1:0] led_blink_left_rgb_i,

    // led blink right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
    input  [24-1:0] led_blink_rght_rgb_i,

    // Servo pulse length in us, even that is 16 bit. Range valid from 1000 to 2000
    // 1000 is -90degrees, 1500 is 0 degrees, 2000 iis 90 degrees
    input  [16-1:0] servo_spi_1_i,
    input  [16-1:0] servo_spi_2_i,

    // GET commands
    // get left motor ticks. Active just one clock cycle
    input     get_motor_ticks_left_i,  // get left motor ticks 
    input     get_motor_ticks_rght_i,  // get right motor ticks

    output reg motor_ticks_left_rdy_o,  // left motor ticks are ready (one clk)
    output reg motor_ticks_rght_rdy_o,  // right motor ticks are ready (one clk)
    // motor ticks value are 32 bits in 2's complement
    output reg [32-1:0] motor_ticks_left_o,  // left motor ticks value
    output reg [32-1:0] motor_ticks_rght_o,  // right motor ticks value

    output reg       spi_ss_n, // spi slave select, active low

    input            spi_busy,
    input            spi_end,  // transmission finished
    input      [7:0] data_from_spi,
    output           ena_2clk, // ena spi, twice the frequency
    output reg       spi_send, // command to send a new SPI byte
    output           spi_ack,
    output     [7:0] data_to_spi
  );

  // register of the inputs, to check if they have been modified since
  // the last update to the SPI
  reg  [8-1:0] motor_pwm_left_rg; // 0: left pwm motor ca2: -100 to 100
  reg  [8-1:0] motor_pwm_rght_rg; // 1: right pwm motor ca2: -100 to 100

  reg  [16-1:0] motor_tps_limit_rg; // TPS limit for both motors (ticks/second)
  reg  [16-1:0] motor_tps_left_rg; // TPS for left motor (ticks/second)
  reg  [16-1:0] motor_tps_rght_rg; // TPS for right motor (ticks/second)

  // led eye left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
  reg  [24-1:0] led_eye_left_rgb_rg; // 2

  // led eye right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
  reg  [24-1:0] led_eye_rght_rgb_rg; // 3

  // led blink left rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
  reg  [24-1:0] led_blink_left_rgb_rg; // 4

  // led blink right rgb color: 0 to 255 each channel R[23:16] G[15:8] B[7:0]
  reg  [24-1:0] led_blink_rght_rgb_rg; // 5

  reg  [16-1:0] servo_spi_1_rg; // 1
  reg  [16-1:0] servo_spi_2_rg; // 2

  // registering the get commands. Get commands input ports are only active one
  // clock cycle. These registers are '1' until they have been attended
  reg  get_motor_ticks_left_rg; 
  reg  get_motor_ticks_rght_rg; 

  // register to save the 4 bytes received from the SPI
  reg  [32-1:0] motor_ticks_left_rg;
  reg  [32-1:0] motor_ticks_rght_rg;

  // Register type
  localparam
    MOTOR_PWM_LEFT    =  0,
    MOTOR_PWM_RGHT    =  1,
    MOTOR_TPS_LIMIT   =  2,
    MOTOR_TPS_LEFT    =  3,
    MOTOR_TPS_RGHT    =  4,
    LED_EYE_LEFT      =  5,
    LED_EYE_RGHT      =  6,
    LED_BLINK_LEFT    =  7,
    LED_BLINK_RGHT    =  8,
    SERVO_1           =  9,
    SERVO_2           = 10,
    GET_MOT_TCKS_LEFT = 11,
    GET_MOT_TCKS_RGHT = 12;

  localparam NUM_RGS = GET_MOT_TCKS_RGHT;
  // counter to check all the register 0 to 10
  reg  [3:0] cnt_chk_rgs; // range depends on NUM_RGS
  // indicates if there has been any change in the registers having checked all
  // of them
  wire   cnt_chk_rgs_ended;
  // comparison between the input and the last sent command (registered)
  // This is for SET commands
  reg [32-1:0] compare_port; // input port to compare
  reg [32-1:0] compare_reg;  // The largest argument so far has 4 bytes
  //reg    any_rg_change;

  integer indx; // for the loop
 
  // 1: if the new command is the same as the last sent. Depends on the actual
  // register that is being compared (cnt_chk_rgs)
  wire    rg_change;

  // counter for the SPI registers
  reg [5:0] cnt_spi_byte;
  reg       incr_spi_byte; // increment the the SPI byte counter

  // FSM states to send SPI
  localparam
     CHK_NEW_SPI    = 0, // check if there is any new SPI command to be sent
     UPDATE_SPI_RGS = 1, // update the SPI registers, to send them
     EN_SPI_ST      = 2, // to have some time to active the SPI enable
                         // before sending any command
     WAIT_SPI_ST    = 3, // wait for the SPI to be ready (not busy)
     SPI_SEND_ST    = 4, // Send the SPI byte
     SPI_SEND2_ST   = 5, // wait for the SPI to be busy
     EN_SPI2_ST     = 6, // keeping the SPI enabled before dissabling it
     FINISH_ST      = 7; // Finish, and back to 0

  reg [2:0] spi_state, spi_state_nxt; // present and next state

  // Maximum number of bytes to be sent in a command to SPI
  // dont think there are more than 15 bytes to be sent via SPI
  localparam N_SPI_BYTES = 16;
  reg [8-1:0] spi_bytes [N_SPI_BYTES-1:0];
  parameter NB_SPI_BYTES = $clog2(N_SPI_BYTES); // number of bits
  reg [NB_SPI_BYTES-1:0] last_spi_byte; // indicates the last SPI byte to be sent
     
  // slave select (chip enable) for the SPI of the slave (gopigo)
  parameter C_SPI_SS_ON  = 1'b0; // active low
  parameter C_SPI_SS_OFF = 1'b1;

  // number of bits of the counter for the SPI clock
  parameter NB_CNT_SPICLK = $clog2(G_CLK_FREQ_MHZ);

  reg [NB_CNT_SPICLK-1:0] cnt_spi_clk;  // count to 12 for the spi clock divider
  //wire end_ena_2clk;
  reg  ena_spi_clk;  // enable SPI clk
  wire end_cnt_spi_clk;

  // counter that has a variable end of the count
  reg [28:0] cnt_var; // to have time before sending the commands
                      // 25 bits: 33.5 millions -> 12MHz -> ~2.8 segs
  wire cnt_var_ended; // indicates the end of the count
  //reg [28:0] end_cnt_val;   // indicates the value at the count finish
  reg  ena_cnt_var;  // enable of the counter

  reg  spi_end_rg ; // register spi_end
  // done sending a full SPI command (composed by various bytes)
  reg  spi_cmd_done;
  reg  spi_cmd_done_rg;

  //parameter C_STARTUP_END = 2**25-1; // for synthesis
                                      // 12MHz -> 83.3 ns  x 33,554,432 ->
                                      // 0,36Hz  -> 2,8 s
  //parameter C_STARTUP_END = 2**22-1; // for synthesis
                                      // 12MHz -> 83.3 ns  x 4,192,304 ->
                                      // 2,86Hz  -> 349ms
  //parameter C_STARTUP_END = 1500-1; // for simulation

  //parameter C_EN_SPI_END = 2**20-1; // for synthesis
                                      // 12MHz -> 83.3 ns  x 10**6 ->
                                      // 12Hz  -> 83.3 ms
  //parameter C_EN_SPI_END = 2**16-1; // for synthesis
                                      // 12MHz -> 83.3 ns  x 65000 ->
                                      // 183Hz -> 5.5 ms
  parameter C_EN_SPI_END = 500-1; // for simulation


  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      motor_ticks_left_rg <= 32'h00000000;  // left motor ticks value
      motor_ticks_rght_rg <= 32'h00000000;  // right motor ticks value
    end
    else begin
      if (spi_end) begin
        case (cnt_spi_byte)
          8'h03: begin // in this case we should check if the SPI data is 0xA5
                    // which is the code sent by GoPiGo to acknowledge
            if (data_from_spi != 8'hA5) begin
              if (cnt_chk_rgs == GET_MOT_TCKS_LEFT)
                motor_ticks_left_rg <= 32'hFFFFFFFF; // to indicate an error
              else if (cnt_chk_rgs == GET_MOT_TCKS_RGHT)
                motor_ticks_rght_rg <= 32'hFFFFFFFF; // to indicate an error
            end
          end
          8'h04: begin // MS byte (byte 3)
            if (cnt_chk_rgs == GET_MOT_TCKS_LEFT)
              motor_ticks_left_rg[31:24] <= data_from_spi;
            else if (cnt_chk_rgs == GET_MOT_TCKS_RGHT)
              motor_ticks_rght_rg[31:24] <= data_from_spi;
          end
          8'h05: begin // byte 2
            if (cnt_chk_rgs == GET_MOT_TCKS_LEFT)
              motor_ticks_left_rg[23:16] <= data_from_spi;
            else if (cnt_chk_rgs == GET_MOT_TCKS_RGHT)
              motor_ticks_rght_rg[23:16] <= data_from_spi;
          end
          8'h06: begin // byte 1
            if (cnt_chk_rgs == GET_MOT_TCKS_LEFT)
              motor_ticks_left_rg[15:8] <= data_from_spi;
            else if (cnt_chk_rgs == GET_MOT_TCKS_RGHT)
              motor_ticks_rght_rg[15:8] <= data_from_spi;
          end
          8'h07: begin // byte 0 (LS byte)
            if (cnt_chk_rgs == GET_MOT_TCKS_LEFT)
              motor_ticks_left_rg[7:0] <= data_from_spi;
            else if (cnt_chk_rgs == GET_MOT_TCKS_RGHT)
              motor_ticks_rght_rg[7:0] <= data_from_spi;
          end
        endcase
      end
    end
  end

  // update new received values
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      motor_ticks_left_o <= 32'h00000000;  // left motor ticks value
      motor_ticks_rght_o <= 32'h00000000;  // right motor ticks value
      motor_ticks_left_rdy_o <= 1'b0;
      motor_ticks_rght_rdy_o <= 1'b0;
    end
    else begin
      motor_ticks_left_rdy_o <= 1'b0;
      motor_ticks_rght_rdy_o <= 1'b0; // active just one clock cycle
      // spi_cmd_done is one clock cycle early, data not ready
      if (spi_cmd_done_rg) begin
        if (cnt_chk_rgs == GET_MOT_TCKS_LEFT) begin
          motor_ticks_left_o <= motor_ticks_left_rg;
          motor_ticks_left_rdy_o <= 1'b1;
        end
        else if (cnt_chk_rgs == GET_MOT_TCKS_RGHT) begin
          motor_ticks_rght_o <= motor_ticks_rght_rg;
          motor_ticks_rght_rdy_o <= 1'b1;
        end
      end
    end
  end

  // pulse detect of spi_end, and registering spi_cmd_done
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      spi_end_rg <= 1'b0;
      spi_cmd_done_rg <= 1'b0;
    end
    else begin
      spi_end_rg <= spi_end;
      spi_cmd_done_rg <= spi_cmd_done;
    end
  end
    
  // edge detector for spi_end, since it is an interal signal,
  // just with one flip-flop. Used also to acknowledge, thats why the name
  assign spi_ack = (spi_end & ~spi_end_rg) ? 1'b1 : 1'b0;
 

      

  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      last_spi_byte <= 0;
      spi_bytes[0] <= 8'h08; // SPI address, always first byte to be sent
      for (indx=1; indx < N_SPI_BYTES; indx=indx+1) begin
        spi_bytes[indx] <= 8'h00;
      end
    end
    else begin
      if (spi_state == CHK_NEW_SPI) begin
        last_spi_byte <= 0;
        spi_bytes[0] <= 8'h08; // SPI address, always first byte to be sent
        // all registers to zero
        for (indx=1; indx < N_SPI_BYTES; indx=indx+1) begin
          spi_bytes[indx] <= 8'h00;
        end
      end
      else if (spi_state == UPDATE_SPI_RGS) begin
        case (cnt_chk_rgs)
          MOTOR_PWM_LEFT: begin
            spi_bytes[1] <= 8'h0A; // SPI Message type SET_MOTOR_PWM
            spi_bytes[2] <= 8'h01; // MOTOR_LEFT
            spi_bytes[3] <= motor_pwm_left_i; // PWM speed -100 to 100
            last_spi_byte <= 3; //4 bytes
          end
          MOTOR_PWM_RGHT: begin
            spi_bytes[1] <= 8'h0A; // SPI Message type SET_MOTOR_PWM
            spi_bytes[2] <= 8'h02; // MOTOR_RIGHT
            spi_bytes[3] <= motor_pwm_rght_i; // PWM speed -100 to 100
            last_spi_byte <= 3; //4 bytes
          end
          MOTOR_TPS_LIMIT: begin
            spi_bytes[1] <= 8'h0F; // SPI Message type SET_MOTOR_LIMITS
            spi_bytes[2] <= 8'h03; // For both motors: MOTOR_RIGHT & MOTOR_LEFT
            spi_bytes[3] <= 8'h00; // Power limit in percent=0. Limit in TPS
                                   // not power
            spi_bytes[4] <= motor_tps_limit_i[15:8]; // MSB TPS limit
            spi_bytes[5] <= motor_tps_limit_i[7:0]; // LSB TPS limit
            last_spi_byte <= 5; // 6 bytes
          end
          MOTOR_TPS_LEFT: begin
            spi_bytes[1] <= 8'h0E; // SPI Message type SET_MOTOR_TPS
            spi_bytes[2] <= 8'h01; // For left motor: MOTOR_LEFT
            spi_bytes[3] <= motor_tps_left_i[15:8]; // MSB TPS left
            spi_bytes[4] <= motor_tps_left_i[7:0]; // LSB TPS left
            last_spi_byte <= 4; // 5 bytes
          end
          MOTOR_TPS_RGHT: begin
            spi_bytes[1] <= 8'h0E; // SPI Message type SET_MOTOR_TPS
            spi_bytes[2] <= 8'h02; // For left motor: MOTOR_RIGHT
            spi_bytes[3] <= motor_tps_rght_i[15:8]; // MSB TPS right
            spi_bytes[4] <= motor_tps_rght_i[7:0]; // LSB TPS right
            last_spi_byte <= 4; // 5 bytes
          end
          LED_EYE_LEFT: begin
            spi_bytes[1] <= 8'h06; // SPI Message type SET_LED
            spi_bytes[2] <= 8'h02; // LED_EYE_LEFT
            spi_bytes[3] <= led_eye_left_rgb_i[23:16]; // Red 0 to 255
            spi_bytes[4] <= led_eye_left_rgb_i[15:8];  // Green 0 to 255
            spi_bytes[5] <= led_eye_left_rgb_i[7:0];   // Blue 0 to 255
            last_spi_byte <= 5; // 6 bytes
          end
          LED_EYE_RGHT: begin
            spi_bytes[1] <= 8'h06; // SPI Message type SET_LED
            spi_bytes[2] <= 8'h01; // LED_EYE_RIGHT
            spi_bytes[3] <= led_eye_rght_rgb_i[23:16]; // Red 0 to 255
            spi_bytes[4] <= led_eye_rght_rgb_i[15:8];  // Green 0 to 255
            spi_bytes[5] <= led_eye_rght_rgb_i[7:0];   // Blue 0 to 255
            last_spi_byte <= 5; // 6 bytes
          end
          LED_BLINK_LEFT: begin
            spi_bytes[1] <= 8'h06; // SPI Message type SET_LED
            spi_bytes[2] <= 8'h04; // LED_BLINK_LEFT
            spi_bytes[3] <= led_blink_left_rgb_i[23:16]; // Red 0 to 255
            spi_bytes[4] <= led_blink_left_rgb_i[15:8];  // Green 0 to 255
            spi_bytes[5] <= led_blink_left_rgb_i[7:0];   // Blue 0 to 255
            last_spi_byte <= 5; // 6 bytes
          end
          LED_BLINK_RGHT: begin
            spi_bytes[1] <= 8'h06; // SPI Message type SET_LED
            spi_bytes[2] <= 8'h08; // LED_BLINK_RIGHT
            spi_bytes[3] <= led_blink_rght_rgb_i[23:16]; // Red 0 to 255
            spi_bytes[4] <= led_blink_rght_rgb_i[15:8];  // Green 0 to 255
            spi_bytes[5] <= led_blink_rght_rgb_i[7:0];   // Blue 0 to 255
            last_spi_byte <= 5; // 6 bytes
          end
          SERVO_1: begin
            spi_bytes[1] <= 8'h09; // SPI Message type SET_SERVO
            spi_bytes[2] <= 8'h01; // SERVO 1
            spi_bytes[3] <= servo_spi_1_i[15:8]; // pulse us MSB
            spi_bytes[4] <= servo_spi_1_i[7:0];  // pulse us LSB
            last_spi_byte <= 4; // 5 bytes
          end
          SERVO_2: begin
            spi_bytes[1] <= 8'h09; // SPI Message type SET_SERVO
            spi_bytes[2] <= 8'h02; // SERVO 2
            spi_bytes[3] <= servo_spi_2_i[15:8]; // pulse us MSB
            spi_bytes[4] <= servo_spi_2_i[7:0];  // pulse us LSB
            last_spi_byte <= 4; // 5 bytes
          end
          GET_MOT_TCKS_LEFT: begin
            spi_bytes[1] <= 8'h11; // SPI Message type GET_MOTOR_ENCODER_LEFT
            spi_bytes[2] <= 8'h00; // 1: 6 bytes to zero to receive
            spi_bytes[3] <= 8'h00; // 2: 6 bytes to zero to receive 
            spi_bytes[4] <= 8'h00; // 3: 6 bytes to zero to receive
            spi_bytes[5] <= 8'h00; // 4: 6 bytes to zero to receive
            spi_bytes[5] <= 8'h00; // 5: 6 bytes to zero to receive
            spi_bytes[5] <= 8'h00; // 6: 6 bytes to zero to receive
            last_spi_byte <= 7; // total of 8 bytes
          end
          GET_MOT_TCKS_RGHT: begin
            spi_bytes[1] <= 8'h12; // SPI Message type GET_MOTOR_ENCODER_RIGHT
            spi_bytes[2] <= 8'h00; // 1: 6 bytes to zero to receive
            spi_bytes[3] <= 8'h00; // 2: 6 bytes to zero to receive 
            spi_bytes[4] <= 8'h00; // 3: 6 bytes to zero to receive
            spi_bytes[5] <= 8'h00; // 4: 6 bytes to zero to receive
            spi_bytes[5] <= 8'h00; // 5: 6 bytes to zero to receive
            spi_bytes[5] <= 8'h00; // 6: 6 bytes to zero to receive
            last_spi_byte <= 7; // total of 8 bytes
          end

        endcase
      end
    end
  end

  // register the new commands that have been sent (are just going to be sent)
  // The GET commands work differently, they are kept active (1) until sent
  // the inputs are only active one clock cycle, but the registered are kept
  // active until sent
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      motor_pwm_left_rg <= 0;      // 0
      motor_pwm_rght_rg <= 0;      // 1
      motor_tps_limit_rg <= 0;     // 2
      motor_tps_left_rg <= 0;      // 3
      motor_tps_rght_rg <= 0;      // 4
      led_eye_left_rgb_rg <= 0;    // 5
      led_eye_rght_rgb_rg <= 0;    // 6
      led_blink_left_rgb_rg <= 0;  // 7
      led_blink_rght_rgb_rg <= 0;  // 8
      servo_spi_1_rg        <= 0;  // 9
      servo_spi_2_rg        <= 0;  //10
      get_motor_ticks_left_rg <= 1'b0; //11
      get_motor_ticks_rght_rg <= 1'b0; //12
    end
    else begin
      if (spi_state == UPDATE_SPI_RGS) begin
        case (cnt_chk_rgs)
          MOTOR_PWM_LEFT:
            motor_pwm_left_rg <= motor_pwm_left_i;
          MOTOR_PWM_RGHT:
            motor_pwm_rght_rg <= motor_pwm_rght_i;
          MOTOR_TPS_LIMIT:
            motor_tps_limit_rg <= motor_tps_limit_i;
          MOTOR_TPS_LEFT:
            motor_tps_left_rg <= motor_tps_left_i;
          MOTOR_TPS_RGHT:
            motor_tps_rght_rg <= motor_tps_rght_i;
          LED_EYE_LEFT:
            led_eye_left_rgb_rg <= led_eye_left_rgb_i;
          LED_EYE_RGHT:
            led_eye_rght_rgb_rg <= led_eye_rght_rgb_i;
          LED_BLINK_LEFT:
            led_blink_left_rgb_rg <= led_blink_left_rgb_i;
          LED_BLINK_RGHT:
            led_blink_rght_rgb_rg <= led_blink_rght_rgb_i;
          SERVO_1:
            servo_spi_1_rg <= servo_spi_1_i;
          SERVO_2:
            servo_spi_2_rg <= servo_spi_2_i;
          GET_MOT_TCKS_LEFT:
            get_motor_ticks_left_rg <= 1'b0;
          GET_MOT_TCKS_RGHT:
            get_motor_ticks_rght_rg <= 1'b0;
        endcase
      end
      // if a new GET command, set to one, they are sent back to inactive
      // when sent
      if (get_motor_ticks_left_i)
        get_motor_ticks_left_rg <= 1'b1;
      if (get_motor_ticks_rght_i)
        get_motor_ticks_rght_rg <= 1'b1;
    end
  end

  // counter to check all the registers
  always @(posedge rst, posedge clk)
  begin
    if (rst)
      cnt_chk_rgs <= 0;
    else begin
      // only counts when checking if there are new SPI commands to be sent
      if (spi_state == CHK_NEW_SPI) begin
        if (rg_change==1'b0) begin // if no change, check the next one
          if (cnt_chk_rgs_ended)
            cnt_chk_rgs <= 0;
          else
            cnt_chk_rgs <= cnt_chk_rgs + 1'b1;
        end
      end
    end
  end

  assign cnt_chk_rgs_ended = (cnt_chk_rgs == NUM_RGS) ? 1'b1 : 1'b0;

  // depending on the register to be checked (given by cnt_chk_rgs)
  // the register length is different. In order to use just one comparator, we'll
  // select the registers and the inputs to be compared
  always @(*)
  begin
    compare_port = 32'b0;
    compare_reg = 32'b0;
    case (cnt_chk_rgs)
      MOTOR_PWM_LEFT: begin // one byte
        compare_port[7:0] = motor_pwm_left_i;
        compare_reg [7:0] = motor_pwm_left_rg;
      end
      MOTOR_PWM_RGHT: begin // one byte
        compare_port[7:0] = motor_pwm_rght_i;
        compare_reg [7:0] = motor_pwm_rght_rg;
      end
      MOTOR_TPS_LIMIT: begin // two bytes
        compare_port[16-1:0] = motor_tps_limit_i;
        compare_reg [16-1:0] = motor_tps_limit_rg;
      end
      MOTOR_TPS_LEFT: begin // two bytes
        compare_port[16-1:0] = motor_tps_left_i;
        compare_reg [16-1:0] = motor_tps_left_rg;
      end
      MOTOR_TPS_RGHT: begin // two bytes
        compare_port[16-1:0] = motor_tps_rght_i;
        compare_reg [16-1:0] = motor_tps_rght_rg;
      end
      LED_EYE_LEFT: begin // 3 bytes
        compare_port[24-1:0] = led_eye_left_rgb_i;
        compare_reg [24-1:0] = led_eye_left_rgb_rg;
      end
      LED_EYE_RGHT: begin // 3 bytes
        compare_port[24-1:0] = led_eye_rght_rgb_i;
        compare_reg [24-1:0] = led_eye_rght_rgb_rg;
      end
      LED_BLINK_LEFT: begin // 3 bytes
        compare_port[24-1:0] = led_blink_left_rgb_i;
        compare_reg [24-1:0] = led_blink_left_rgb_rg;
      end
      LED_BLINK_RGHT: begin // 3 bytes
        compare_port[24-1:0] = led_blink_rght_rgb_i;
        compare_reg [24-1:0] = led_blink_rght_rgb_rg;
      end
      SERVO_1: begin // two bytes
        compare_port[16-1:0] = servo_spi_1_i;
        compare_reg [16-1:0] = servo_spi_1_rg;
      end
      SERVO_2: begin // two bytes
        compare_port[16-1:0] = servo_spi_2_i;
        compare_reg [16-1:0] = servo_spi_2_rg;
      end
      GET_MOT_TCKS_LEFT: begin // just one bit
        compare_port[0] = 1'b0; // check if get_motor_ticks_left_rg==1'b1
        compare_reg [0] = get_motor_ticks_left_rg;
      end
      GET_MOT_TCKS_RGHT: begin // just one bit
        compare_port[0] = 1'b0; // check if get_motor_ticks_rght_rg==1'b1
        compare_reg [0] = get_motor_ticks_rght_rg;
      end
    endcase
  end

  // -- compare if the actual command is the same as the last command sent
  // it is a large comparator, and sometimes it just for one bit (GET commands)
  // but since it is already there, it will be used as is
  assign rg_change = (compare_port == compare_reg) ? 1'b0 : 1'b1;

  // -------------- timer (counter) to wait a configurable amount of time

  always @(posedge rst, posedge clk)
  begin
    if (rst)
      cnt_var <= 0;
    else begin
      if (ena_cnt_var) begin
        if (cnt_var_ended)
          cnt_var <= 0;
        else
          cnt_var <= cnt_var + 1'b1;
      end
      else
        cnt_var <= 0;
    end
  end

  assign cnt_var_ended = (cnt_var == C_EN_SPI_END) ? 1'b1 : 1'b0;


  // -------------- SPI clock generation -----------------------
  // clk divider. 
  // from the logic analyzer, SCK is 500 kHz, then ena_2clk has to be 1MHz
  // count to G_CLK_FREQ_MHZ
  always @(posedge rst, posedge clk)
  begin
    if (rst)
      cnt_spi_clk <= 0;
    else begin
      if ((end_cnt_spi_clk) || (ena_spi_clk == 1'b0))
        cnt_spi_clk <= 0;
      else
        cnt_spi_clk <= cnt_spi_clk + 1'b1;
    end
  end

  // end of the count 0 to G_CLK_FREQ_MHZ-1: 1 MHz signal
  assign end_cnt_spi_clk = (cnt_spi_clk == G_CLK_FREQ_MHZ-1) ? 1'b1 : 1'b0;
  assign ena_2clk = end_cnt_spi_clk;

  
  // ------------------- SPI register counter -----------------------
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      cnt_spi_byte <= 0;
    else begin
      if (spi_state == CHK_NEW_SPI)
        cnt_spi_byte <= 0;
      else if (incr_spi_byte)
        cnt_spi_byte <= cnt_spi_byte + 1'b1;
    end
  end

  // --------------- FINITE STATE MACHINE (FSM) ------------

  // FSM sequential process
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      spi_state <= CHK_NEW_SPI;
    else
      spi_state <= spi_state_nxt;
  end

  // FSM combinational process
  always @ (*)
  begin
    spi_state_nxt = spi_state; // default value
    ena_cnt_var = 1'b0;
    spi_ss_n  = C_SPI_SS_OFF; // disable the slave SPI
    incr_spi_byte = 1'b0;
    spi_send  = 1'b0;
    ena_spi_clk = 1'b0; // disable the generation of the SPI clock
    spi_cmd_done = 1'b0;
    case (spi_state)
      CHK_NEW_SPI: begin // check if there is a new SPI command
        if (rg_change) begin // There is a new SPI command to send
          spi_state_nxt = UPDATE_SPI_RGS; // 
        end
      end
      UPDATE_SPI_RGS: begin // update the SPI registers
        spi_state_nxt = EN_SPI_ST; // 
      end
      EN_SPI_ST: begin // enable the SPI slave, and wait some time
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n  = C_SPI_SS_ON; // enable the slave SPI
        ena_cnt_var = 1'b1;
        if (cnt_var_ended) begin
          spi_state_nxt = SPI_SEND_ST; //SPI shouldnt be busy when just starting
          ena_cnt_var = 1'b0;
        end
      end
      WAIT_SPI_ST: begin
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n  = C_SPI_SS_ON; // enable the slave SPI
        if (!spi_busy) begin
          spi_state_nxt = SPI_SEND_ST;
          if (cnt_spi_byte == last_spi_byte) begin
            spi_state_nxt = EN_SPI2_ST; // we are done
            spi_cmd_done = 1'b1; // done sending a whole command (various bytes)
          end
          else // next byte
            incr_spi_byte = 1'b1; // increment the byte except when 1
        end
      end
      SPI_SEND_ST: begin // send the new byte
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n = C_SPI_SS_ON; // enable the slave SPI
        spi_send  = 1'b1;
        spi_state_nxt = SPI_SEND2_ST;
      end
      SPI_SEND2_ST: begin // to give time for the SPI to be busy
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n  = C_SPI_SS_ON; // enable the slave SPI
        spi_send  = 1'b0;  // the send command was activated in the transition
        incr_spi_byte = 1'b0;
        if (spi_busy)
          spi_state_nxt = WAIT_SPI_ST;
      end
      EN_SPI2_ST: begin // finishing the transmission, enabling the SPI slave,
                        // before dissabling it
        ena_spi_clk = 1'b1; // enable the generation of the SPI clock
        spi_ss_n = C_SPI_SS_ON; // enable the slave SPI
        ena_cnt_var  = 1'b1;
        if (cnt_var_ended) begin
          spi_state_nxt = FINISH_ST;
          ena_cnt_var = 1'b0;
        end
      end
      FINISH_ST: begin // transmission ended, maybe not necessary and just jump
                       // to CHK_NEW_SPI
        spi_state_nxt = CHK_NEW_SPI;
      end
    endcase
  end

  // the SPI byte to send
  assign data_to_spi = spi_bytes[cnt_spi_byte];



endmodule


