// the max frames per second of the camera is 30 fps, so it will be
//  at 33.3 ms each new centroid. But it probably will be less than that.
//  I think it is 15 fps
//  So signal new_centroid will have this period.
//  Considering about ~50ms, cnt to stop searching the object

module motor_ctrl_spi
  #(
    parameter  nb_dps_motor = 16,
    //parameter  nb_Pctrl = 3,
    // number of bits of the counter: ~50ms x 64 ~3.2s to stop searching
    parameter  nb_cnt = 6
  )
  (input        rst,
   input        clk,
   input        enable,  // if 0, outputs will be zero
   input  [7:0] centroid,
   input        new_centroid,
   input  [2:0] proximity,
   output [nb_dps_motor-1:0] motor_dps_left_o,
   output [nb_dps_motor-1:0] motor_dps_rght_o
  );


  // Variables for motor speed and direction
  reg signed [nb_dps_motor-1:0] motor_dps_left;
  reg signed [nb_dps_motor-1:0] motor_dps_rght;
  //wire signed [nb_vel_motor-1:0] direction;
  reg  signed [nb_dps_motor-1:0] vel;
  reg  signed [nb_dps_motor-1:0] vel_addside;
  wire  signed [nb_dps_motor-1:0] vel_slowside;
  reg neg_vel;

   // Proportional control variable
  //wire signed [nb_Pctrl-1:0] Prgth;
  //wire signed [nb_Pctrl-1:0] Pleft;

  reg lost_obj; // 1=lost; 0=looking


  wire  [1:0] centroid2bit; // just two bit for the centroid
  // Counter register
  reg [nb_cnt-1:0]  cnt;
  localparam [nb_cnt-1:0] c_end_cnt = {nb_cnt{1'b1}}; //to have all to 1
  wire   cnt_end; // end of the count


  // Last known centroid
  reg [8-1:0] last_cent_valid;
  reg last_seen_left; // the object last seen was at the left

  localparam signed [nb_dps_motor-1:0] c_vel5 = 16'd600; 
  localparam signed [nb_dps_motor-1:0] c_vel4 = 16'd550; 
  localparam signed [nb_dps_motor-1:0] c_vel3 = 16'd450; 
  localparam signed [nb_dps_motor-1:0] c_vel2 = 16'd350; 
  localparam signed [nb_dps_motor-1:0] c_vel1 = 16'd250;
  localparam signed [nb_dps_motor-1:0] c_vel0 = 16'd150; 

  localparam signed [nb_dps_motor-1:0] c_vel_add0 = 16'd75; 
  localparam signed [nb_dps_motor-1:0] c_vel_add1 = 16'd125; 
  localparam signed [nb_dps_motor-1:0] c_vel_add2 = 16'd175; 
  localparam signed [nb_dps_motor-1:0] c_vel_add3 = 16'd225; 
  localparam signed [nb_dps_motor-1:0] c_vel_add4 = 16'd275; 

  localparam signed [nb_dps_motor-1:0] c_vel_sub0 = - c_vel_add0;
  localparam signed [nb_dps_motor-1:0] c_vel_sub1 = - c_vel_add1;
  localparam signed [nb_dps_motor-1:0] c_vel_sub2 = - c_vel_add2;
  localparam signed [nb_dps_motor-1:0] c_vel_sub3 = - c_vel_add3;
  localparam signed [nb_dps_motor-1:0] c_vel_sub4 = - c_vel_add4;

  localparam signed [nb_dps_motor-1:0] c_vel3_neg = -c_vel3; 
  localparam signed [nb_dps_motor-1:0] c_vel2_neg = -c_vel2; 
  localparam signed [nb_dps_motor-1:0] c_vel1_neg = -c_vel1; 
  localparam signed [nb_dps_motor-1:0] c_vel0_neg = -c_vel0; 



  wire       tracking; // 0=lost; 1=tracking object

  // Output assign 
  assign motor_dps_left_o = motor_dps_left;
  assign motor_dps_rght_o = motor_dps_rght;
  //assign v_left_motor_o = (vel_motor_rgth + direction) * lost_obj;
  //assign v_rght_motor_o = (vel_motor_left + direction) * lost_obj;

  // Only the most significant bits are used for each side.
  //Prgth = last_cent_valid[7:5];
  //Pleft = {last_cent_valid[0], last_cent_valid[1], last_cent_valid[2]};
  //assign Prgth = last_cent_valid[7:5];
  //assign Pleft = {last_cent_valid[0], last_cent_valid[1], last_cent_valid[2]};
  //assign direction = (proximity - 3'd3) * (-7'd16);

  assign centroid2bit[1] = centroid[7] | centroid[6] | centroid[5] | centroid[4];
  assign centroid2bit[0] = centroid[3] | centroid[2] | centroid[1] | centroid[0];

  always @(*)
  begin
    vel = 0;
    neg_vel = 1'b1;
    case(proximity)
      3'b000 : begin  // very far
        vel = c_vel5; // positive
        neg_vel = 1'b0;
      end
      3'b001 : begin  //
        vel = c_vel4;
        neg_vel = 1'b0;
      end
      3'b010 : begin  //
        vel = c_vel3;
        neg_vel = 1'b0;
      end
      3'b011 : begin  //
        vel = c_vel2;
        neg_vel = 1'b0;
      end
      3'b100 : begin  //
        vel = c_vel1;
        neg_vel = 1'b0;
      end
      3'b101 : begin  //
        vel = c_vel0;
        neg_vel = 1'b0;
      end
      3'b110 : begin  //
        vel = c_vel1_neg;
        neg_vel = 1'b1;
      end
      3'b111 : begin  //
        vel = c_vel3_neg;
        neg_vel = 1'b1;
      end
    endcase
  end

  always @(*)
  begin
    vel_addside = 0;
    case (last_cent_valid)
      8'b10000000, 8'b00000001: begin
        vel_addside = c_vel_sub4;
      end
      8'b01000000, 8'b00000010: begin
        vel_addside = c_vel_sub3;
      end
      8'b00100000, 8'b00000100: begin
        vel_addside = c_vel_sub2;
      end
      8'b00010000, 8'b00001000: begin
        vel_addside = c_vel_sub1;
      end
      default:
        vel_addside = 0;
    endcase
  end

  assign vel_slowside = (neg_vel) ? vel - vel_addside : vel + vel_addside;

  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      motor_dps_left <= 0;
      motor_dps_rght <= 0;
    end
    else if (~enable) begin
      motor_dps_left <= 0;
      motor_dps_rght <= 0;
    end
    else begin
      if (lost_obj) begin
        // just stop and turn to look for it
        if (last_seen_left == 1'b1) begin
          motor_dps_left <= c_vel1;
          motor_dps_rght <= c_vel1_neg;
        end
        else begin
          motor_dps_left <= c_vel1_neg;
          motor_dps_rght <= c_vel1;
        end
      end
      else if (last_cent_valid[4:3] == 2'b11) begin
        // centered, motors at same speed
        motor_dps_left <= vel;
        motor_dps_rght <= vel;
      end
      else begin 
        if (last_cent_valid[3:0] !=  4'b0000) begin //slightly left, move rght motor
          if (!neg_vel) begin // move forward
            motor_dps_left <= vel_slowside; // slowlier
            motor_dps_rght <= vel;
          end
          else  begin // move back
            motor_dps_left <= vel;
            motor_dps_rght <= vel_slowside; // slowlier
          end
        end
        else if (last_cent_valid[7:4] !=  4'b0000) begin
        //else begin // at the right of the gopigo
          if (!neg_vel) begin // move forward
            motor_dps_left <= vel;
            motor_dps_rght <= vel_slowside; // slowlier
          end
          else  begin // move back
            motor_dps_left <= vel_slowside; // slowlier
            motor_dps_rght <= vel;
          end
        end
        else begin // in theory should never reach here, but to check
          motor_dps_left <= 0;
          motor_dps_rght <= 0;
        end
      end
    end
  end
 
  // Process to stop the searching if the cnt limit is reached.
  always @(posedge rst, posedge clk)
  begin
    if(rst) begin
      lost_obj <= 1'b1; // it doesnt matter, not looking
    end
    else if(~enable) begin
      lost_obj <= 1'b1; // it doesnt matter, not looking
    end
    else if(cnt_end) begin
      lost_obj <= 1'b1; // lost
    end
    else begin
      lost_obj <= 1'b0; // looking
    end
  end


  // an object is captured by the camera 
  assign tracking = (centroid == 8'h00) ? 1'b0 : 1'b1;

  // Process to find the object from the last known position.
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      last_seen_left <= 1'b0; // just to put a value
      last_cent_valid <= 8'h00;
      cnt <= 0;
    end
    else begin
      if (new_centroid) begin
        if (centroid2bit[1] == 1'b1) begin
          last_seen_left <= 1'b1;
        end
        else if (centroid2bit[0] == 1'b1) begin
          last_seen_left <= 1'b0;
        end // if not in any centroid, leave the last seen

        if (~tracking) begin
          if (cnt_end) begin
            cnt <= cnt; // keep the count, to have cnt_end == 1
          end
          else begin
            cnt <= cnt + 1;
          end
        end
        else begin // if tracking, count resets
          cnt <= 0;
          last_cent_valid <= centroid;
        end
      end
    end
  end

  assign cnt_end = (cnt == c_end_cnt) ? 1'b1 : 1'b0;

endmodule

