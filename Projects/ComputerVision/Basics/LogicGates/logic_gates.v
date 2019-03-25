module logic_gates(A,B,O);
  	input A,B;
  	output O;
  
  	wire gate1,gate2; // wires intermedios
  
  nor n1(gate1,A,B);
  and a1(gate2,A,B);
  and a2(O,gate1,gate2);
  
endmodule
