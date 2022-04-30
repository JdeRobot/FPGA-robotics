/*0.106 ms we have to keep the bus
The FPGA clock frecuency is 12MHz, 
T = 83*10^-9 seg
How many clocks are there in 0.106ms?
0.106ms/83*10^-9s = 1277
2^10 = 1024 

un always para signal en general tanto alto como bajo y un always para el tiempo clock
*/
localparam TIME =10'd1022;
reg flag = 1'b0;
reg [9:0] count =10'd0;
reg nueva;
reg original = 1'b0; //por la que queramos empezar, supongo que 0
reg signal_output_reg = 1'b0;

always @(signal)//cada flanco de signal (ya sea de subida o de bajada)
begin 
  nueva <= signal;//el valor de la señal en ese momento
  flag <= 1'b1; //cada vez que entre aquí que empiece a contar, quizas nos haga falta ese tiempo. count empieza a contar el tiempo desde el flanco hasta:
  if(original != nueva && count <= TIME && count>10'd1 )//si el valor antiguo es diferente al nuevo,es decir, signal a cambiado, y el contador de tiempo es mas chico que que TIME,es decir, ha cambiado muy rapido.  
  begin 
      signal_output_reg <= original; //en realidad signal_output se mantiene al valor antiguo, no debe cambiar
  end
  else begin
      signal_output_reg <= nueva;
      count <= 10'd0;
      flag <= 1'b0; //deja de contar hasta que haya otro cambio
      original <= nueva; //ahora la nueva se combierte en esta ultima.
  end


end


always @(posedge clock)  //solo nos sirve como contador cuando el flag esta a 1.
begin
  count <= (flag == 1'b1)? count+10'd1: count;
end

assign signal_output = signal_output_reg;



//la primera vez que cambie que se mantenga en alta casi todo lo que dura el periodo, y lo mismo para la señal en baja


reg signal_output_reg = 1'b0;
reg [9:0] count =10'd0;
localparam TIME =10'd1022;

always @(posedge signal_input)
begin
  if(count >= TIME)
  begin
    signal_output_reg <= signal_input;
    count <= 10'd0;
  end
  else begin
    signal_output_reg <= 1'b1;
  end
end


always @(posedge clock)
begin
  count <= count +10'd1;
end

assign signal_output=signal_output_reg;


/**********************************************************************/

reg flag = 1'b0;
reg signal_output_reg = 1'b0;
reg [9:0] count =10'd0;
localparam TIME =10'd1022;


always @(posedge signal_input)
begin
  flag<= 1;
end


always @(posedge clock)
begin

  count <= (flag ==1'b1)? count +10'd1: 10'd0;
end


always @(posedge clock)
begin
  
  signal_output_reg<= (count>= TIME or flag == 1'b0) ? signal_input: 1'b1;
  if(count >= TIME)
    flag<= 1'b0;
end

assign signal_output = signal_output_reg;