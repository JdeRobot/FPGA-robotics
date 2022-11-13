// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : OV7670
// Git hash  : 749447bfc80bbacb0111c7be39e2686735433d6d

`timescale 1ns/1ps

module OV7670 (
  input               io_camif_vsync,
  input               io_camif_href,
  input      [7:0]    io_camif_data,
  output              io_read_valid,
  output     [7:0]    io_read_payload,
  output              io_startOfFrame,
  output              io_endOfFrame,
  input               pclk_clk,
  input               pclk_reset,
  input               clk,
  input               reset
);

  wire                captureClockingArea_capture_io_read_valid;
  wire       [7:0]    captureClockingArea_capture_io_read_payload;
  wire                captureClockingArea_capture_io_startOfFrame;
  wire                captureClockingArea_capture_io_endOfFrame;
  wire                captureClockingArea_startOfFrame_buffercc_io_dataOut;
  wire                captureClockingArea_endOfFrameReg_buffercc_io_dataOut;
  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [7:0]    fifo_io_pop_payload;
  wire       [2:0]    fifo_io_pushOccupancy;
  wire       [2:0]    fifo_io_popOccupancy;
  reg                 captureClockingArea_startOfFrame;
  reg                 captureClockingArea_endOfFrameReg;
  wire                captureClockingArea_capture_io_read_toStream_valid;
  wire                captureClockingArea_capture_io_read_toStream_ready;
  wire       [7:0]    captureClockingArea_capture_io_read_toStream_payload;

  CamCapture captureClockingArea_capture (
    .io_camif_vsync  (io_camif_vsync                                  ), //i
    .io_camif_href   (io_camif_href                                   ), //i
    .io_camif_data   (io_camif_data[7:0]                              ), //i
    .io_read_valid   (captureClockingArea_capture_io_read_valid       ), //o
    .io_read_payload (captureClockingArea_capture_io_read_payload[7:0]), //o
    .io_startOfFrame (captureClockingArea_capture_io_startOfFrame     ), //o
    .io_endOfFrame   (captureClockingArea_capture_io_endOfFrame       ), //o
    .pclk_clk        (pclk_clk                                        ), //i
    .pclk_reset      (pclk_reset                                      )  //i
  );
  BufferCC_3 captureClockingArea_startOfFrame_buffercc (
    .io_dataIn  (captureClockingArea_startOfFrame                    ), //i
    .io_dataOut (captureClockingArea_startOfFrame_buffercc_io_dataOut), //o
    .clk        (clk                                                 ), //i
    .reset      (reset                                               )  //i
  );
  BufferCC_3 captureClockingArea_endOfFrameReg_buffercc (
    .io_dataIn  (captureClockingArea_endOfFrameReg                    ), //i
    .io_dataOut (captureClockingArea_endOfFrameReg_buffercc_io_dataOut), //o
    .clk        (clk                                                  ), //i
    .reset      (reset                                                )  //i
  );
  StreamFifoCC fifo (
    .io_push_valid    (captureClockingArea_capture_io_read_toStream_valid       ), //i
    .io_push_ready    (fifo_io_push_ready                                       ), //o
    .io_push_payload  (captureClockingArea_capture_io_read_toStream_payload[7:0]), //i
    .io_pop_valid     (fifo_io_pop_valid                                        ), //o
    .io_pop_ready     (1'b1                                                     ), //i
    .io_pop_payload   (fifo_io_pop_payload[7:0]                                 ), //o
    .io_pushOccupancy (fifo_io_pushOccupancy[2:0]                               ), //o
    .io_popOccupancy  (fifo_io_popOccupancy[2:0]                                ), //o
    .pclk_clk         (pclk_clk                                                 ), //i
    .pclk_reset       (pclk_reset                                               ), //i
    .clk              (clk                                                      )  //i
  );
  assign io_startOfFrame = captureClockingArea_startOfFrame_buffercc_io_dataOut;
  assign io_endOfFrame = captureClockingArea_endOfFrameReg_buffercc_io_dataOut;
  assign captureClockingArea_capture_io_read_toStream_valid = captureClockingArea_capture_io_read_valid;
  assign captureClockingArea_capture_io_read_toStream_payload = captureClockingArea_capture_io_read_payload;
  assign captureClockingArea_capture_io_read_toStream_ready = fifo_io_push_ready;
  assign io_read_valid = fifo_io_pop_valid;
  assign io_read_payload = fifo_io_pop_payload;
  always @(posedge pclk_clk or posedge pclk_reset) begin
    if(pclk_reset) begin
      captureClockingArea_startOfFrame <= 1'b0;
      captureClockingArea_endOfFrameReg <= 1'b0;
    end else begin
      captureClockingArea_startOfFrame <= captureClockingArea_capture_io_startOfFrame;
      captureClockingArea_endOfFrameReg <= captureClockingArea_capture_io_endOfFrame;
    end
  end


endmodule

module StreamFifoCC (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload,
  output     [2:0]    io_pushOccupancy,
  output     [2:0]    io_popOccupancy,
  input               pclk_clk,
  input               pclk_reset,
  input               clk
);

  reg        [7:0]    _zz_ram_port1;
  wire       [2:0]    popToPushGray_buffercc_io_dataOut;
  wire                bufferCC_5_io_dataOut;
  wire       [2:0]    pushToPopGray_buffercc_io_dataOut;
  wire       [2:0]    _zz_pushCC_pushPtrGray;
  wire       [1:0]    _zz_ram_port;
  wire       [2:0]    _zz_popCC_popPtrGray;
  wire       [1:0]    _zz_ram_port_1;
  wire                _zz_ram_port_2;
  wire       [1:0]    _zz_io_pop_payload_1;
  wire                _zz_io_pop_payload_2;
  reg                 _zz_1;
  wire       [2:0]    popToPushGray;
  wire       [2:0]    pushToPopGray;
  reg        [2:0]    pushCC_pushPtr;
  wire       [2:0]    pushCC_pushPtrPlus;
  wire                io_push_fire;
  reg        [2:0]    pushCC_pushPtrGray;
  wire       [2:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                io_push_fire_1;
  wire                _zz_io_pushOccupancy;
  wire                _zz_io_pushOccupancy_1;
  wire                pclk_reset_syncronized;
  reg        [2:0]    popCC_popPtr;
  wire       [2:0]    popCC_popPtrPlus;
  wire                io_pop_fire;
  reg        [2:0]    popCC_popPtrGray;
  wire       [2:0]    popCC_pushPtrGray;
  wire                popCC_empty;
  wire                io_pop_fire_1;
  wire       [2:0]    _zz_io_pop_payload;
  wire                io_pop_fire_2;
  wire                _zz_io_popOccupancy;
  wire                _zz_io_popOccupancy_1;
  reg [7:0] ram [0:3];

  assign _zz_pushCC_pushPtrGray = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_ram_port = pushCC_pushPtr[1:0];
  assign _zz_popCC_popPtrGray = (popCC_popPtrPlus >>> 1'b1);
  assign _zz_io_pop_payload_1 = _zz_io_pop_payload[1:0];
  assign _zz_io_pop_payload_2 = 1'b1;
  always @(posedge pclk_clk) begin
    if(_zz_1) begin
      ram[_zz_ram_port] <= io_push_payload;
    end
  end

  always @(posedge clk) begin
    if(_zz_io_pop_payload_2) begin
      _zz_ram_port1 <= ram[_zz_io_pop_payload_1];
    end
  end

  BufferCC popToPushGray_buffercc (
    .io_dataIn  (popToPushGray[2:0]                    ), //i
    .io_dataOut (popToPushGray_buffercc_io_dataOut[2:0]), //o
    .pclk_clk   (pclk_clk                              ), //i
    .pclk_reset (pclk_reset                            )  //i
  );
  BufferCC_1 bufferCC_5 (
    .io_dataIn  (1'b0                 ), //i
    .io_dataOut (bufferCC_5_io_dataOut), //o
    .clk        (clk                  ), //i
    .pclk_reset (pclk_reset           )  //i
  );
  BufferCC_2 pushToPopGray_buffercc (
    .io_dataIn              (pushToPopGray[2:0]                    ), //i
    .io_dataOut             (pushToPopGray_buffercc_io_dataOut[2:0]), //o
    .clk                    (clk                                   ), //i
    .pclk_reset_syncronized (pclk_reset_syncronized                )  //i
  );
  always @(*) begin
    _zz_1 = 1'b0;
    if(io_push_fire_1) begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 3'b001);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[2 : 1] == (~ pushCC_popPtrGray[2 : 1])) && (pushCC_pushPtrGray[0 : 0] == pushCC_popPtrGray[0 : 0]));
  assign io_push_ready = (! pushCC_full);
  assign io_push_fire_1 = (io_push_valid && io_push_ready);
  assign _zz_io_pushOccupancy = (pushCC_popPtrGray[1] ^ _zz_io_pushOccupancy_1);
  assign _zz_io_pushOccupancy_1 = pushCC_popPtrGray[2];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_io_pushOccupancy_1,{_zz_io_pushOccupancy,(pushCC_popPtrGray[0] ^ _zz_io_pushOccupancy)}});
  assign pclk_reset_syncronized = bufferCC_5_io_dataOut;
  assign popCC_popPtrPlus = (popCC_popPtr + 3'b001);
  assign io_pop_fire = (io_pop_valid && io_pop_ready);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign io_pop_valid = (! popCC_empty);
  assign io_pop_fire_1 = (io_pop_valid && io_pop_ready);
  assign _zz_io_pop_payload = (io_pop_fire_1 ? popCC_popPtrPlus : popCC_popPtr);
  assign io_pop_payload = _zz_ram_port1;
  assign io_pop_fire_2 = (io_pop_valid && io_pop_ready);
  assign _zz_io_popOccupancy = (popCC_pushPtrGray[1] ^ _zz_io_popOccupancy_1);
  assign _zz_io_popOccupancy_1 = popCC_pushPtrGray[2];
  assign io_popOccupancy = ({_zz_io_popOccupancy_1,{_zz_io_popOccupancy,(popCC_pushPtrGray[0] ^ _zz_io_popOccupancy)}} - popCC_popPtr);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_popPtrGray;
  always @(posedge pclk_clk or posedge pclk_reset) begin
    if(pclk_reset) begin
      pushCC_pushPtr <= 3'b000;
      pushCC_pushPtrGray <= 3'b000;
    end else begin
      if(io_push_fire) begin
        pushCC_pushPtrGray <= (_zz_pushCC_pushPtrGray ^ pushCC_pushPtrPlus);
      end
      if(io_push_fire_1) begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @(posedge clk or posedge pclk_reset_syncronized) begin
    if(pclk_reset_syncronized) begin
      popCC_popPtr <= 3'b000;
      popCC_popPtrGray <= 3'b000;
    end else begin
      if(io_pop_fire) begin
        popCC_popPtrGray <= (_zz_popCC_popPtrGray ^ popCC_popPtrPlus);
      end
      if(io_pop_fire_2) begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
    end
  end


endmodule

//BufferCC_3 replaced by BufferCC_3

module BufferCC_3 (
  input               io_dataIn,
  output              io_dataOut,
  input               clk,
  input               reset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module CamCapture (
  input               io_camif_vsync,
  input               io_camif_href,
  input      [7:0]    io_camif_data,
  output reg          io_read_valid,
  output reg [7:0]    io_read_payload,
  output reg          io_startOfFrame,
  output reg          io_endOfFrame,
  input               pclk_clk,
  input               pclk_reset
);
  localparam fsm_enumDef_BOOT = 2'd0;
  localparam fsm_enumDef_idleState = 2'd1;
  localparam fsm_enumDef_captureState = 2'd2;

  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [1:0]    fsm_stateReg;
  reg        [1:0]    fsm_stateNext;
  reg                 io_camif_vsync_regNext;
  wire                when_CamCapture_l25;
  wire                when_StateMachine_l234;
  wire                when_StateMachine_l234_1;
  `ifndef SYNTHESIS
  reg [95:0] fsm_stateReg_string;
  reg [95:0] fsm_stateNext_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_BOOT : fsm_stateReg_string = "BOOT        ";
      fsm_enumDef_idleState : fsm_stateReg_string = "idleState   ";
      fsm_enumDef_captureState : fsm_stateReg_string = "captureState";
      default : fsm_stateReg_string = "????????????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_BOOT : fsm_stateNext_string = "BOOT        ";
      fsm_enumDef_idleState : fsm_stateNext_string = "idleState   ";
      fsm_enumDef_captureState : fsm_stateNext_string = "captureState";
      default : fsm_stateNext_string = "????????????";
    endcase
  end
  `endif

  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_idleState : begin
      end
      fsm_enumDef_captureState : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    io_read_valid = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_idleState : begin
      end
      fsm_enumDef_captureState : begin
        if(io_camif_href) begin
          io_read_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_read_payload = 8'bxxxxxxxx;
    case(fsm_stateReg)
      fsm_enumDef_idleState : begin
      end
      fsm_enumDef_captureState : begin
        if(io_camif_href) begin
          io_read_payload = io_camif_data;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_startOfFrame = 1'b0;
    if(when_StateMachine_l234) begin
      io_startOfFrame = 1'b1;
    end
  end

  always @(*) begin
    io_endOfFrame = 1'b0;
    if(when_StateMachine_l234_1) begin
      io_endOfFrame = 1'b1;
    end
  end

  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_idleState : begin
        if(when_CamCapture_l25) begin
          fsm_stateNext = fsm_enumDef_captureState;
        end
      end
      fsm_enumDef_captureState : begin
        if(io_camif_vsync) begin
          fsm_stateNext = fsm_enumDef_idleState;
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_idleState;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_BOOT;
    end
  end

  assign when_CamCapture_l25 = ((! io_camif_vsync) && io_camif_vsync_regNext);
  assign when_StateMachine_l234 = ((fsm_stateReg == fsm_enumDef_idleState) && (! (fsm_stateNext == fsm_enumDef_idleState)));
  assign when_StateMachine_l234_1 = ((fsm_stateReg == fsm_enumDef_captureState) && (! (fsm_stateNext == fsm_enumDef_captureState)));
  always @(posedge pclk_clk or posedge pclk_reset) begin
    if(pclk_reset) begin
      fsm_stateReg <= fsm_enumDef_BOOT;
    end else begin
      fsm_stateReg <= fsm_stateNext;
    end
  end

  always @(posedge pclk_clk) begin
    io_camif_vsync_regNext <= io_camif_vsync;
  end


endmodule

module BufferCC_2 (
  input      [2:0]    io_dataIn,
  output     [2:0]    io_dataOut,
  input               clk,
  input               pclk_reset_syncronized
);

  (* async_reg = "true" *) reg        [2:0]    buffers_0;
  (* async_reg = "true" *) reg        [2:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk or posedge pclk_reset_syncronized) begin
    if(pclk_reset_syncronized) begin
      buffers_0 <= 3'b000;
      buffers_1 <= 3'b000;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_1 (
  input               io_dataIn,
  output              io_dataOut,
  input               clk,
  input               pclk_reset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk or posedge pclk_reset) begin
    if(pclk_reset) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC (
  input      [2:0]    io_dataIn,
  output     [2:0]    io_dataOut,
  input               pclk_clk,
  input               pclk_reset
);

  (* async_reg = "true" *) reg        [2:0]    buffers_0;
  (* async_reg = "true" *) reg        [2:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge pclk_clk or posedge pclk_reset) begin
    if(pclk_reset) begin
      buffers_0 <= 3'b000;
      buffers_1 <= 3'b000;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
