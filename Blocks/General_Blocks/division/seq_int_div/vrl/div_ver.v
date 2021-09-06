`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:08 07/05/2021 
// Design Name: 
// Module Name:    div_ver 
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
module div_ver(
	input rst,
	input clk,
	input divide,
	input [17-1:0] dividendo,
	input [12-1:0] divisor,
	output reg [17-1:0] cociente,
	output reg [17-1:0] resto,
	output reg avisoDiv
    );
	 
	reg [4-1:0] bitsdesplaza;
	
	parameter
		ESPERA = 0,
		DESPLAZA = 1,
		OPERA = 2;
	
	reg [2-1:0] EstadoDiv;
	reg [17-1:0] Dsor;
	reg [17-1:0] Ddo_aux; 
	reg [17-1:0] dividendo_reg;
 
	
	always @(posedge rst, posedge clk)
	begin
	
		if (rst) begin
		
			cociente <= 17'd0;
			resto <= 17'd0;
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
				Dsor <= {5'd0, divisor};
				dividendo_reg <= dividendo;
				if (divide) begin
					
					cociente <= 17'd0;
					resto <= 17'd0;
					if ((dividendo_reg == 0) || (divisor == 0)) begin
					
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
						resto <= Ddo_aux;
					
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
						resto <= Ddo_aux;
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
				resto <= 17'd0;
				bitsdesplaza <= 4'd0;
				EstadoDiv <= 2'd0; // ESPERA
				avisoDiv <= 1'b0;			
				
			end
		end
	end
	
endmodule
