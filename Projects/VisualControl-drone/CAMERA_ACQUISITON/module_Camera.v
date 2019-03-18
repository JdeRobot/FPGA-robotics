//la resolucion son 640 columnas y 480 filas.
//la resolucion son 640 columnas y 480 filas.
localparam BYTE1 = 1'b0;
localparam BYTE2 = 1'b1;
reg state = BYTE1;
reg ready_color_reg = 1'b0;
reg debug_reg = 1'b0;

reg [4:0] RED_reg = 5'd0;
reg [2:0] GREEN_prev = 3'd0;
reg [5:0] GREEN_reg = 6'd0;
reg [4:0] BLUE_reg = 5'd0;


/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/
always @(posedge CLK)
begin
  VSYNC_1xdelay <= VSYNC;
end
always @(posedge CLK)
begin
  HREF_1xdelay <= HREF;
end
always @(posedge CLK)
begin
  PXCLK_1xdelay <= PXCLK;
end
/**************************************************************************/
assign PXCLK_pulse_high = ( PXCLK_1xdelay == 0 and PXCLK == 1) ? 1:0;
assign HSYNC_constant_high = ( HSYNC == 1 and HSYNC_1xdelay == 1) ? 1:0;
assign HSYNC_constant_low = ( HSYNC == 0 and HSYNC_1xdelay == 0) ? 1:0;
/**************************************************************************/

always @(posedge clk)
begin
    if( START and PXCLK_pulse_high and HSYNC_constant_high )
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
    else if ( HSYNC_constant_low )
    begin
      ready_color_reg <= 1'b0;
      state <= BYTE1;
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

/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/
always @(posedge CLK)
begin
  VSYNC_1xdelay <= VSYNC;
end
always @(posedge CLK)
begin
  HREF_1xdelay <= HREF;
end
always @(posedge CLK)
begin
  PXCLK_1xdelay <= PXCLK;
end
/**************************************************************************/
assign PXCLK_pulse_high = ( PXCLK_1xdelay == 0 and PXCLK == 1) ? 1:0;
assign HSYNC_constant_high = ( HSYNC == 1 and HSYNC_1xdelay == 1) ? 1:0;
assign HSYNC_constant_low = ( HSYNC == 0 and HSYNC_1xdelay == 0) ? 1:0;
/**************************************************************************/

always @(posedge CLK)
begin
  if(ready_color and PXCLK_pulse_high )
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
end

assign led = led_reg;
assign debug = debug_reg;
assign sum_signal = sum_reg;

/************************************************************************************
*************************************************************************************
**********************************CONTADOR DE FILAS**********************************
*************************************************************************************.
/*************************************************************************************/
reg [8:0] pixel_fila_reg = 9'd0;
reg debug_reg = 1'b0;
reg HREF_pulse_high;
reg VSYNC_1xdelay;
reg HREF_1xdelay;
reg VSYNC_constant_high;
reg VSYNC_constant_low;

/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/
always @(posedge CLK)
begin
  VSYNC_1xdelay <= VSYNC;
end

always @(posedge CLK)
begin
  HREF_1xdelay <= HREF;
end
/**************************************************************************/
assign VSYNC_constant_high = ( VSYNC == 1 and VSYNC_1xdelay == 1) ? 1:0;
assign VSYNC_constant_low = ( VSYNC == 0 and VSYNC_1xdelay == 0) ? 1:0;
assign HREF_pulse_high = ( HREF == 1 and HREF_1xdelay == 0) ? 1:0;
/**************************************************************************/
always @(posedge CLK)
begin

  if ( VSYNC_constant_low and START)
    begin
      if( HREF_pulse_high )
      begin
        pixel_fila_reg <= pixel_fila_reg + 9'd1;
      end
    end
  else if ( VSYNC_pulse_high )
    begin
      pixel_fila_reg <= 9'd0;
    end
end

assign pixel_fila = pixel_fila_reg;
assign debug = debug_reg;
/************************************************************************************
*************************************************************************************
**********************************CONTADOR DE COLUMNAS*******************************
*************************************************************************************
*************************************************************************************
*************************************************************************************/
reg [9:0] pixel_columna_reg = 10'd0;
reg debug_reg = 1'b0;
reg PXCLK_1xdelay;
reg PXCLK_pulse_high;
reg HSYNC_constant_high;
reg HSYNC_constant_low;
localparam BYTE1 = 1'b0;
localparam BYTE2 = 1'b1;
reg state = BYTE1;
/**************PULSES DELAY TO RECOGNIZE LEVEL'S CHANGES***************************/
always @(posedge CLK)
begin
  VSYNC_1xdelay <= VSYNC;
end
always @(posedge CLK)
begin
  HREF_1xdelay <= HREF;
end
always @(posedge CLK)
begin
  PXCLK_1xdelay <= PXCLK;
end
/**************************************************************************/
assign PXCLK_pulse_high = ( PXCLK_1xdelay == 0 and PXCLK == 1) ? 1:0;
assign HSYNC_constant_high = ( HSYNC == 1 and HSYNC_1xdelay == 1) ? 1:0;
assign HSYNC_constant_low = ( HSYNC == 0 and HSYNC_1xdelay == 0) ? 1:0;
/**************************************************************************/

always @(posedge CLK)
begin
  if ( START and PXCLK_pulse_high and HSYNC_constant_high )
  begin
    case ( state )
      BYTE1: state <= BYTE2;

      BYTE2:
      begin
        pixel_columna_reg <= pixel_columna_reg + 10'd1;
        state <= BYTE1;
      end
     endcase
  end
  else if ( HSYNC_constant_low )
  begin
    pixel_columna_reg <= 10'd0;
    state <= BYTE1;
  end
end

assign pixel_columna = pixel_columna_reg;
assign debug = debug_reg;
