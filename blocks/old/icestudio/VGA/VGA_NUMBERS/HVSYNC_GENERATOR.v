wire       clk;         // Input clock: 12MHz
wire [2:0] color_px;    // Color RGB (8 colors) for actual pixel.
wire      vga_h_sync;        // Horizontal sync out
wire      vga_v_sync;      // Vertical sync out
reg       red_monitor;   // RED vga outputapio --board icezum
reg       green_monitor; // GREEN vga output
reg       blue_monitor;  // BLUE vga output
reg [9:0] x_px;        // X position for actual pixel.
reg [9:0] y_px;        // Y position for actual pixel.
wire      activevideo;
wire      px_clk;


    SB_PLL40_CORE #(.FEEDBACK_PATH("SIMPLE"),
                    .PLLOUT_SELECT("GENCLK"),
                    .DIVR(4'b0000),
                    .DIVF(7'b1010011),
                    .DIVQ(3'b101),
                    .FILTER_RANGE(3'b001)
            )
            uut
            (
                    .REFERENCECLK(clk),
                    .PLLOUTCORE(px_clk),
                    .RESETB(1'b1),
                    .BYPASS(1'b0)
              );

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

    // Registers for storing the horizontal & vertical counters.
    reg [9:0] hc;
    reg [9:0] vc;

    // Initial values.
    initial
    begin
      x_px <= 0;
      y_px <= 0;
      hc <= 0;
      vc <= 0;
      red_monitor <= 0;
      green_monitor <= 0;
      blue_monitor <= 0;
    end

    // Counting pixels.
    always @(posedge px_clk)
    begin
        // Keep counting until the end of the line.
        if (hc < hpixels - 1)
            hc <= hc + 1;
        else

        begin
            hc <= 0;
            if (vc < vlines - 1)
            vc <= vc + 1;
        else
           vc <= 0;
        end
     end

    // Generate sync pulses (active low) and active video.
    assign vga_h_sync = (hc >= hfp && hc < hfp + hpulse) ? 0:1;
    assign vga_v_sync = (vc >= vfp && vc < vfp + vpulse) ? 0:1;
    assign activevideo = (hc >= blackH && vc >= blackV) ? 1:0;
    // Generate color.
    always @(posedge px_clk)
    begin
        // First check if we are within vertical active video range.
        if (activevideo)
        begin
            red_monitor <= color_px[2];
            green_monitor <= color_px[1];
            blue_monitor <= color_px[0];
            x_px <= hc - blackH; //posicion actual x del pixel
            y_px <= vc - blackV; // posicion actual y pixel
        end
        else
        // We are outside active video range so display black.
        begin
            red_monitor <= 0;
            green_monitor <= 0;
            blue_monitor <= 0;
            x_px <= 0;
            y_px <= 0;
        end
     end
