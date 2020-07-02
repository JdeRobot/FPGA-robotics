//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   7 segment display module four 8 numbers for a 100MHz clock
//

module disp7seg_8dig
  #(parameter
    c_decod_freq    = 1000,
    c_clk_freq      = 100_000_000,
    c_cnt_decod_end = 100_000, // c_clk_freq/c_decod_freq
    c_nb_cnt_freq   = 17,   // bits to count to c_cnt_decod_end (log2)
    c_n_disp        = 8,    // number of displays to show
    c_seg_on        = 0     // how to lit a 7 segment, 0 or 1
   )
   (input       rst,
    input       clk,
    // enables displays 
    input  [7:0] en_disp,
    input  [3:0] num0,
    input  [3:0] num1,
    input  [3:0] num2,
    input  [3:0] num3,
    input  [3:0] num4,
    input  [3:0] num5,
    input  [3:0] num6,
    input  [3:0] num7,
    output [6:0] seg,
    output reg [7:0] anode);

 

  reg   [c_nb_cnt_freq-1:0]  cnt_decod;
  wire                       cnt_decod_end;
  reg     [3:0]   num_disp; //the number shown in the display (already muxed)
  reg   [3-1:0]   cnt_disp; // 3 bits to count from 0 to 7 (7 displays)

  reg   [6:0]     segment;

  // counter to get a 1ms frequency 
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      cnt_decod <= 17'd0; //c_nb_cnt_freq'd0;
    else begin
      if (cnt_decod_end) 
        cnt_decod <= 17'd0; //c_nb_cnt_freq'd0;
      else
        cnt_decod <= cnt_decod + 1;
    end
  end 
     
  assign cnt_decod_end = (cnt_decod == c_cnt_decod_end - 1) ? 1'b1 : 1'b0;

  // counter for the 8 displays, to mux them in time
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      cnt_disp <= 3'd0;
    else begin
      if (cnt_decod_end) begin
        if (cnt_disp == c_n_disp-1)
          cnt_disp <= 3'd0;
        else
          cnt_disp <= cnt_disp + 1;
      end
    end
  end 

  always @ (cnt_disp,num0,num1,num2,num3,num4,num5,num6,num7)
  begin
    case (cnt_disp)
      3'b000 : num_disp = num0;
      3'b001 : num_disp = num1;
      3'b010 : num_disp = num2;
      3'b011 : num_disp = num3;
      3'b100 : num_disp = num4;
      3'b101 : num_disp = num5;
      3'b110 : num_disp = num6;
      3'b111 : num_disp = num7;
    endcase
  end

  always @ (cnt_disp,en_disp)
  begin
    anode <= 8'b1111_1111; // off
    anode[cnt_disp] <= 1'b0; //on just the anode
  end

  // seven segment decoder
  always @ (num_disp)
  begin
    case (num_disp)         //ABCDEFG
      4'b0000 : segment <= 7'b1111110; //0
      4'b0001 : segment <= 7'b0110000; //1
      4'b0010 : segment <= 7'b1101101; //2
      4'b0011 : segment <= 7'b1111001; //3

      4'b0100 : segment <= 7'b0110011; //4
      4'b0101 : segment <= 7'b1011011; //5
      4'b0110 : segment <= 7'b1011111; //6
      4'b0111 : segment <= 7'b1110000; //7

      4'b1000 : segment <= 7'b1111111; //8
      4'b1001 : segment <= 7'b1111011; //9
      4'b1010 : segment <= 7'b1110111; //A
      4'b1011 : segment <= 7'b0011111; //B

      4'b1100 : segment <= 7'b1001110; //C
      4'b1101 : segment <= 7'b0111101; //D
      4'b1110 : segment <= 7'b1001111; //E
      4'b1111 : segment <= 7'b1000111; //F
    endcase
  end

  // if the segments are lit with a zero, negate
  assign seg = (c_seg_on) ? segment : ~segment;
  
endmodule

