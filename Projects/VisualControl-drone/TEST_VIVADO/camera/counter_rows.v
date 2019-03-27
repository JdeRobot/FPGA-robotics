`timescale 1ns / 1ps
module counter_rows(
    input VSYNC,
    input HREF,
    input PCLK,
    input CLK,
    input START,
    output DEBUG,
    output [8:0] PIXEL_ROW
    );

/***********************************CONTADOR DE FILAS**********************************
*************************************************************************************
*************************************************************************************/
reg [8:0] pixel_fila_reg = 9'd0;
reg debug_reg = 1'b0;
reg VSYNC_1xdelay;
reg HREF_1xdelay;
wire VSYNC_constant_high;
wire VSYNC_pulse_high;
wire VSYNC_constant_low;
wire HREF_pulse_high;

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
assign VSYNC_constant_high = ( VSYNC == 1 && VSYNC_1xdelay == 1) ? 1:0;
assign VSYNC_constant_low = ( VSYNC == 0 && VSYNC_1xdelay == 0) ? 1:0;
assign HREF_pulse_high = ( HREF == 1 && HREF_1xdelay == 0) ? 1:0;
/**************************************************************************/
always @(posedge CLK)
begin

  if ( VSYNC_constant_low && START)
    begin
      if( HREF_pulse_high )
      begin
        pixel_fila_reg <= pixel_fila_reg + 9'd1;
		    debug_reg <= !debug_reg;
      end
    end
  else if ( VSYNC_pulse_high )
    begin
      pixel_fila_reg <= 9'd0;
    end
end

assign PIXEL_ROW = pixel_fila_reg;
assign DEBUG = debug_reg;


endmodule
