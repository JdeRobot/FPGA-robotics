/*input : offset, number, x_px[9:0], y_px[9:0], px_clk

output: flag

behaviour: With the offset we can control the position of the number on the screen. This module 
check if the actual pixel has to be drawn*/


/**********************************************************************/
wire area1, area2, area3, area4, area5, area6, area7, area8, area9, areadif1;
reg flag;
parameter init_h = 108;
parameter init_v = 140;
/***********************************************************************/

assign area1= (x_px<=init_h+8+offset && x_px>=init_h+4+offset && y_px>=init_v+12 && y_px<=init_v+99) ? 1:0;
assign area2= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+10 && y_px<=init_v+14) ? 1:0;
assign area3= (x_px<=init_h+103+offset && x_px>=init_h+99+offset && y_px>=init_v+12 && y_px<=init_v+99) ? 1:0;
assign area4= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+97 && y_px<=init_v+101) ? 1:0;
assign area5= (x_px<=init_h+8+offset && x_px>=init_h+4+offset && y_px>=init_v+101 && y_px<=init_v+188) ? 1:0;
assign area6= (x_px<=init_h+103+offset && x_px>=init_h+99+offset && y_px>=init_v+101 && y_px<=init_v+188) ? 1:0;
assign area7= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+186 && y_px<=init_v+190) ? 1:0;
assign area8= (x_px<=init_h+97+offset && x_px>=init_h+10+offset && y_px>=init_v+10 && y_px<=init_v+14) ? 1:0;
assign areadif1 = (x_px<=init_h+55+offset && x_px>=init_h+51+offset && y_px>=init_v+142 && y_px<=init_v+146) ? 1:0;



always @ (posedge px_clk)

begin

  case (number)
      4'd0 :
      begin
        if (area1 || area2 || area3 || area6 || area7 || area5)
          flag = 1'b1;
        else 
          flag = 1'b0;
      end
      4'd1:
      begin
        if (area3 || area6)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd2:
      begin
        if (area2 || area3 || area4 || area5 || area7)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd3:
      begin
        if (area2 || area3 || area4 || area6 || area7)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd4:
      begin
         if (area1 || area4 || area3 || area6)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd5:
      begin
        if (area2 || area1 || area4 || area6 || area7)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd6:
      begin
        if (area2 || area1 || area4 || area6 || area7 || area5)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd7:
      begin
         if (area2 || area3 || area6)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd8:
      begin
        if (area1 || area2 || area3 || area4 || area5 || area6 || area7 || area8)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd9:
      begin
        if (area1 || area2 || area3 || area4 || area6)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd10: //A
      begin
        if (area1 || area2 || area4|| area3 || area5 || area6 || areadif1)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd11: //B
      begin
         if (area1 || area4 || area5 || area6 || area7 || areadif1)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd12: //C
      begin
         if (area1 || area2 || area5 || area7 || areadif1)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd13: //D
      begin
         if (area3  || area4 || area5 || area6 ||area7 || areadif1)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd14: //E
      begin
         if (area1 || area2 ||area4 || area5 || area7 || areadif1)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
      4'd15: //F
      begin
         if (area1 || area2 || area4 || area5 || areadif1)
          flag = 1'b1;
        else
          flag = 1'b0;
      end
  endcase

end