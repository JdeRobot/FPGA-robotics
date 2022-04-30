
module hex_to_rgb (
                input  wire clk,            // System clock.
                output reg  [7:0] Rp,             // Pixel (R) in x and y positon.
                output reg  [7:0] Gp,             // Pixel (G) in x and y positon.
                output reg  [7:0] Bp             // Pixel (B) in x and y positon.
             );

    // Image in HEX.
    localparam IMG = "kod32.hex";

    // Width and height image.
    parameter WIDTH = 32;
    parameter HEIGHT = 32;
    parameter sizeOfLengthReal = 3073;   // image data : bytes: 3073 32 * 32 * 3
    //parameter sizeOfLengthReal = 12288;   // image data : 1179648 bytes: 64 * 64 *3 


  reg [8:0] x_img; // counter for vsync
  reg [8:0] y_img; // counter  for hsync


  
    // Memory
    reg [7 : 0] img_storage [0 : sizeOfLengthReal-1];// memory to store  8-bit data image

  
    // Load file in memory.
    initial
    begin
        $readmemh(IMG, img_storage, 0,sizeOfLengthReal-1);
        x_img =0;
        y_img =0;
    end


    // Read memory.
    always @(posedge clk) begin
      $display("Leemos X,Y[%d;%d]",x_img,y_img);

      
        if ((x_img >= 0) && (x_img < WIDTH ) && (y_img >= 0) && (y_img < HEIGHT))
          Rp = img_storage[WIDTH*3*(x_img)+3*y_img+0];
      $display("Rp[%d]=%b",(WIDTH*3*(x_img)+3*y_img+0),Rp);

      Gp = img_storage[WIDTH*3*(x_img)+3*y_img+1];
      $display("Gp[%d]=%b",(WIDTH*3*(x_img)+3*y_img+1),Gp);
      Bp = img_storage[WIDTH*3*(x_img)+3*y_img+2];
      $display("Bp[%d]=%b",(WIDTH*3*(x_img)+3*y_img+2),Bp);


    end
  
  // counters for vsync, hsync
  always@(posedge clk)
    begin
      if(y_img==WIDTH-1) begin
        y_img <= 0;
        x_img <= x_img + 1;

      end
      else begin
          y_img <= y_img + 1; // counting for hsync       
      end
    end

  
endmodule
