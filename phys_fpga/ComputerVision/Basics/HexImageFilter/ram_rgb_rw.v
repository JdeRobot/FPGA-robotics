module ram_rgb_rw (   input wire clk_write,
                   input [11:0] address_write,
                   input [7:0] data_w_R,
                   input [7:0] data_w_G,
                   input [7:0] data_w_B,
                      input write_enable,
                      input wire clk_read,
                   input [11:0] address_read,
                   output reg [7:0] data_r_R,
                   output reg [7:0] data_r_G,
                   output reg [7:0] data_r_B);
  
  parameter DATA_WIDTH = 8; //8 bit 
  parameter ADD_WIDTH = 12;
  parameter A_MAX = 4096; // 2^ADD_WIDTH
//    parameter sizeOfLengthReal = 3072;   // image data : 1179648 bytes: 32 * 32 *3 


  
  // Memory 
  reg [DATA_WIDTH-1:0] Rmemory [A_MAX-1:0];
  reg [DATA_WIDTH-1:0] Gmemory [A_MAX-1:0];
  reg [DATA_WIDTH-1:0] Bmemory [A_MAX-1:0];

  
  
  // Write data to memory
  always @(posedge clk_write) begin
    if (write_enable) begin
      Rmemory[address_write] <= data_w_R;
      Gmemory[address_write] <= data_w_G;
      Bmemory[address_write] <= data_w_B;
    end
  end

  
  
    // Read data from memory
  always @(posedge clk_read) begin
    data_r_R <= Rmemory[address_read];
    data_r_G <= Gmemory[address_read];
    data_r_B <= Bmemory[address_read];
  end

  
endmodule