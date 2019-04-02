// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module test_bench;

  reg        clk_write;
  reg  [11:0] address_write;
  wire  [7:0] data_w_R;
  wire  [7:0] data_w_G;
  wire  [7:0] data_w_B;

  reg        write_enable;
  reg        clk_read;
  reg  [11:0] address_read;
  wire [7:0] data_r_R;
  wire [7:0] data_r_G;
  wire [7:0] data_r_B;
  integer f;
  
  //  ram #(X,Y,Z) to instantiate design under test to
  // DATA_WIDTH = X
  // ADD_WIDTH = Y
  // A_MAX = 2^ADD_WIDTH = Z
  ram_rgb_rw #(8, 12, 4096) RAM (
    .clk_write(clk_write),
    .address_write(address_write),
    .data_w_R(data_w_R),
    .data_w_G(data_w_G),
    .data_w_B(data_w_B),
    .write_enable(write_enable),
    .clk_read(clk_read),
    .address_read(address_read),
    .data_r_R(data_r_R),
    .data_r_G(data_r_G),
    .data_r_B(data_r_B));    

  hex_to_rgb H2RGB (
    .clk(clk_write),
    .Rp(data_w_R),
    .Gp(data_w_G),
    .Bp(data_w_B));


  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1, test_bench);
    f = $fopen("output.txt","w"); 
    
    clk_write = 0;
    clk_read = 0;
    write_enable = 0;
    address_read = 12'd1;
    address_write = address_read;


    write_enable = 1;
    toggle_clk_rw;
    write_enable = 0;
    
    $fclose(f);  
  end
  


 task toggle_clk_rw;

   for (int i = 0; i < 1024; i++) begin
    

      #10 clk_write = ~clk_write;
           #10 clk_write = ~clk_write;
      #10 clk_read = ~clk_read;
           #10 clk_read = ~clk_read;
     $display("data[%0h]RGB: %0h,%0h,%0h",address_read, data_r_R,data_r_G,data_r_B);

     
     $fwrite(f,"%0h\n%0h\n%0h\n",data_r_R,data_r_G,data_r_B);

    address_read= address_read +1;
    address_write = address_read;

    end

endtask
  
endmodule