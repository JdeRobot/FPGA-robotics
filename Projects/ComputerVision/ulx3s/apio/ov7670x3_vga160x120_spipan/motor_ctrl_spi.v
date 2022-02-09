module motor_ctrl_spi
  #(
    parameter  nb_dps_motor = 16,
    parameter  nb_Pctrl = 3,
    parameter  nb_counter = 32
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

   // Proportional control variable
  //wire signed [nb_Pctrl-1:0] Prgth;
  //wire signed [nb_Pctrl-1:0] Pleft;

  reg lost_obj_n = 1'b1; // 0=lost; 1=looking

  // Counter register
  reg [nb_counter-1:0] counter = 0;

  // Last known centroid
  reg [8-1:0] last_cent_valid;

  localparam signed [nb_dps_motor-1:0] c_vel3 = 16'd200; 
  localparam signed [nb_dps_motor-1:0] c_vel2 = 16'd100; 
  localparam signed [nb_dps_motor-1:0] c_vel1 = 16'd50; 
  localparam signed [nb_dps_motor-1:0] c_vel0 = 16'd25; 

  localparam signed [nb_dps_motor-1:0] c_vel3_neg = -c_vel3; 
  localparam signed [nb_dps_motor-1:0] c_vel2_neg = -c_vel2; 
  localparam signed [nb_dps_motor-1:0] c_vel1_neg = -c_vel1; 

  // Output assign 
  //assign v_left_motor_o = (vel_motor_rgth + direction) * lost_obj;
  //assign v_rght_motor_o = (vel_motor_left + direction) * lost_obj;

  // Only the most significant bits are used for each side.
  //Prgth = last_cent_valid[7:5];
  //Pleft = {last_cent_valid[0], last_cent_valid[1], last_cent_valid[2]};
  //assign Prgth = last_cent_valid[7:5];
  //assign Pleft = {last_cent_valid[0], last_cent_valid[1], last_cent_valid[2]};
  //assign direction = (proximity - 3'd3) * (-7'd16);


  always @(posedge clk)
  begin
    if (~enable) begin
      motor_dps_left <= 0;
      motor_dps_rght <= 0;
    end
    else begin
      if (~lost_obj_n) begin
        motor_dps_left <= 0;
        motor_dps_rght <= 0;
      end
      else if (last_cent_valid[4:3] == 2'b11) begin
        // to simplify, for now only when centered can go back
        if (proximity[2] == 1'b1) begin
          case (proximity[1:0])
            2'b00 : begin
              motor_dps_left <= 0;
              motor_dps_rght <= 0;
            end
            2'b01 : begin
              motor_dps_left <= c_vel1_neg;
              motor_dps_rght <= c_vel1_neg;
            end
            2'b10 : begin
              motor_dps_left <= c_vel2_neg;
              motor_dps_rght <= c_vel2_neg;
            end
            default: begin //2'b11 : begin
              motor_dps_left <= c_vel3_neg;
              motor_dps_rght <= c_vel3_neg;
            end
          endcase
        end
        else begin // positive
          case (proximity[1:0])
            2'b00 : begin
              motor_dps_left <= 0;
              motor_dps_rght <= 0;
            end
            2'b01 : begin
              motor_dps_left <= c_vel1;
              motor_dps_rght <= c_vel1;
            end
            2'b10 : begin
              motor_dps_left <= c_vel2;
              motor_dps_rght <= c_vel2;
            end
            default: begin //2'b11 : begin
              motor_dps_left <= c_vel3;
              motor_dps_rght <= c_vel3;
            end
          endcase
        end
      end
      else begin // not centered, positive speed
        if (last_cent_valid[3] ==  1'b1) begin //slightly left, move rght motor
          motor_dps_left <= 0;
          motor_dps_rght <= c_vel0;
        end
        if (last_cent_valid[2] ==  1'b1) begin
          motor_dps_left <= 0;
          motor_dps_rght <= c_vel1;
        end
        else if (last_cent_valid[1] == 1'b1) begin
          motor_dps_left <= 0;
          motor_dps_rght <= c_vel2;
        end
        else if (last_cent_valid[0] == 1'b1) begin
          motor_dps_left <= 0;
          motor_dps_rght <= c_vel3;
        end
        else if (last_cent_valid[4] ==  1'b1) begin //right, move left motor
          motor_dps_left <= 0;
          motor_dps_rght <= c_vel0;
        end
        else if (last_cent_valid[5] == 1'b1) begin
          motor_dps_left <= 0;
          motor_dps_rght <= c_vel1;
        end
        else if (last_cent_valid[6] == 1'b1) begin
          motor_dps_left <= 0;
          motor_dps_rght <= c_vel2;
        end
        else if (last_cent_valid[0] == 1'b1) begin
          motor_dps_left <= 0;
          motor_dps_rght <= c_vel3;
        end
      end
    end
  end
 
  // Process to stop the searching if the counter limit is reached.
  always @(posedge clk)
  begin
    if(counter > 32'h40000000) begin
      lost_obj_n <= 1'b0; // lost
    end else begin
      lost_obj_n <= 1'b1; // looking
    end
  end

  // Process to find the object from the last known position.
  always @(posedge clk) begin
    if (~enable) begin
      counter <= 32'h00000000;
    end
    else if(centroid == 8'h00) begin
      counter <= counter + 1;
    end else begin
      last_cent_valid[7:0] <= centroid[7:0];
      counter <= 32'h00000000;
    end
  end

endmodule
