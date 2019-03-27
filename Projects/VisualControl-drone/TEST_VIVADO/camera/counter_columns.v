`timescale 1ns / 1ps
module counter_columns(
    input VSYNC,
    input HREF,
    input PCLK,
    input CLK,
    input START,
    //output DEBUG,
    output [9:0] PIXEL_COLUMN
    );

/**********************************CONTADOR DE COLUMNAS*******************************
*************************************************************************************
*************************************************************************************
*************************************************************************************/
reg [9:0] pixel_columna_reg = 10'd0;
reg debug_reg = 1'b0;
reg PXCLK_1xdelay;
wire PXCLK_pulse_high;
wire HREF_constant_high;
wire HREF_constant_low;
reg VSYNC_1xdelay;
reg HREF_1xdelay;
reg PCLK_1xdelay;
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
  PCLK_1xdelay <= PCLK;
end
/**************************************************************************/
assign PCLK_pulse_high = ( PCLK_1xdelay == 0 && PCLK == 1) ? 1:0;
assign HREF_constant_high = ( HREF == 1 && HREF_1xdelay == 1) ? 1:0;
assign HREF_constant_low = ( HREF == 0 && HREF_1xdelay == 0) ? 1:0;
/**************************************************************************/
always @(posedge CLK)
begin
  if ( START && PCLK_pulse_high && HREF_constant_high )
  begin
    case ( state )
      BYTE1:
      begin
      state <= BYTE2;
      debug_reg <= !debug_reg;
      end
      BYTE2:
      begin
        pixel_columna_reg <= pixel_columna_reg + 10'd1;
        state <= BYTE1;
        debug_reg <= !debug_reg;
      end
     endcase
  end
  else if ( HREF_constant_low )
  begin
    pixel_columna_reg <= 10'd0;
    state <= BYTE1;
  end
end

assign PIXEL_COLUMN = pixel_columna_reg;
//assign DEBUG = debug_reg;


endmodule
