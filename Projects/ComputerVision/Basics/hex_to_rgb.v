module hex_to_rgb (
                input  wire clk,            // System clock.
                input  wire [9:0] x_img,    // X position in image.
                input  wire [9:0] y_img,    // Y position in image.
                output reg  [7:0] Rp,             // Pixel (R) in x and y positon.
                output reg  [7:0] Gp,             // Pixel (G) in x and y positon.
                output reg  [7:0] Bp             // Pixel (B) in x and y positon.
             );

    // Image in HEX.
    localparam IMG = "logo.hex";

    // Width and height image.
    parameter WIDTH = 32;
    parameter HEIGHT = 32;
    parameter sizeOfLengthReal = 3073;   // image data : bytes: 3073 32 * 32 * 3

    // Memory
    reg [7 : 0] img_storage [0 : sizeOfLengthReal-1];// memory to store  8-bit data image

    // Load file in memory.
    initial
    begin
        $readmemh(IMG, img_storage, 0,sizeOfLengthReal-1);
    end


    // Read memory.
    always @(posedge clk) begin

        if ((x_img >= 0) && (x_img < WIDTH ) && (y_img >= 0) && (y_img < HEIGHT))
          Rp = img_storage[WIDTH*3*(HEIGHT-y_img-1)+3*x_img+0];
          Gp = img_storage[WIDTH*3*(HEIGHT-y_img-1)+3*x_img+1];
          Bp = img_storage[WIDTH*3*(HEIGHT-y_img-1)+3*x_img+2];
     /*     else
            Rp = 8'b00000000;
            Gp = 8'b00000000;
            Bp = 8'b00000000;
            */
    end
endmodule
