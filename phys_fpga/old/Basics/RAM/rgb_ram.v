/* 
 * RGB RAM Write
 */
module ram_rgb_write (clk_write, address_write,
  data_w_R, data_w_G, data_w_B, write_enable);
  
  parameter DATA_WIDTH = 8; //8 bit 
  parameter ADD_WIDTH = 4;
  parameter A_MAX = 16; // 2^ADD_WIDTH
//  parameter sizeOfLengthReal = 1179648;   // image data : 1179648 bytes: 512 * 768 *3 

  // Write port
  input                clk_write;
  input  [ADD_WIDTH-1:0] address_write;
  input  [DATA_WIDTH-1:0] data_w_R;
  input  [DATA_WIDTH-1:0] data_w_G;
  input  [DATA_WIDTH-1:0] data_w_B;
  input                write_enable;

  
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

endmodule

/* 
 * RGB RAM Read
 */
module ram_rgb_read (clk_read, address_read, data_r_R, data_r_G, data_r_B);
  
  parameter DATA_WIDTH = 8; //8 bit 
  parameter ADD_WIDTH = 4;
  parameter A_MAX = 16; // 2^ADD_WIDTH
//  parameter sizeOfLengthReal = 1179648;   // image data : 1179648 bytes: 512 * 768 *3 


  // Read port
  input                clk_read;
  input  [ADD_WIDTH-1:0] address_read;
  output [DATA_WIDTH-1:0] data_r_R;
  output [DATA_WIDTH-1:0] data_r_G;
  output [DATA_WIDTH-1:0] data_r_B;
  
  reg    [DATA_WIDTH-1:0] data_r_R;
  reg    [DATA_WIDTH-1:0] data_r_G;
  reg    [DATA_WIDTH-1:0] data_r_B;

  // Memory 
  reg [DATA_WIDTH-1:0] Rmemory [A_MAX-1:0];
  reg [DATA_WIDTH-1:0] Gmemory [A_MAX-1:0];
  reg [DATA_WIDTH-1:0] Bmemory [A_MAX-1:0];  

  // Read data from memory
  always @(posedge clk_read) begin
    data_r_R <= Rmemory[address_read];
    data_r_G <= Gmemory[address_read];
    data_r_B <= Bmemory[address_read];
  end

endmodule










//TODO:
/*
Fix Mem Size to fit image
*/
