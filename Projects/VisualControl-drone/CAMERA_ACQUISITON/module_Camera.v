//la resolucion son 640 columnas y 480 filas. 
//la resolucion son 640 columnas y 480 filas. 
localparam BYTE1 = 1'b0;
localparam BYTE2 = 1'b1;
reg [4:0] RED_reg = 5'd0;
reg [2:0] GREEN_prev = 3'd0;
reg [5:0] GREEN_reg = 6'd0; 
reg [4:0] BLUE_reg = 5'd0; 
reg state = BYTE1;
reg ready_color_reg = 1'b0;
reg ready_byte_reg = 1'b0;
reg debug_reg = 1'b0;

always @(posedge PCLK) 
begin
    if( (HREF === 1'b1) && (VSYNC === 1'b0) &&(START == 1'b1))
    begin
      case(state)
        BYTE1: 
        begin
          RED_reg<= {D7,D6,D5,D4,D3};
          GREEN_prev<= {D2,D1,D0};
          ready_color_reg <= 1'b0;
          state<= BYTE2;
          debug_reg<= !debug_reg;
        end
        BYTE2:
        begin
          GREEN_reg<={GREEN_prev,D7,D6,D5};
          BLUE_reg<={D4,D3,D2,D1,D0};
          ready_color_reg <= 1'b1;
          state<= BYTE1;
          debug_reg<= !debug_reg;
        end
      endcase
    end
    else begin
        ready_color_reg <= 1'b0;
    end
end
assign BLUE = BLUE_reg;
assign GREEN = GREEN_reg;
assign RED = RED_reg; 
assign ready_color = ready_color_reg;
assign debug = debug_reg;

/******************************************************************************************************************
En una fila tarda 0.21333ms y en un byte 0.166668us (periodo). Podemos decir entonces que en 0.21333ms se aportan
0.21333ms/0.16668us = 1280 bytes. 
Teniendo en cuenta que teóricamente una una línea (fila) tiene 640 píxeles, tiene sentido, ya que:

640 pixeles*2byte cada pixel = 1280bytes.

PUEDE CAMBIAR DEPENDIENDO DE LA VELOCIDAD DEL RELOJ, EN EL CASO ANTERIOR, 6MHZ

Para ponerlo en modo RGB, registro 12(COM7) escribimos el valor:
8'b00000100

Valores mas elevados de RED:32 GREEN:64 BLUE:32
/*********************************************************************************************************************/
localparam anchura = 640; 
localparam altura = 480;
localparam Rmin = 5'd25;
localparam Rmax = 5'd31;
localparam Gmin = 6'd0;
localparam Gmax = 6'd5;
localparam Bmin = 5'd0;
localparam Bmax = 5'd5;
reg [7:0] led_reg = 8'd0;
reg [4:0] red_color = 5'd0;
reg [17:0] sum_reg = 18'd0;
reg debug_reg = 1'b0;
reg [17:0] acumX_reg = 18'd0;
reg [16:0] acumY_reg =17'd0;

always @(posedge PXCLK)
begin

  if(ready_color == 1'b1)
  begin
    if( RED>=Rmin && RED<=Rmax && GREEN>=Gmin && GREEN<= Gmax && BLUE>=Bmin && BLUE<=Bmax )//ha pasado el filtro
      begin
        led_reg[0] <= 1'b1;
        //sum_reg <= sum_reg + 18'd1;  //se suma uno al contador de pixeles buenos
        //debug_reg <= !debug_reg;      
      end
    else
      begin
        led_reg[0] <= 1'b0;
      end
    sum_reg <= sum_reg + 18'd1;
  end
  /////////////////////////////////////////////////////////////////////////////////////////////
  if(VSYNC == 1'b1)
  begin
    sum_reg <= 18'd0; 
  end
  led_reg[7:3] <= BLUE;

end

/*always @(posedge ready_color) //para acumuladoX y acumuladoY max en x= 205120 y max en y=115440
begin
  if(RED>=Rmin && RED<=Rmax && GREEN>=Gmin && GREEN<= Gmax && BLUE>=Bmin && BLUE<=Bmax ) //ha pasado el filtro
  begin
    acumX_reg <= acumX_reg + pixel_columna;
    acumY_reg <= acumY_reg + pixel_fila;
  end
end*/


assign led = led_reg;
assign debug = debug_reg;
assign sum_signal = sum_reg;
/************************************************************************************
**********************************CONTADOR DE FILAS**********************************
*************************************************************************************
INPUT:
  VSYNC(cuando cambia la imagen)
  HREF(señal que nos dice cuando se cambian las filas, debe haber 480)
  CLK(señal de reloj de la cuál parten las demás por eso nos guiaremos por ella)
OUTPUT:
  pixel_fila. Por aquí se mostrara siempre el número de fila
BEHAVIOUR:
  Solo comenzará cuando el protocolo i2c haya terminado, pues sino no será efectivo el contador.
  Maquina de estados, no hay otra manera de hacer esto.
  La señal de sensibilidad será la subida de la señal de reloj, ya que todas se basan en esta.
ESTADOS:
  VSYNC1: en este estado se mantendrá mientras el bus de VSYNC sea 1, que es lo que avisa de este estado
          Aquí, el contador de filas se reseteará a 0, pues hay una nueva imagen y se pasará al siguiente estado 
          donde se empezará el contador de filas.
  HREF_HIGH_1: en este estado se mantendrá hasta que HREF sea 1, es decir, se está iniciando una nueva fila.
             Hay que tener cuidado porque el la cuenta solo se puede hacer una vez, por eso que haya un 1 y un
             2
  HREF_HIGH_2: ya ha sumado la cuenta, ahora se mantendrá en este estado hasta que pase a la segunda fila y no 
              este en alta. 
  HREF_LOW: ahora, esta a low, hay que esperar hasta que vuelva estar a HIGH para que pase a HREF_HIGH_1.
            Especial cuidado ya que llega un momento en el que lo que se pone a 1 es VSYNC.
/*************************************************************************************/ 

localparam VSYNC1 = 2'd0;
localparam HREF_HIGH_1 = 2'd1;
localparam HREF_HIGH_2 = 2'd2;
localparam HREF_LOW = 2'd3;
reg [8:0] pixel_fila_reg = 9'd0;
reg debug_reg = 1'b0;

reg [1:0] state = VSYNC1;

always @(posedge CLK)
begin
  case(state)

    VSYNC1:
      if(start == 1'b1 && VSYNC == 1'b1)
        begin
          pixel_fila_reg <= 9'd0;
          state <= HREF_HIGH_1;
          debug_reg <= !debug_reg;
        end
      else 
        begin
          state <= VSYNC1;
        end
      
    HREF_HIGH_1:
      if(HREF == 1'b1)
        begin
          pixel_fila_reg <= pixel_fila_reg + 9'd1;
          state <= HREF_HIGH_2;
        end
      else 
        begin
          state <= HREF_HIGH_1;
        end

    HREF_HIGH_2:
      if(HREF == 1'b1)
        begin
          state <= HREF_HIGH_2;
        end
      else 
        begin
          state <= HREF_LOW;
        end

    HREF_LOW:
      if(HREF == 1'b0 && VSYNC == 1'b0)
        begin
          state<= HREF_LOW;
        end
      else if(HREF == 1'b0 && VSYNC == 1'b1)
        begin
          state<= VSYNC1;
        end
      else if(HREF == 1'b1 && VSYNC == 1'b0)
        begin
          state<= HREF_HIGH_1;
        end
  endcase
end

assign pixel_fila = pixel_fila_reg;
assign debug = debug_reg;
/************************************************************************************
**********************************CONTADOR DE COLUMNAS*******************************
*************************************************************************************/

localparam BYTE1_START = 2'd0;
localparam BYTE1 = 2'd1;
localparam BYTE2 = 2'd2;
reg [9:0] pixel_columna_reg = 10'd0;
reg debug_reg = 1'b0;

reg [1:0] state = BYTE1_START;

always @(posedge PXCLK) 
begin
    if( (HREF === 1'b1) && (VSYNC === 1'b0) && (start ===1'b1))
    begin
      case(state)
        BYTE1_START:
        begin
          pixel_columna_reg <= 10'd0;
          state <=BYTE2;
        end
        BYTE1: 
        begin
          state <= BYTE2;
        end
        BYTE2:
        begin
          pixel_columna_reg <= pixel_columna_reg + 10'd1;
          state <= BYTE1;
          debug_reg <= !debug_reg;
        end
      endcase
    end
    else begin
         pixel_columna_reg <= 10'd0;
    end
end

assign pixel_columna = pixel_columna_reg;
assign debug = debug_reg;