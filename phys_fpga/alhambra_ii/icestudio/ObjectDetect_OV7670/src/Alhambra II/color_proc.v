//------------------------------------------------------------------------------
//   Richard A. Nicklas
//
//   color_proc.v
//   Takes an image from a memory, light leds depending on red pixel position on frame
//   
//

module color_proc
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
    output reg                 proc_we,  //write enable, to write processed pxl
    output reg [c_nb_buf-1:0]  proc_pxl, // processed pixel to be written
    output [c_nb_img_pxls-1:0] proc_addr, // address of processed pixel

    output [7:0] leds
  );


  reg [c_nb_img_pxls-1:0]  cnt_pxl;
  reg [c_nb_img_pxls-1:0]  cnt_pxl_proc;
  reg [7:0] r_leds;

  wire end_pxl_cnt;
  wire end_ln;
  wire tmpw;

  parameter  BLACK_PXL = {c_nb_img_pxls{1'b0}};

//array de 80 en el que cada indice tendre el numero de pixeles coloreados,
// indice con el valor mayor, luegom eso representa un octante.


//filtro mas led. 


  reg [5:0] histograma [79:0];


  integer col;
  integer prev_high;
  integer i; 
  integer j; 
  integer px_pos;

  integer tmp;

  // memory address count
  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      cnt_pxl <= 0;
      cnt_pxl_proc <= 0;
      proc_we <= 1'b0;    
    end
    else begin
      proc_we <= 1'b1;
      // data from memory received a clock cycle later
      cnt_pxl_proc <= cnt_pxl;
      if (end_pxl_cnt ) begin
        cnt_pxl <= 0;
      end
      else
        cnt_pxl <= cnt_pxl + 1;
    end
  end

  assign end_pxl_cnt = (cnt_pxl == c_img_pxls-1) ? 1'b1 : 1'b0;
  assign orig_addr = cnt_pxl;
  assign proc_addr = cnt_pxl_proc;

  //wire para contar hasta 80
  assign end_ln = (px_pos == c_img_cols-1)? 1'b1 : 1'b0;
  //aqui intento hacer la comprobacion para asignar un nuevo maximo a prev_high



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
      px_pos <= px_pos +1;
    end 
end

//según col pintamos LEDs
always @ (posedge clk, posedge rst) 
begin
  if (rst) begin   
    r_leds <= 8'b00000000; 
  end
  else begin
    if (col < 9) begin
      r_leds <= 8'b10000000;
    end
    else if (col <19) begin
      r_leds <= 8'b01000000;
    end      
    else if (col <29) begin
      r_leds <= 8'b00100000;
    end
    else if (col <39) begin
      r_leds <= 8'b00010000;
    end      
    else if (col <49) begin
      r_leds <= 8'b00001000;
    end      
    else if (col <59) begin   
      r_leds <= 8'b00000100;
    end    
    else if (col <69) begin
      r_leds <= 8'b00000010;
    end      
    else begin
      r_leds <= 8'b00000001;     
    end     


/*
    if (col < 39) begin
      r_leds <= 8'b11100000;
    end      
    else begin
      r_leds <= 8'b00000111;     
    end */
  end
end

//reg [5:0] histograma [79:0];
//histograma almacena los pixeles rojos en cada columna, se resetea cada frame
always @ (posedge clk, posedge rst) 
begin
  if (rst) begin  
    for(i=0;i<=79;i=i+1) begin
      histograma[i] <= 0;      
    end
  end 
  else if (end_pxl_cnt) begin
    for(i=0;i<=79;i=i+1) begin
      histograma[i] <= 0;      
    end
  end
  else begin
    if (orig_pxl[c_msb_red]) begin 
      histograma[px_pos] <= histograma[px_pos] + 1;
    //  histograma[px_pos] <= 1;
    end
  end
end


  assign tmpw = (prev_high < histograma[px_pos])? 1'b1 : 1'b0;

//Si prev_high < el valor actual del histograma (tmpw) asignamos el nuevo maximo
// y guardamos la columna en col

  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin   
      prev_high <=0;
      col <=0;
    end      
    else if(tmpw) begin
        prev_high <= histograma[px_pos];
        col <= px_pos;
     end 
  end



    /*
   
    */ 

  assign leds = r_leds;

  always @ (orig_pxl, rgbfilter) // should include RGB mode
  begin
    // check on RED
    case (rgbfilter)
      3'b000: // no filter, output same as input
        proc_pxl <= orig_pxl;
      3'b100: begin // red filter
        if (orig_pxl[c_msb_red])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b010: begin // green filter
        if (orig_pxl[c_msb_green])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b001: begin // filter blue
        if (orig_pxl[c_msb_blue])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b110: begin // filter red and green
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b101: begin // filter red and blue
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_blue])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b011: begin // filter green and blue
        if (orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
      3'b111: begin // red, green and blue filter
        if (orig_pxl[c_msb_red] & orig_pxl[c_msb_green] & orig_pxl[c_msb_blue])
          proc_pxl <= orig_pxl;
        else
          proc_pxl <= BLACK_PXL;
      end
    endcase
  end

endmodule
