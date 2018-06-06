localparam pulses_1seg = 12000000;
reg [23:0] contador = 1;
reg aux = 1;

  always @ (posedge clock)
  begin
    if(start==1)
    begin
    contador <= (contador == pulses_1seg-1) ? 0 : contador + 1;
    end
  end
  
  always @(posedge clock)
  begin
   if (contador==0)
     aux<=1'b0;
  end

assign ready = aux; 