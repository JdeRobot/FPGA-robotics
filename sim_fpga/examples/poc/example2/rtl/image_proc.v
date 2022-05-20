module image_proc
	# (parameter
		// VGA
			//c_img_cols    = 640, // 10 bits
			//c_img_rows    = 480, //  9 bits
			//c_img_pxls    = c_img_cols * c_img_rows,
			//c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;
			// c_nb_img_pxls = log2i(c_img_pxls-1) + 1
			//c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288
			// QQVGA
			//c_img_cols    = 160, // 8 bits
			//c_img_rows    = 120, //  7 bits
			//c_img_pxls    = c_img_cols * c_img_rows,
		//c_nb_img_pxls =  15,  //160*120=19.200 -> 2^15
		// QQVGA /2
		c_img_cols    = 80, // 7 bits
		c_img_rows    = 60, //  6 bits
		c_img_pxls    = c_img_cols * c_img_rows,
		c_nb_img_pxls =  13,  //80*60=4800 -> 2^13
		c_nb_buf_red   =  4,  // n bits for red in the buffer (memory)
		c_nb_buf_green =  4,  // n bits for green in the buffer (memory)
		c_nb_buf_blue  =  4,  // n bits for blue in the buffer (memory)
		// word width of the memory (buffer)
		c_nb_buf       =   c_nb_buf_red + c_nb_buf_green + c_nb_buf_blue,
		// position of the most significant bits of each color
		c_msb_blue  = c_nb_buf_blue-1,
		c_msb_red   = c_nb_buf-1,
		c_msb_green = c_msb_blue + c_nb_buf_green
	)
	(
		input          rst,       //reset, active high
		input          clk,       //fpga clock
		input  [2:0]   rgbfilter, // color filter to be applied
		// Address and pixel of original image
		input  [c_nb_buf-1:0]      orig_pxl,  //pixel from original image
		output [c_nb_img_pxls-1:0] orig_addr, //pixel mem address original img
		// Address and pixel of processed image
		output                  proc_we,  //write enable, to write processed pxl
		output [c_nb_buf-1:0]  proc_pxl, // processed pixel to be written
		output [c_nb_img_pxls-1:0] proc_addr, // address of processed pixel
		output [7-1:0] pos_col_ret,
		output [6-1:0] reg_histograma,
		output start
	);
	reg [c_nb_buf-1:0]  proc_pxl_r;
	reg [6-1:0] reg_histograma_r;
	reg proc_we_r;
	reg [c_nb_img_pxls-1:0]  cnt_pxl;
	reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;
	wire end_pxl_cnt;
	wire end_ln;
	wire tmpw;
	parameter limite_azul = 4'b1001; // 9 en decimal
	parameter limite_verde = 4'b1001; // 9 en decimal
	parameter  BLACK_PXL = {c_nb_buf{1'b0}};
	reg [5:0] histograma [79:0];
	integer i; 
	reg [6-1:0] prev_high;
	reg [7-1:0] px_pos, px_pos_ret;
	// Contador de filas para eliminar filas superiores e inferiores (Solo se examina 64x48 px)
	reg [6-1:0] cnt_filas;
	// memory address count
	always @ (posedge rst, posedge clk)
	begin
		if (rst) begin
			cnt_pxl <= 0;
			cnt_pxl_proc <= 0;
			proc_we_r <= 1'b0;    
		end
		else begin
			proc_we_r <= 1'b1;
			// data from memory received a clock cycle later
			cnt_pxl_proc <= cnt_pxl;
			if (end_pxl_cnt ) begin
				cnt_pxl <= 0;
			end
			else
			cnt_pxl <= cnt_pxl + 1'b1;
		end
	end
	assign start = end_pxl_cnt;
	assign end_pxl_cnt = (cnt_pxl == c_img_pxls-1) ? 1'b1 : 1'b0;
	assign orig_addr = cnt_pxl;
	assign proc_addr = cnt_pxl_proc;
	//wire para contar hasta 80
	assign end_ln = (px_pos == c_img_cols-1)? 1'b1 : 1'b0;
	//aqui intento hacer la comprobacion para asignar un nuevo maximo a prev_high
	//Contador filas hasta 63
	always @ (posedge clk, posedge rst) 
	begin
		if (rst) begin   
			cnt_filas <=0;
		end 
		else if (end_pxl_cnt) begin
			cnt_filas <= 0;
		end
		else if (end_ln) begin
			cnt_filas <= cnt_filas +1'b1;
		end 
	end
	//Contador hasta 80 
	always @ (posedge clk, posedge rst) 
	begin
		if (rst) begin   
			px_pos <=0;
		end 
		else if (end_ln) begin
			px_pos <= 0;
		end
		else begin
			px_pos <= px_pos +1'b1;
		end 
	end
	assign pos_col_ret = px_pos_ret;
	//Retrasar px_pos
	always @ (posedge clk, posedge rst)
	begin
		if (rst) begin
			px_pos_ret <= 0;
		end
		else begin
			px_pos_ret <= px_pos;
		end
	end 
	//reg [5:0] histograma [79:0];
	//histograma almacena los pixeles rojos en cada columna, se resetea cada frame
	always @ (posedge clk, posedge rst) 
	begin
		if (rst) begin  
			for(i=0;i<=79;i=i+1) begin
				histograma[i] = 6'd0; 
			end
			reg_histograma_r = 6'd0;
		end 
		else begin 
			if (end_pxl_cnt) begin
				for(i=0;i<=79;i=i+1) begin
					histograma[i] = 6'd0; 
				end
				reg_histograma_r = 6'd0;
			end
			else begin
				if (px_pos_ret >= 8 && px_pos_ret <= 71 && cnt_filas >= 6 && cnt_filas <= 53) begin
					if (orig_pxl[c_msb_red] && orig_pxl[7:4]< limite_verde && orig_pxl[3:0]< limite_azul) 
					begin 
						histograma[px_pos_ret] = histograma[px_pos_ret] + 1'b1;
						reg_histograma_r = histograma[px_pos_ret];
					end
					else begin
						reg_histograma_r = 6'd0;
					end
				end
				else begin 
					reg_histograma_r = 6'd0;
				end
			end
		end
	end
	assign tmpw = (prev_high < histograma[px_pos_ret])? 1'b1 : 1'b0;
	//Si prev_high < el valor actual del histograma (tmpw) asignamos el nuevo maximo
	// y guardamos la columna en col
	always @ (posedge clk, posedge rst) 
	begin
		if (rst) begin   
			prev_high <=0;
		end  
		else if (end_pxl_cnt) begin
			prev_high <=0;
		end
		else if(tmpw) begin
			prev_high <= histograma[px_pos_ret];
		end 
	end
	always @ (orig_pxl, rgbfilter) // should include RGB mode
	begin
		// check on RED
		case (rgbfilter)
			3'b000: // no filter, output same as input
			proc_pxl_r = orig_pxl;
			3'b100: begin // red filter
				if (orig_pxl[c_msb_red] && orig_pxl[7:4]< limite_verde && orig_pxl[3:0]< limite_azul)
				proc_pxl_r = orig_pxl;
				else
				proc_pxl_r = BLACK_PXL;
			end
			3'b010: begin // green filter
				if (orig_pxl[c_msb_green])
				proc_pxl_r = orig_pxl;
				else
				proc_pxl_r = BLACK_PXL;
			end
			3'b001: begin // filter blue
				if (orig_pxl[c_msb_blue])
				proc_pxl_r = orig_pxl;
				else
				proc_pxl_r = BLACK_PXL;
			end
			3'b110: begin // filter red and green
				if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green])
				proc_pxl_r = orig_pxl;
				else
				proc_pxl_r = BLACK_PXL;
			end
			3'b101: begin // filter red and blue
				if (orig_pxl[c_msb_red] & orig_pxl[c_msb_blue])
				proc_pxl_r = orig_pxl;
				else
				proc_pxl_r = BLACK_PXL;
			end
			3'b011: begin // filter green and blue
				if (orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
				proc_pxl_r = orig_pxl;
				else
				proc_pxl_r = BLACK_PXL;
			end
			3'b111: begin // red, green and blue filter
				if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
				proc_pxl_r = orig_pxl;
				else
				proc_pxl_r = BLACK_PXL;
			end
		endcase
	end
	
	assign proc_pxl = proc_pxl_r;
	assign reg_histograma = reg_histograma_r;
	assign proc_we = proc_we_r;
	
endmodule