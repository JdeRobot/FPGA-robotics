module RGBgraphics (
                input  wire clk,            // System clock.
                input wire        clr,        // Asyncronous reset.
                input  wire [9:0] x_img,    // X position in image.
                input  wire [9:0] y_img,    // Y position in image.
                output reg  [7:0] Rp,             // Pixel (R) in x and y positon.
                output reg  [7:0] Gp,             // Pixel (G) in x and y positon.
                output reg  [7:0] Bp             // Pixel (B) in x and y positon.
             );

    // Image in HEX.
    localparam IMG = "dataSplit.hex";

    // Width and height image.
    parameter WIDTH = 32;
    parameter HEIGHT = 32;
    parameter sizeOfLengthReal = 3072;   // image data : bytes: 3073 32 * 32 * 3
    //parameter sizeOfLengthReal = 12288;   // image data : 1179648 bytes: 64 * 64 *3 



    parameter  [7:0] white = 8'b11111111;

  
    // Memory
    reg [7 : 0] img_storage [0 : sizeOfLengthReal-1];// memory to store  8-bit data image

  
    // Load file in memory.
    initial
    begin
        $readmemh(IMG, img_storage, 0,sizeOfLengthReal-1);
    end


    // Read memory.
    always @(posedge clk) begin
      //$display("Leemos X,Y[%d;%d]",x_img,y_img);

      
        if ((x_img >= 0) && (x_img < WIDTH ) && (y_img >= 0) && (y_img < HEIGHT))
        begin
          Rp = img_storage[WIDTH*3*(x_img)+3*y_img+0];
          $display("Rp[%d]=%b",(WIDTH*3*(x_img)+3*y_img+0),Rp);
          Gp = img_storage[WIDTH*3*(x_img)+3*y_img+1];
          // $display("Gp[%d]=%b",(WIDTH*3*(x_img)+3*y_img+1),Gp);
          Bp = img_storage[WIDTH*3*(x_img)+3*y_img+2];
          //$display("Bp[%d]=%b",(WIDTH*3*(x_img)+3*y_img+2),Bp);
        end
        else
        begin
            Rp=white;
            Gp=white;
            Bp=white;

        end

    end
  
endmodule
