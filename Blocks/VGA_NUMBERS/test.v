// input px_clk 
//algunos colores que usaremos
parameter [2:0] green = 3'b010;
parameter [2:0] blue  = 3'b001;
    parameter activeHvideo = 640;               // Width of visible pixels.
    parameter activeVvideo =  480;              // Height of visible lines.
    parameter hfp = 24;                         // Horizontal front porch length.
    parameter hpulse = 40;                      // Hsync pulse length.
    parameter hbp = 128;                        // Horizontal back porch length.
    parameter vfp = 9;                          // Vertical front porch length.
    parameter vpulse = 3;                       // Vsync pulse length.
    parameter vbp = 28;                         // Vertical back porch length.
    parameter blackH = hfp + hpulse + hbp;      // Hide pixels in one line.
    parameter blackV = vfp + vpulse + vbp;      // Hide lines in one frame.
    parameter hpixels = blackH + activeHvideo;  // Total horizontal pixels.
    parameter vlines = blackV + activeVvideo;   // Total lines.
reg [2:0]  color_px;    // Actual pixel color.
wire px_clk;


assign areanumbers = (hc>= blackH+50 && hc<=blackckH+100 && vc>=blackV+50 && vc<=blackV+100) ? 1:0; //colocamos los numeros en el medio de la pantalla
always @(posedge px_clk)
    begin
        // First check if we are within vertical active video range.
        if (areanumbers)  //Si estamos dentro del area el pixel que mandara sera el de verde
        begin
            color_px = green;
        end
        else
        if (!areanumbers) //si no lo estamos seguimos con el de azul
        begin
            color_px = blue;
        end
     end