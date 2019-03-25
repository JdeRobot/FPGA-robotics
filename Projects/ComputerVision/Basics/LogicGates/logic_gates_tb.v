//simulated with Icarus verilog 0.9.7

module logic_gates_tb;
  	reg A,B;
  	wire O,O2,O3;
  
  logic_gates test_circuit (
    .A(A),
    .B(B),
    .O(O),
    .O2(O2),
    .O3(O3)
  );

  
  initial
    begin
 
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1, logic_gates_tb);
      
      
     	assign A=0;
      	assign B=0;

      	#10 assign A=1;
      	#10 assign B=1;      
      	#10 assign A=0;      
    
      
      	#10 assign A=1;      
      	#10 assign B=0;           
      		  assign A=0;           
      
      $finish;
    end
  
endmodule
