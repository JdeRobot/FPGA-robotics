// Generator : SpinalHDL v1.6.0    git head : 73c8d8e2b86b45646e9d0b2e729291f2b65e6be3
// Component : TopPixelProcessor
// Git hash  : 86c213d7548a0805c23056405bf426ece35119a6



module TopPixelProcessor (
  input      [7:0]    io_pixel_in_payload_r,
  input      [7:0]    io_pixel_in_payload_g,
  input      [7:0]    io_pixel_in_payload_b,
  output     [12:0]   io_pixel_in_addr,
  output              io_pixel_out_valid,
  output     [7:0]    io_pixel_out_payload_r,
  output     [7:0]    io_pixel_out_payload_g,
  output     [7:0]    io_pixel_out_payload_b,
  output     [12:0]   io_pixel_out_addr,
  input      [7:0]    io_filter_r,
  input      [7:0]    io_filter_g,
  input      [7:0]    io_filter_b,
  input               clk,
  input               reset
);
  reg                 pixelReader_1_io_pixel_out_ready;
  reg                 pixelProcessor_io_pixel_out_ready;
  wire       [12:0]   pixelReader_1_io_pixel_in_addr;
  wire                pixelReader_1_io_pixel_out_valid;
  wire       [7:0]    pixelReader_1_io_pixel_out_payload_r;
  wire       [7:0]    pixelReader_1_io_pixel_out_payload_g;
  wire       [7:0]    pixelReader_1_io_pixel_out_payload_b;
  wire                pixelProcessor_io_pixel_in_ready;
  wire                pixelProcessor_io_pixel_out_valid;
  wire       [7:0]    pixelProcessor_io_pixel_out_payload_r;
  wire       [7:0]    pixelProcessor_io_pixel_out_payload_g;
  wire       [7:0]    pixelProcessor_io_pixel_out_payload_b;
  wire                pixelWriter_1_io_pixel_in_ready;
  wire                pixelWriter_1_io_pixel_out_valid;
  wire       [7:0]    pixelWriter_1_io_pixel_out_payload_r;
  wire       [7:0]    pixelWriter_1_io_pixel_out_payload_g;
  wire       [7:0]    pixelWriter_1_io_pixel_out_payload_b;
  wire       [12:0]   pixelWriter_1_io_pixel_out_addr;
  wire                pixelReader_1_io_pixel_out_m2sPipe_valid;
  wire                pixelReader_1_io_pixel_out_m2sPipe_ready;
  wire       [7:0]    pixelReader_1_io_pixel_out_m2sPipe_payload_r;
  wire       [7:0]    pixelReader_1_io_pixel_out_m2sPipe_payload_g;
  wire       [7:0]    pixelReader_1_io_pixel_out_m2sPipe_payload_b;
  reg                 pixelReader_1_io_pixel_out_rValid;
  reg        [7:0]    pixelReader_1_io_pixel_out_rData_r;
  reg        [7:0]    pixelReader_1_io_pixel_out_rData_g;
  reg        [7:0]    pixelReader_1_io_pixel_out_rData_b;
  wire                when_Stream_l342;
  wire                pixelProcessor_io_pixel_out_m2sPipe_valid;
  wire                pixelProcessor_io_pixel_out_m2sPipe_ready;
  wire       [7:0]    pixelProcessor_io_pixel_out_m2sPipe_payload_r;
  wire       [7:0]    pixelProcessor_io_pixel_out_m2sPipe_payload_g;
  wire       [7:0]    pixelProcessor_io_pixel_out_m2sPipe_payload_b;
  reg                 pixelProcessor_io_pixel_out_rValid;
  reg        [7:0]    pixelProcessor_io_pixel_out_rData_r;
  reg        [7:0]    pixelProcessor_io_pixel_out_rData_g;
  reg        [7:0]    pixelProcessor_io_pixel_out_rData_b;
  wire                when_Stream_l342_1;

  PixelReader pixelReader_1 (
    .io_pixel_in_payload_r     (io_pixel_in_payload_r                 ), //i
    .io_pixel_in_payload_g     (io_pixel_in_payload_g                 ), //i
    .io_pixel_in_payload_b     (io_pixel_in_payload_b                 ), //i
    .io_pixel_in_addr          (pixelReader_1_io_pixel_in_addr        ), //o
    .io_pixel_out_valid        (pixelReader_1_io_pixel_out_valid      ), //o
    .io_pixel_out_ready        (pixelReader_1_io_pixel_out_ready      ), //i
    .io_pixel_out_payload_r    (pixelReader_1_io_pixel_out_payload_r  ), //o
    .io_pixel_out_payload_g    (pixelReader_1_io_pixel_out_payload_g  ), //o
    .io_pixel_out_payload_b    (pixelReader_1_io_pixel_out_payload_b  ), //o
    .clk                       (clk                                   ), //i
    .reset                     (reset                                 )  //i
  );
  ColorFilterPixelProcessor pixelProcessor (
    .io_pixel_in_valid         (pixelReader_1_io_pixel_out_m2sPipe_valid      ), //i
    .io_pixel_in_ready         (pixelProcessor_io_pixel_in_ready              ), //o
    .io_pixel_in_payload_r     (pixelReader_1_io_pixel_out_m2sPipe_payload_r  ), //i
    .io_pixel_in_payload_g     (pixelReader_1_io_pixel_out_m2sPipe_payload_g  ), //i
    .io_pixel_in_payload_b     (pixelReader_1_io_pixel_out_m2sPipe_payload_b  ), //i
    .io_pixel_out_valid        (pixelProcessor_io_pixel_out_valid             ), //o
    .io_pixel_out_ready        (pixelProcessor_io_pixel_out_ready             ), //i
    .io_pixel_out_payload_r    (pixelProcessor_io_pixel_out_payload_r         ), //o
    .io_pixel_out_payload_g    (pixelProcessor_io_pixel_out_payload_g         ), //o
    .io_pixel_out_payload_b    (pixelProcessor_io_pixel_out_payload_b         ), //o
    .io_filter_r               (io_filter_r                                   ), //i
    .io_filter_g               (io_filter_g                                   ), //i
    .io_filter_b               (io_filter_b                                   ), //i
    .clk                       (clk                                           ), //i
    .reset                     (reset                                         )  //i
  );
  PixelWriter pixelWriter_1 (
    .io_pixel_in_valid         (pixelProcessor_io_pixel_out_m2sPipe_valid      ), //i
    .io_pixel_in_ready         (pixelWriter_1_io_pixel_in_ready                ), //o
    .io_pixel_in_payload_r     (pixelProcessor_io_pixel_out_m2sPipe_payload_r  ), //i
    .io_pixel_in_payload_g     (pixelProcessor_io_pixel_out_m2sPipe_payload_g  ), //i
    .io_pixel_in_payload_b     (pixelProcessor_io_pixel_out_m2sPipe_payload_b  ), //i
    .io_pixel_out_valid        (pixelWriter_1_io_pixel_out_valid               ), //o
    .io_pixel_out_payload_r    (pixelWriter_1_io_pixel_out_payload_r           ), //o
    .io_pixel_out_payload_g    (pixelWriter_1_io_pixel_out_payload_g           ), //o
    .io_pixel_out_payload_b    (pixelWriter_1_io_pixel_out_payload_b           ), //o
    .io_pixel_out_addr         (pixelWriter_1_io_pixel_out_addr                ), //o
    .clk                       (clk                                            ), //i
    .reset                     (reset                                          )  //i
  );
  always @(*) begin
    pixelReader_1_io_pixel_out_ready = pixelReader_1_io_pixel_out_m2sPipe_ready;
    if(when_Stream_l342) begin
      pixelReader_1_io_pixel_out_ready = 1'b1;
    end
  end

  assign when_Stream_l342 = (! pixelReader_1_io_pixel_out_m2sPipe_valid);
  assign pixelReader_1_io_pixel_out_m2sPipe_valid = pixelReader_1_io_pixel_out_rValid;
  assign pixelReader_1_io_pixel_out_m2sPipe_payload_r = pixelReader_1_io_pixel_out_rData_r;
  assign pixelReader_1_io_pixel_out_m2sPipe_payload_g = pixelReader_1_io_pixel_out_rData_g;
  assign pixelReader_1_io_pixel_out_m2sPipe_payload_b = pixelReader_1_io_pixel_out_rData_b;
  assign pixelReader_1_io_pixel_out_m2sPipe_ready = pixelProcessor_io_pixel_in_ready;
  always @(*) begin
    pixelProcessor_io_pixel_out_ready = pixelProcessor_io_pixel_out_m2sPipe_ready;
    if(when_Stream_l342_1) begin
      pixelProcessor_io_pixel_out_ready = 1'b1;
    end
  end

  assign when_Stream_l342_1 = (! pixelProcessor_io_pixel_out_m2sPipe_valid);
  assign pixelProcessor_io_pixel_out_m2sPipe_valid = pixelProcessor_io_pixel_out_rValid;
  assign pixelProcessor_io_pixel_out_m2sPipe_payload_r = pixelProcessor_io_pixel_out_rData_r;
  assign pixelProcessor_io_pixel_out_m2sPipe_payload_g = pixelProcessor_io_pixel_out_rData_g;
  assign pixelProcessor_io_pixel_out_m2sPipe_payload_b = pixelProcessor_io_pixel_out_rData_b;
  assign pixelProcessor_io_pixel_out_m2sPipe_ready = pixelWriter_1_io_pixel_in_ready;
  assign io_pixel_in_addr = pixelReader_1_io_pixel_in_addr;
  assign io_pixel_out_valid = pixelWriter_1_io_pixel_out_valid;
  assign io_pixel_out_payload_r = pixelWriter_1_io_pixel_out_payload_r;
  assign io_pixel_out_payload_g = pixelWriter_1_io_pixel_out_payload_g;
  assign io_pixel_out_payload_b = pixelWriter_1_io_pixel_out_payload_b;
  assign io_pixel_out_addr = pixelWriter_1_io_pixel_out_addr;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      pixelReader_1_io_pixel_out_rValid <= 1'b0;
      pixelProcessor_io_pixel_out_rValid <= 1'b0;
    end else begin
      if(pixelReader_1_io_pixel_out_ready) begin
        pixelReader_1_io_pixel_out_rValid <= pixelReader_1_io_pixel_out_valid;
      end
      if(pixelProcessor_io_pixel_out_ready) begin
        pixelProcessor_io_pixel_out_rValid <= pixelProcessor_io_pixel_out_valid;
      end
    end
  end

  always @(posedge clk) begin
    if(pixelReader_1_io_pixel_out_ready) begin
      pixelReader_1_io_pixel_out_rData_r <= pixelReader_1_io_pixel_out_payload_r;
      pixelReader_1_io_pixel_out_rData_g <= pixelReader_1_io_pixel_out_payload_g;
      pixelReader_1_io_pixel_out_rData_b <= pixelReader_1_io_pixel_out_payload_b;
    end
    if(pixelProcessor_io_pixel_out_ready) begin
      pixelProcessor_io_pixel_out_rData_r <= pixelProcessor_io_pixel_out_payload_r;
      pixelProcessor_io_pixel_out_rData_g <= pixelProcessor_io_pixel_out_payload_g;
      pixelProcessor_io_pixel_out_rData_b <= pixelProcessor_io_pixel_out_payload_b;
    end
  end


endmodule

module PixelWriter (
  input               io_pixel_in_valid,
  output              io_pixel_in_ready,
  input      [7:0]    io_pixel_in_payload_r,
  input      [7:0]    io_pixel_in_payload_g,
  input      [7:0]    io_pixel_in_payload_b,
  output              io_pixel_out_valid,
  output     [7:0]    io_pixel_out_payload_r,
  output     [7:0]    io_pixel_out_payload_g,
  output     [7:0]    io_pixel_out_payload_b,
  output     [12:0]   io_pixel_out_addr,
  input               clk,
  input               reset
);
  wire       [12:0]   _zz_addrCounter_valueNext;
  wire       [0:0]    _zz_addrCounter_valueNext_1;
  reg                 addrCounter_willIncrement;
  wire                addrCounter_willClear;
  reg        [12:0]   addrCounter_valueNext;
  reg        [12:0]   addrCounter_value;
  wire                addrCounter_willOverflowIfInc;
  wire                addrCounter_willOverflow;
  wire                io_pixel_in_fire;

  assign _zz_addrCounter_valueNext_1 = addrCounter_willIncrement;
  assign _zz_addrCounter_valueNext = {12'd0, _zz_addrCounter_valueNext_1};
  always @(*) begin
    addrCounter_willIncrement = 1'b0;
    if(io_pixel_in_fire) begin
      addrCounter_willIncrement = 1'b1;
    end
  end

  assign addrCounter_willClear = 1'b0;
  assign addrCounter_willOverflowIfInc = (addrCounter_value == 13'h1aff);
  assign addrCounter_willOverflow = (addrCounter_willOverflowIfInc && addrCounter_willIncrement);
  always @(*) begin
    if(addrCounter_willOverflow) begin
      addrCounter_valueNext = 13'h0;
    end else begin
      addrCounter_valueNext = (addrCounter_value + _zz_addrCounter_valueNext);
    end
    if(addrCounter_willClear) begin
      addrCounter_valueNext = 13'h0;
    end
  end

  assign io_pixel_in_fire = (io_pixel_in_valid && io_pixel_in_ready);
  assign io_pixel_out_addr = addrCounter_value;
  assign io_pixel_in_ready = 1'b1;
  assign io_pixel_out_valid = io_pixel_in_valid;
  assign io_pixel_out_payload_r = io_pixel_in_payload_r;
  assign io_pixel_out_payload_g = io_pixel_in_payload_g;
  assign io_pixel_out_payload_b = io_pixel_in_payload_b;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      addrCounter_value <= 13'h0;
    end else begin
      addrCounter_value <= addrCounter_valueNext;
    end
  end


endmodule

module ColorFilterPixelProcessor (
  input               io_pixel_in_valid,
  output              io_pixel_in_ready,
  input      [7:0]    io_pixel_in_payload_r,
  input      [7:0]    io_pixel_in_payload_g,
  input      [7:0]    io_pixel_in_payload_b,
  output              io_pixel_out_valid,
  input               io_pixel_out_ready,
  output reg [7:0]    io_pixel_out_payload_r,
  output reg [7:0]    io_pixel_out_payload_g,
  output reg [7:0]    io_pixel_out_payload_b,
  input      [7:0]    io_filter_r,
  input      [7:0]    io_filter_g,
  input      [7:0]    io_filter_b,
  input               clk,
  input               reset
);
  reg        [7:0]    filter_reg_r;
  reg        [7:0]    filter_reg_g;
  reg        [7:0]    filter_reg_b;
  wire                when_ColorFilterPixelProcessor_l24;

  assign io_pixel_out_valid = io_pixel_in_valid;
  assign io_pixel_in_ready = io_pixel_out_ready;
  always @(*) begin
    io_pixel_out_payload_r = io_pixel_in_payload_r;
    if(when_ColorFilterPixelProcessor_l24) begin
      io_pixel_out_payload_r = 8'h0;
    end
  end

  always @(*) begin
    io_pixel_out_payload_g = io_pixel_in_payload_g;
    if(when_ColorFilterPixelProcessor_l24) begin
      io_pixel_out_payload_g = 8'h0;
    end
  end

  always @(*) begin
    io_pixel_out_payload_b = io_pixel_in_payload_b;
    if(when_ColorFilterPixelProcessor_l24) begin
      io_pixel_out_payload_b = 8'h0;
    end
  end

  assign when_ColorFilterPixelProcessor_l24 = (((io_pixel_in_payload_r == filter_reg_r) && (io_pixel_in_payload_g == filter_reg_g)) && (io_pixel_in_payload_b == filter_reg_b));
  always @(posedge clk) begin
    filter_reg_r <= io_filter_r;
    filter_reg_g <= io_filter_g;
    filter_reg_b <= io_filter_b;
  end


endmodule

module PixelReader (
  input      [7:0]    io_pixel_in_payload_r,
  input      [7:0]    io_pixel_in_payload_g,
  input      [7:0]    io_pixel_in_payload_b,
  output     [12:0]   io_pixel_in_addr,
  output              io_pixel_out_valid,
  input               io_pixel_out_ready,
  output     [7:0]    io_pixel_out_payload_r,
  output     [7:0]    io_pixel_out_payload_g,
  output     [7:0]    io_pixel_out_payload_b,
  input               clk,
  input               reset
);
  wire       [12:0]   _zz_addrCounter_valueNext;
  wire       [0:0]    _zz_addrCounter_valueNext_1;
  reg                 addrCounter_willIncrement;
  wire                addrCounter_willClear;
  reg        [12:0]   addrCounter_valueNext;
  reg        [12:0]   addrCounter_value;
  wire                addrCounter_willOverflowIfInc;
  wire                addrCounter_willOverflow;
  wire                io_pixel_out_fire;

  assign _zz_addrCounter_valueNext_1 = addrCounter_willIncrement;
  assign _zz_addrCounter_valueNext = {12'd0, _zz_addrCounter_valueNext_1};
  always @(*) begin
    addrCounter_willIncrement = 1'b0;
    if(io_pixel_out_fire) begin
      addrCounter_willIncrement = 1'b1;
    end
  end

  assign addrCounter_willClear = 1'b0;
  assign addrCounter_willOverflowIfInc = (addrCounter_value == 13'h1aff);
  assign addrCounter_willOverflow = (addrCounter_willOverflowIfInc && addrCounter_willIncrement);
  always @(*) begin
    if(addrCounter_willOverflow) begin
      addrCounter_valueNext = 13'h0;
    end else begin
      addrCounter_valueNext = (addrCounter_value + _zz_addrCounter_valueNext);
    end
    if(addrCounter_willClear) begin
      addrCounter_valueNext = 13'h0;
    end
  end

  assign io_pixel_out_fire = (io_pixel_out_valid && io_pixel_out_ready);
  assign io_pixel_in_addr = addrCounter_value;
  assign io_pixel_out_payload_r = io_pixel_in_payload_r;
  assign io_pixel_out_payload_g = io_pixel_in_payload_g;
  assign io_pixel_out_payload_b = io_pixel_in_payload_b;
  assign io_pixel_out_valid = 1'b1;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      addrCounter_value <= 13'h0;
    end else begin
      addrCounter_value <= addrCounter_valueNext;
    end
  end


endmodule
