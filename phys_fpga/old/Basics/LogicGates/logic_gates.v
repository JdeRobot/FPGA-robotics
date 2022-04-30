module logic_gates(A,B,O,O2,O3);
  	input A,B;
  	output O,O2,O3;
  
  	wire gate1; // wires intermedios
  
  nor n1(gate1,A,B);
  and a1(O,A,B);
  and a2(O2,gate1,O);
  not n1(O3,A,O);
  
endmodule
