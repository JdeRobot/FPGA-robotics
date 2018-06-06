// input px_clk 
//algunos colores que usaremos
wire      areanumbers;
wire      arealogo;
   // Image name file in binary ASCII code.
    localparam FILE_LOGO = "logo.list";

    // Width and height image.
    parameter width = 80;
    parameter height = 80;

    // Memory
    reg [width-1:0] logo [height-1:0];
    //0-79 and 0-79
    // Load file in memory.
    initial
    begin
        $readmemb(FILE_LOGO, logo);
    end
parameter [2:0] green = 3'b010;
parameter [2:0] blue  = 3'b001;
parameter [2:0] white = 3'b111;
parameter [2:0] red = 3'b101;
parameter [2:0] black = 3'b000;
parameter [2:0] yellow = 3'b100;
parameter [2:0] orange =3'b110;
parameter [2:0] purple =3'b011;
parameter blackH = hfp + hpulse + hbp;      // Hide pixels in one line.
parameter blackV = vfp + vpulse + vbp;      // Hide lines in one frame.
parameter init_h = 108;
parameter init_v = 140;

reg [2:0]  color_px;    // Actual pixel color.
wire px_clk;


assign areanumbers = (x_px>=init_h && x_px<=init_h+424 && y_px>=140 && y_px<=340) ? 1:0; //colocamos los numeros en el medio de la pantalla
assign arealogo = (x_px<=160+120-1+width && x_px>=160+120+1 && y_px>=340+30 && y_px<=340+30-1+height) ? 1:0;

  always @(posedge px_clk)
    begin
      if(areanumbers)
        begin
        color_px = white;
        end
      if(flag[0] || flag[1] || flag[2] || flag[3])
        color_px = black;
      else 
        color_px = white;
      if (arealogo)
        begin
          if(logo[y_px-340-30][-x_px-160-120] == 1)
            color_px = red;
          else
            color_px = white;

        end
        
    end
