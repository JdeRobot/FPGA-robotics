module design_top
#(	parameter c_nb_img_pxls = 13,  						//80*60=4800 -> 2^13
	parameter c_nb_buf 		= 12, 						//4 bits for each color
	parameter c_nb_leds		= 8
)
(
	input clk,
	input rst,
	input wea, 			// Input frame_buff
	input [c_nb_img_pxls-1:0] addrin,	// Input frame_buff
	input [c_nb_buf-1:0] datain,	// Input frame_buff
	input [c_nb_img_pxls-1:0] addrout, // Output frame_buff
	input [2:0] wRgbfilter, // Filter
	output [c_nb_buf-1:0] dataout,	// Output frame_buff
	output [c_nb_leds-1:0] leds,	// Output leds
	output [c_nb_leds-2:0] centroid_nop	// Output leds
);
    
    /*
    wRgbfilter 000 > no filter
    wRgbfilter 001 > blue filter
    wRgbfilter 010 > green filter
    wRgbfilter 100 > red filter
    wRgbfilter 011 > green and blue filter
    wRgbfilter 110 > red and green filter
    wRgbfilter 111 > green, red, and blue filter
    */

	wire [c_nb_img_pxls-1:0] addrImg2Filt;
	wire [c_nb_buf-1:0] doutImg2Filt;
	wire [c_nb_img_pxls-1:0] procAddr;
	wire [c_nb_buf-1:0] procPixel;
	wire procWe;
	wire [5:0] histogram;
	wire [c_nb_leds-2:0] pxColRet;
	wire wStart;

  // frame buffer input
  frame_buff frame_buff_in(
    .clk   (clk),
    .wea   (wea),
    .addra (addrin),
	.dina  (datain),
	.addrb (addrImg2Filt),
    .doutb (doutImg2Filt)
  );
  
  // Image process
  image_proc img_process(
	.rst (rst),
	.clk (clk),
	.rgbfilter (wRgbfilter),
	.orig_pxl (doutImg2Filt),
	.orig_addr (addrImg2Filt),
	.proc_we (procWe),
	.proc_pxl (procPixel),
	.proc_addr (procAddr),
	.pos_col_ret (pxColRet),
	.reg_histograma (histogram),
	.start (wStart)
  );
  
  // calculate Fitler
  calc_filter image_filter(
	.clk (clk),
	.rst (rst),
	.reg_histograma (histogram),
	.px_pos_ret (pxColRet),
	.start (wStart),
	.leds (leds),
	.centroide (centroid_nop)
  );
    
  // frame buffer input
  frame_buff frame_buff_out(
    .clk   (clk),
    .wea   (procWe),
    .addra (procAddr),
	.dina  (procPixel),
	.addrb (addrout),
    .doutb (dataout)
  );
  
endmodule
