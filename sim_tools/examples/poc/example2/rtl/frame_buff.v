module frame_buff 
	#(	parameter c_img_cols 	= 80,						// # cols
		parameter c_img_rows 	= 60, 						// # rows
		parameter c_img_pxls 	= c_img_cols * c_img_rows, 	//4800=80x60
		parameter c_nb_img_pxls = 13,						//80*60=4800 -> 2^13
		parameter c_nb_buf 		= 12 						//4 bits for each color
	)
	(	input 	clk,
		input 	wea,
		input 	[c_nb_img_pxls-1:0] addra,
		input 	[c_nb_buf-1:0] dina,
		input 	[c_nb_img_pxls-1:0] addrb,
		output	[c_nb_buf-1:0] doutb
	);
	reg [c_nb_buf-1:0] ram[c_img_pxls-1:0];
	always @ (posedge clk)
	begin
		if (wea)
            ram[addra] <= dina;
        end
        assign doutb = ram[addrb];
endmodule