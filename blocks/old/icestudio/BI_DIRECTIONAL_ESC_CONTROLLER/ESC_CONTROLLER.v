localparam pulses_nedded = 240000; 
localparam pulses_nedded_1ms = 12000;

reg [17:0] pulses_nedded_velocity = 10000; //24009 maximo
reg [17:0] count = 0; 
reg [17:0] escaler = 12000/65536;
reg T = 0;

always @(posedge clock)
begin
  count <= (count == pulses_nedded-1) ? 0: count+1;
  pulses_nedded_velocity <= (pulses_nedded_velocity>=24000) ? 23999:18'd12000+(velocity * escaler);

end

always @(count)
begin
  if(ready)
    T <= (count <= pulses_nedded_1ms) ? 1:0;
  else
    T <= (count <= pulses_nedded_velocity) ? 1:0;
end
assign PWM_ESC = T;
