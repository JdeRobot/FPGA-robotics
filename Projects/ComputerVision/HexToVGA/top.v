`default_nettype none

module top (
            input  wire clk,             // System clock.
            input  wire clr,             // Asynchronous reset.
            output wire hsync,           // Horizontal sync out signal (pin 13 male monitor).
            output wire vsync,           // Vertical sync out signal (pin 14 male monitor).
            output wire red_monitor,     // Red VGA signal (pin 1 male monitor).
            output wire green_monitor,   // Green VGA signal (pin 2 male monitor).
            output wire blue_monitor,    // Blue VGA signal (pin 3 male monitor).
            output wire [1:0] code_sound,// Debug for the sound.
            output wire sound,           // PWM signal for the sound (for a future).
            input wire  inc_vel,         // Increment logo velocity.
            input wire  dec_vel          // Decrement logo velocity.
        );

    wire  [9:0] x_px;
    wire  [9:0] y_px;
    wire  [7:0] R_px;
    wire  [7:0] G_px;
    wire  [7:0] B_px;
    wire  px_clk;
 

    // Instanciate 'vga_controller' module.
    vga_controller
    vga_controller01 (
                    .clk (clk),                     // Input clock: 12MHz
                    .Rp (R_px),     
                    .Gp (G_px),  
                    .Bp (B_px),
                    .hsync (hsync),                 // Horizontal sync out
                    .vsync (vsync),                 // Vertical sync out
                    .red_monitor (red_monitor),     // RED vga output
                    .green_monitor (green_monitor), // GREEN vga output
                    .blue_monitor (blue_monitor),   // BLUE vga output
                    .x_px(x_px),                    // X position for actual pixel.
            		.y_px(y_px),                    // Y position for actual pixel.
                    .px_clk(px_clk)
                    );

    // Instanciate 'logo' module.
    RGBgraphics
    image (
            .clk (px_clk),                     // Input clock: 12MHz
            .clr (clr),                     // Asynchronous reset
            .x_img(x_px),                    // Position x actual pixel.
            .y_img(y_px),                    // Position y actual pixel.
            .Rp (R_px),     
            .Gp (G_px),  
            .Bp (B_px)
          );

endmodule
