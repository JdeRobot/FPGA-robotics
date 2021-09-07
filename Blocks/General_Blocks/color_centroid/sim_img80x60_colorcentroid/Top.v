`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:49 07/15/2021 
// Design Name: 
// Module Name:    Top 
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
module top(
	input clk,
	input rst,
	input [2:0] rgbfilter,
	output proc_we,
	output [12-1:0] proc_pxl,
	output [13-1:0] proc_addr, 
	output [7:0] leds,
	output [7-1:0] centroide	
    );
	 
	wire [12-1:0] s_orig_pxl;
	wire [12-1:0] s_orig_pxl2;
	wire [12-1:0] s_orig_pxl_final; 
	wire [13-1:0] s_orig_addr;
	reg estado_mem;
	wire s_start;
	
	wire [7-1:0] pos_col_ret;
	wire [5:0] reg_histograma;
	wire start;
	
	
	assign start = s_start;
	
	color_proc proc_img
	(
		.rst (rst),
		.clk (clk),
		.rgbfilter (rgbfilter), 
		.orig_pxl (s_orig_pxl_final),
		.orig_addr (s_orig_addr),
		.proc_we	(proc_we),
		.proc_pxl (proc_pxl),
		.proc_addr (proc_addr),
		.pos_col_ret (pos_col_ret),
		.reg_histograma (reg_histograma),
		.start (s_start)
	);

	
	ROM_RGB_9b_marco memoria
	(
		.clk (clk),
		.addr (s_orig_addr),
		.dout (s_orig_pxl)
	);
	
	ROM_RGB_9b_dibujo memoria2
	(
		.clk (clk),
		.addr (s_orig_addr),
		.dout (s_orig_pxl2)
	);
	
	calculo_filter calc_centroide
	(
		.clk (clk),
		.rst (rst),
		.reg_histograma (reg_histograma),
		.px_pos_ret  (pos_col_ret),
		.start (s_start),
	   .leds (leds),
		.centroide (centroide)
	
	);
	

	always @ (posedge clk, posedge rst) 
	begin
		
		if (rst) begin
			estado_mem <= 1'b0;
		end
		else begin 
			
			if (s_start) begin 
				estado_mem <= !estado_mem;
			end

		end

	end
	
	assign s_orig_pxl_final =  estado_mem ? s_orig_pxl2 : s_orig_pxl;

endmodule
