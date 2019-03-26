`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:26 03/20/2019 
// Design Name: 
// Module Name:    process_color 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module process_color(
    input [4:0] RED,
    input [5:0] GREEN,
    input [4:0] BLUE,
    input HREF,
    input VSYNC,
    input [8:0] PIXEL_FILA,
    input [9:0] PIXEL_COLUMNA,
    input CLK,
    input PCLK,
    input START,
    input READY_COLOR,
    output DEBUG
    );

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
assign PXCLK_pulse_high = ( PXCLK_1xdelay == 0 && PXCLK == 1) ? 1:0;
assign HSYNC_constant_high = ( HSYNC == 1 && HSYNC_1xdelay == 1) ? 1:0;
assign HSYNC_constant_low = ( HSYNC == 0 && HSYNC_1xdelay == 0) ? 1:0;
/**************************************************************************/

always @(posedge CLK)
begin
  if(ready_color && PXCLK_pulse_high )
  begin
    if( RED>=Rmin && RED<=Rmax && GREEN>=Gmin && GREEN<= Gmax && BLUE>=Bmin && BLUE<=Bmax )//ha pasado el filtro
      begin
        debug_reg <= 1'b1;
      end
    else
      begin
        debug_reg <= 1'b0;
      end
    sum_reg <= sum_reg + 18'd1;
  end
  /////////////////////////////////////////////////////////////////////////////////////////////
end

assign DEBUG = debug_reg;


endmodule
