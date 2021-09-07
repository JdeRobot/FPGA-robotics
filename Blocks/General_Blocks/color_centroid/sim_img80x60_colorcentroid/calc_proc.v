`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:10 06/24/2021 
// Design Name: 
// Module Name:    calculo_filter 
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
module calculo_filter(
    input clk,
	 input rst,
	 input [5:0] reg_histograma,
	 input [7-1:0] px_pos_ret,
	 input start,
    output reg[8-1:0] leds,
	 output reg[7-1:0] centroide
    );
	
	
	 reg [12-1:0] suma_areas;  
	 reg [17-1:0] suma_mult;
	 
	reg [5:0] histograma_calc [79:0];
	reg [5:0] histograma_aux [79:0];
	integer j;
	integer i;
	reg [7-1:0] px_pos_ret2;
	
	reg activo;
	wire end_exam;
	reg [7-1:0] cont80;
	
	
	// Se recibe un indice "px_pos_ret" y el reg_histograma, el histograma esta retrasado un ciclo de reloj
	// por tanto, se va a retrasar un ciclo de reloj px_pos_ret para sincronizar los datos.
	always @ (posedge clk, posedge rst) 
	begin
		
		if (rst) begin
		
			px_pos_ret2 <= 7'd0;
		end
		else begin
			
			px_pos_ret2 <= px_pos_ret;
		end
	end
	
	
	// Función que esta actualizando constantemente los valores del histograma auxiliar.
	always @ (posedge clk, posedge rst) 
	begin
		
		if (rst) begin
			for(i=0;i<=79;i=i+1) begin
				histograma_aux[i] <= 6'd0; 
			end
		end
		else begin 
			if (start) begin 
				for(i=0;i<=79;i=i+1) begin
					histograma_aux[i] <= 6'd0; 
				end			
			end
			else if (reg_histograma > histograma_aux[px_pos_ret2]) begin   
				histograma_aux[px_pos_ret2] <= reg_histograma; 
			end
		end

	end	

	
	// Estado "activo" que nos permitirá saber cuando se tiene que hacer los calculos. La señal start activará el estado
	// para el calculo y la señal end_exam nos dirá cuando ha finalizado las operaciones con el histograma
	always @ (posedge clk, posedge rst)
	begin 

		if (rst) begin
			
			activo <= 1'b0;
		end
		else begin
		
			if (start) begin
				
				activo <= 1'b1;
			end
			else if (end_exam) begin
			
				activo <= 1'b0;
			end
		end
	end
	
	
	//Contador/indice utilizado para examinar cada columna del histograma [0 hasta 79] 
	always @ (posedge clk, posedge rst) 
	  begin
		 if (rst) begin   
			cont80 <= 7'd0;
		 end 
		 else begin 
			 if (end_exam) begin
				cont80 <= 7'd0;
			 end
			 else if (activo) begin
				cont80 <= cont80 +1'b1;
			 end 
		end
	end

	assign end_exam = (cont80 == 80-1)? 1'b1 : 1'b0;
	
	
	
	// Cuando se haya terminado de examinar todo el frame, se tranfiere todos los resultados (histograma_aux) al 
	// histograma de calculo que se utilizarán para hacer como referencia para todas las operaciones necesarias para calcular
	// el centroide mientras el histograma_auxiliar esta recibiendo los nuevos datos del nuevo frame.
	always @ (posedge clk, posedge rst) 
	begin
		
		if (rst) begin
			for(j=0;j<=79;j=j+1) begin
				histograma_calc[j] = 6'd0; 
			end
		end
		else begin 
			if (start) begin
				for(j=0;j<=79;j=j+1) begin
					histograma_calc[j] = histograma_aux[j]; 
				end
			end
		end

	end
	
	
	always @ (posedge clk, posedge rst) 
	begin
	
	if (rst) begin
		suma_areas <= 12'd0;
	end
	else begin 
		
		if (activo) begin 
			suma_areas <= suma_areas + histograma_calc[cont80];
		end
		else begin
			suma_areas <= 12'b0;
		end
	end

end


	always @ (posedge clk, posedge rst) 
	begin
		
		if (rst) begin
			suma_mult <= 17'd0;
		end
		else begin 
			
			if (activo) begin 
				suma_mult <= suma_mult + histograma_calc[cont80]*cont80;
			end
			else begin 
				suma_mult <= 17'd0;
			end
		end

	end




	 
//según col pintamos LEDs
always @ (posedge clk, posedge rst) 
begin
  if (rst) begin   
		leds <= 8'b00000000; 
  end
  else begin
    if (centroide < 10) begin
      leds <= 8'b10000000;
    end
    else if (centroide <20) begin
      leds <= 8'b01000000;
    end      
    else if (centroide <30) begin
      leds <= 8'b00100000;
    end
    else if (centroide <40) begin
      leds <= 8'b00010000;
    end      
    else if (centroide <50) begin
      leds <= 8'b00001000;
    end      
    else if (centroide <60) begin   
      leds <= 8'b00000100;
    end    
    else if (centroide <70) begin
      leds <= 8'b00000010;
    end      
    else begin
      leds <= 8'b00000001;     
    end     
	 
  end
end




// DIVISION
	reg [4-1:0] bitsdesplaza;
	
	parameter
		ESPERA = 0,
		DESPLAZA = 1,
		OPERA = 2;
	
	reg [2-1:0] EstadoDiv;
	reg [17-1:0] Dsor;
	reg [17-1:0] Ddo_aux;
	reg [17-1:0] dividendo_reg;
	reg [17-1:0] cociente;
	reg avisoDiv;


	always @(posedge rst, posedge clk)
	begin
	
		if (rst) begin
		
			cociente <= 17'd0;
			//resto <= 17'd0;
			bitsdesplaza <= 4'd0;
			EstadoDiv <= 2'd0; // ESPERA
			avisoDiv <= 1'b0;
			Dsor <= 17'd0;
			dividendo_reg <= 17'd0;
			Ddo_aux = 17'd0;
		
		end
		else begin
			
			if (EstadoDiv == ESPERA) begin
			
				avisoDiv <= 1'b0;
				Dsor <= {5'd0, suma_areas};
				dividendo_reg <= suma_mult;
				if (end_exam) begin
					
					cociente <= 17'd0;
					//resto <= 17'd0;
					if ((dividendo_reg == 0) || (Dsor == 0)) begin
					
						EstadoDiv <= 2'd0; // ESPERA
						avisoDiv <= 1'b1;
						
					end
					else begin
					
						EstadoDiv <= 2'd1; // Desplaza
						bitsdesplaza <= 4'd0;
					
					end
				end
			end
			else if (EstadoDiv == DESPLAZA) begin
			
				if (dividendo_reg > Dsor) begin
					
					if (Dsor[17-1] == 1'b0) begin
						
						Dsor[17-1:1] <= Dsor[17-2:0];
						Dsor[0] <= 1'b0;
						bitsdesplaza <= bitsdesplaza + 1'b1;
                  EstadoDiv <= DESPLAZA;
					
					end
					else begin
					
						EstadoDiv <= OPERA;
					
					end
				end
				else begin
				
					EstadoDiv <= OPERA;
				
				end
			end
			else if (EstadoDiv == OPERA) begin
			
				if (dividendo_reg >= Dsor) begin
				
					Ddo_aux = dividendo_reg - Dsor;
					dividendo_reg <= Ddo_aux;
					cociente[bitsdesplaza] <= 1'b1;
					if (bitsdesplaza == 1'b0) begin
					
						EstadoDiv <= ESPERA;
						avisoDiv <= 1'b1;
						//resto <= Ddo_aux;
					
					end
					else begin

						Dsor[17-2:0] <= Dsor[17-1:1];
						Dsor[17-1] <= 1'b0;
						EstadoDiv <= OPERA;
						bitsdesplaza <= bitsdesplaza - 1'b1;
					
					end
				end
				else begin
					
					if (bitsdesplaza == 4'd0) begin
					
						EstadoDiv <= ESPERA;
						//resto <= Ddo_aux;
						avisoDiv <= 1'b1;
					
					end
					else begin
					
						Dsor[17-2:0] <= Dsor[17-1:1];
						Dsor[17-1] <= 1'b0;
						EstadoDiv <= OPERA;
						bitsdesplaza <= bitsdesplaza - 1'b1;
					
					end
				end
			end
			else begin

				cociente <= 17'd0;
				//resto <= 17'd0;
				bitsdesplaza <= 4'd0;
				EstadoDiv <= 2'd0; // ESPERA
				avisoDiv <= 1'b0;			
				
			end
		end
	end

	
	always @(posedge rst, posedge clk)
	begin
	
		if (rst) begin
		
			centroide <= 7'd0;
		
		end 
		else begin
		
			if (avisoDiv) begin
			
				centroide <= cociente[6:0];
			
			end
		
		end

	end 

endmodule
