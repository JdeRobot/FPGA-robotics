`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:00 03/20/2019 
// Design Name: 
// Module Name:    start 
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
module start(
    input START_I2C,
    input VSYNC,
    output START
    );

reg start_reg = 1'b0;

always @(posedge VSYNC)
begin
    start_reg<= (START_I2C == 1'b1)? 1'b1:1'b0;
end

assign START = start_reg;

endmodule
