module ram_tb;

  reg        clk_write;
  reg  [4:0] address_write;
  reg  [7:0] data_w_R;
  reg  [7:0] data_w_G;
  reg  [7:0] data_w_B;

  reg        write_enable;
  reg        clk_read;
  reg  [4:0] address_read;
  wire [7:0] data_r_R;
  wire [7:0] data_r_G;
  wire [7:0] data_r_B;
  
  //  ram #(X,Y,Z) to instantiate design under test to
  // DATA_WIDTH = X
  // ADD_WIDTH = Y
  // A_MAX = 2^ADD_WIDTH = Z
  ram_rgb_write #(8, 5, 32) RAMW (
    .clk_write(clk_write),
    .address_write(address_write),
    .data_w_R(data_w_R),
    .data_w_G(data_w_G),
    .data_w_B(data_w_B),
    .write_enable(write_enable));
    
  ram_rgb_read #(8, 5, 32) RAMR (
    .clk_read(clk_read),
    .address_read(address_read),
    .data_r_R(data_r_R),
    .data_r_G(data_r_G),
    .data_r_B(data_r_B));



  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1, ram_tb);
    
    clk_write = 0;
    clk_read = 0;
    write_enable = 0;
    address_read = 5'h1B;
    address_write = address_read;

    $display("Read initial data.");
    toggle_clk_read;
    $display("dataR[%0h]: %0h",
      address_read, data_r_R);
    $display("dataG[%0h]: %0h",
      address_read, data_r_G);
    $display("dataB[%0h]: %0h",
      address_read, data_r_B);

    $display("Write new data.");
    write_enable = 1;
    data_w_R = 8'hC5;
    data_w_G = 8'hC5;
    data_w_B = 8'hC5;
    toggle_clk_write;
    write_enable = 0;
    
    $display("Read new data.");
    toggle_clk_read;
    $display("data[%0h]: %0h",
      address_read, data_r_R);
    $display("data[%0h]: %0h",
      address_read, data_r_G);
    $display("data[%0h]: %0h",
      address_read, data_r_B);
  end
  
  task toggle_clk_write;
    begin
      #10 clk_write = ~clk_write;
      #10 clk_write = ~clk_write;
    end
  endtask

  task toggle_clk_read;
    begin
      #10 clk_read = ~clk_read;
      #10 clk_read = ~clk_read;
    end
  endtask

endmodule
