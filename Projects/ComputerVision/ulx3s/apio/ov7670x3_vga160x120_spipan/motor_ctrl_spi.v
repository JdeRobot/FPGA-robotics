module motor_ctrl_spi
  #(
    parameter  nb_vel_motor = 8,
    parameter  nb_Pctrl = 3,
    parameter  nb_counter = 32
  )
  (input        rst,
   input        clk,
   input  [7:0] centroid,
   input        new_centroid,
   input  [2:0] proximity,
   output [nb_vel_motor-1:0] v_left_motor_o,
   output [nb_vel_motor-1:0] v_rght_motor_o
  );


  // Variables for motor speed and direction
  reg signed [nb_vel_motor-1:0] vel_motor_left;
  reg signed [nb_vel_motor-1:0] vel_motor_rgth;
  reg signed [nb_vel_motor-1:0] direction;

   // Proportional control variable
  reg signed [nb_Pctrl-1:0] Prgth;
  reg signed [nb_Pctrl-1:0] Pleft;

  reg lost_obj = 1'b1; // 0=lost; 1=looking

  // Counter register
  reg [nb_counter-1:0] counter = 0;

  // Last known centroid
  reg [8-1:0] last_cent_valid;

  // Output assign 
  assign v_left_motor_o = (vel_motor_rgth + direction) * lost_obj;
  assign v_rght_motor_o = (vel_motor_left + direction) * lost_obj;

  always @(posedge clk)
  begin
    // Direction calculation
    // Range: (proximity - 3'd3) [-3d to 4d];
    // Range: direction [48 32 16 0 -16 -32 -48 -64]
    direction <= (proximity - 3'd3) * (-7'd16);
	
    // Only the most significant bits are used for each side.
    Prgth = last_cent_valid[7:5];
    Pleft = {last_cent_valid[0], last_cent_valid[1], last_cent_valid[2]};
	
    // Values: [0 8 16 32]
    vel_motor_rgth <=  5'd8 * Prgth;
    vel_motor_left <=  5'd8 * Pleft;
  end

  // Process to stop the searching if the counter limit is reached.
  always @(posedge clk)
  begin
    if(counter > 32'h40000000) begin
      lost_obj <= 1'b0;
    end else begin
      lost_obj <= 1'b1;
    end
  end

  // Process to find the object from the last known position.
  always @(posedge clk) begin
    if(centroid == 8'h00) begin
      counter <= counter + 1;
    end else begin
      last_cent_valid[7:0] <= centroid[7:0];
      counter <= 32'h00000000;
    end
  end

endmodule
