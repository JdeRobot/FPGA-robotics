module ram (clk_write, address_write,
  data_write, write_enable,
  clk_read, address_read, data_read);
  
  parameter DATA_WIDTH = 16;
  parameter ADD_WIDTH = 4;
  parameter A_MAX = 16; // 2^ADD_WIDTH

  // Write port
  input                clk_write;
  input  [ADD_WIDTH-1:0] address_write;
  input  [DATA_WIDTH-1:0] data_write;
  input                write_enable;

  // Read port
  input                clk_read;
  input  [ADD_WIDTH-1:0] address_read;
  output [DATA_WIDTH-1:0] data_read;
  
  reg    [DATA_WIDTH-1:0] data_read;
  
  // Memory 
  reg [DATA_WIDTH-1:0] memory [A_MAX-1:0];

  // Write data to memory
  always @(posedge clk_write) begin
    if (write_enable) begin
      memory[address_write] <= data_write;
    end
  end

  // Read data from memory
  always @(posedge clk_read) begin
    data_read <= memory[address_read];
  end

endmodule
