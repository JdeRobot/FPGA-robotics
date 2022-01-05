//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   servo control to follow filtered image given by horizontal centroid
//   and proximity: Pan
//   In the future it could also be vertical centroid for tilt
//
//   Servo angle is given by: 2'complement 10 bit number, -512 to 511.
//     0 is in the middle for each 50 adds 9 degrees. ie:
//    50 is   9 degrees
//   100 is  18 degrees
//   150 is  27 degrees
//   200 is  36 degrees
//   250 is  45 degrees
//   500 is  90 degrees
//   -50 is  -9 degrees
//  -100 is -18 degrees
//  -500 is -90 degrees...
//
//  Servo starts in 0 degrees, and then it will follow the color object
//  until reaching the limits (-90 : 90)
//
//  Servos pulses range from:
//    1000 us:  -90 degrees (  0 degrees) leftmost
//    1500 us:    0 degrees ( 90 degrees) center
//    2000 us:   90 degrees (180 degrees) rightmost
//
//  Servo 2 ms pulse max, however the period of the servo is 20 ms
//
//  SPI uses a 500 KHz clk, each SPI bit takes 2us in our desgin
//  I we analize the original raspberry, it takes 3.2us.
//  The SPI takes 8 bits to send an individual message, so it will 16us in our
//  design.  To send a message to change the servo 5 bytes are needed,
//  and since there is some time between individual messages (from byte to
//  byte), it would be around 5*18= 90us ~> 100 us.
//
//  There could also be others SPI instructions (for example for the wheels)
//  So let's say that the angle could be changed from every 100us - 500us
//
//  What is 100 times faster than the real servo period (20ms)
//
//  So even if we change the SPI at 100us period, it would not be updated
//  in the servo. 
//
//  If we change the servo at its resolution (in steps of -512 to 511)
//  taking the minimum 100us period -> 180degrees -> 200ms. So in practice
//  the motor would not be able to go that fast
//
//  Acording to https://www.sparkfun.com/servos
//  the servo can move 60degrees 0.16 seconds -> 180degrees 0.48seconds ~500ms 
//  this is without load, so it would be even slower with the camera.
//
//  However the max frames per second of the camera is 30 fps, so it will be
//  at 33.3 ms each new centroid. But it probably will be less than that.
//  I think it is 15 fps
//  So signal new_centroid will have this period.
//  Considering about ~50ms, so changing
//  - 1 degree each 50ms: it would be 8 seconds for 180degrees, which could
//    be too slow, that could be good when the centroid is close to the center
//  - 10 degree each 50ms: it would be 0,8 seconds for 180degrees, which could
//    be adecuate when the centroid is far away from the center
//  
//  Input centroid shows where the centroid is
//  It has 8 bits
//
//    7654 3210 :bit number (but the right-left orientation is backwards)
//    ----------
//    0001 1000 : centered
//
//    0001 0000 : slightly to the right
//    0010 0000 : to the right
//    0100 0000 : more to the right
//    1000 0000 : to the right most
//   
//    0000 1000 : slightly to the left
//    0000 0100 : to the left
//    0000 0010 : more to the left
//    0000 0001 : to the left most
//   
//---------------------------------------------------------------------------//



module servo_pan_ctrl_spi
  #(
    parameter  nb_cnt = 6  // number of bits of the counter: ~50ms x 64 ~3.2s 
  )
  (input        rst,
   input        clk,
   input  [7:0] centroid,
   input        new_centroid,
   input  [2:0] proximity,
   output [10-1:0] servo_cam_pan_o  // from -512 to 511 (-90 to 90)
   //output [10-1:0] v_rght_motor_o
  );

  reg signed [10-1:0] servo_cam_pan;


  // degree steps depending on where the centroid is
  localparam [10-1:0] c_stp_0 = 8;   //  1.44 degrees
  localparam [10-1:0] c_stp_1 = 16;  //  2.88 degrees
  localparam [10-1:0] c_stp_2 = 32;  //  5.76 degrees
  localparam [10-1:0] c_stp_3 = 64;  // 11,52 degrees

  // limit values for the servos
  localparam signed [10-1:0] c_lim_servo_pos = 10'sd500;
  localparam signed [10-1:0] c_lim_servo_neg = -10'sd500;

  // limits to avoid overflow
  localparam signed [10-1:0] c_lim_stp_0 = c_lim_servo_pos-c_stp_0;
  localparam signed [10-1:0] c_lim_stp_1 = c_lim_servo_pos-c_stp_1;
  localparam signed [10-1:0] c_lim_stp_2 = c_lim_servo_pos-c_stp_2;
  localparam signed [10-1:0] c_lim_stp_3 = c_lim_servo_pos-c_stp_3;

  wire       tracking; // 0=lost; 1=tracking object
  // if the object is lost from the left or the right, or not known
  reg   last_left;   // the object is last seen on the left
  reg   last_right;  // the object is last seen on the right
  //
  // Counter register
  reg [nb_cnt-1:0]  cnt;
  localparam [nb_cnt-1:0] c_end_cnt = {nb_cnt{1'b1}}; //to have all to 1
  wire   cnt_end; // end of the count

  // an object is captured by the camera 
  assign tracking = (centroid == 10'b0) ? 1'b0 : 1'b1;

  // Output assign 
  assign servo_cam_pan_o = servo_cam_pan;

  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      servo_cam_pan <= 0;
    end
    else begin
      if (new_centroid) begin
        case (centroid[4:3])
          2'b11: // centered, do nothing
            servo_cam_pan <= servo_cam_pan;
          2'b01: begin // slightly to the left, decrease pan
            if (servo_cam_pan > -c_lim_stp_0)
              servo_cam_pan <= servo_cam_pan - c_stp_0;
            else
              servo_cam_pan <= c_lim_servo_neg; //-10'sd500;
          end
          2'b10: begin // slightly to the right, increase decrease
            if (servo_cam_pan < c_lim_stp_0)
              servo_cam_pan <= servo_cam_pan + c_stp_0;
            else
              servo_cam_pan <= c_lim_servo_pos; //10'sd500;
          end
          2'b00: begin // not too close to the center
            if (centroid[2]) begin // to the left
              if (servo_cam_pan > -c_lim_stp_1)
                servo_cam_pan <= servo_cam_pan - c_stp_1;
              else
                servo_cam_pan <= c_lim_servo_neg; //-10'sd500;
            end
            else if (centroid[5]) begin // to the right
              if (servo_cam_pan < c_lim_stp_1)
                servo_cam_pan <= servo_cam_pan + c_stp_1;
              else
                servo_cam_pan <= c_lim_servo_pos; //10'sd500;
            end
            // -- Not on the far side yet
            else if (centroid[1]) begin // more to the left
              if (servo_cam_pan > -c_lim_stp_2)
                servo_cam_pan <= servo_cam_pan - c_stp_2;
              else
                servo_cam_pan <= c_lim_servo_neg; //-10'sd500;
            end
            else if (centroid[6]) begin // to the right
              if (servo_cam_pan < c_lim_stp_2)
                servo_cam_pan <= servo_cam_pan + c_stp_2;
              else
                servo_cam_pan <= c_lim_servo_pos; //10'sd500;
            end
            // -- On the far side yet
            else if (centroid[0]) begin // to the left edge
              if (servo_cam_pan > -c_lim_stp_3)
                servo_cam_pan <= servo_cam_pan - c_stp_3;
              else
                servo_cam_pan <= c_lim_servo_neg; //-10'sd500;
            end
            else if (centroid[7]) begin // to the right edge
              if (servo_cam_pan < c_lim_stp_3)
                servo_cam_pan <= servo_cam_pan + c_stp_3;
              else
                servo_cam_pan <= c_lim_servo_pos; //10'sd500;
            end
            else begin // not found
              // if not found, check after a while if it is in the direction
              // where it was last seen
              if (cnt_end) begin // slowly go to the edge
                if (last_left) begin
                  if (servo_cam_pan == c_lim_servo_neg)
                    servo_cam_pan <= c_lim_servo_neg; //-10'sd500;
                  else
                    servo_cam_pan <= servo_cam_pan - 1;
                end
                else if(last_right) begin
                  if (servo_cam_pan == c_lim_servo_pos)
                    servo_cam_pan <= c_lim_servo_pos; // 10'sd500;
                  else
                    servo_cam_pan <= servo_cam_pan + 1;
                end
              end
            end
          end
        endcase
      end
    end
  end

  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      last_left  <= 1'b0;
      last_right <= 1'b0;
    end
    else begin
      if (tracking) begin
        if (centroid[7:5] != 3'b000) begin // on the right
          last_left  <= 1'b0;
          last_right <= 1'b1;
        end
        else if (centroid[2:0] != 3'b000) begin // on the left
          last_left  <= 1'b1;
          last_right <= 1'b0;
        end
        else begin // if it is tracked, then it will be at the center
          last_left  <= 1'b0;
          last_right <= 1'b0;
        end
      end // if the object is not tracked, dont update
    end
  end


  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      cnt <= 0;
    end
    else begin
      if (new_centroid) begin
        if (tracking == 1'b0) begin
          if (cnt_end) begin
            // cnt <= 0;// we stop at the end of the count
            cnt <= cnt; // keep the count, to have cnt_end == 1
          end
          else begin
            cnt <= cnt + 1;
          end
        end
        else // if tracking, count resets
          cnt <= 0;
      end
    end
  end

  assign cnt_end = (cnt == c_end_cnt) ? 1'b1 : 1'b0;
  // not needed now
  //assign wait_end = (cnt_end && new_centroid) ? 1'b1 : 1'b0;
             
endmodule
