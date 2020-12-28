//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   ov7670_ctrl_reg.vhd
//   Module in charge of telling the SCCB module what registers to write
//   in the camera camera and to control the camera inputs:
//     - ov7670_rst_n
//          0: camera reset
//          1: normal mode            
//     - pwdn: power down mode selection
//          0: normal mode
//          1: power down mode
//     - xclk: system clock input
//          freq   :  min: 10 MHz  -- typ: 24 MHz  -- Max: 48 MHz
//          Period : max: 100 ns   -- typ: 42 ns   -- Max: 21 ns
//   Register values taken from
//   http://hamsterworks.co.nz/mediawiki/index.php/Zedboard_OV7670
//   http://hamsterworks.co.nz/mediawiki/index.php/OV7670_camera
//------------------------------------------------------------------------------

module ov7670_ctrl_reg
  (
    input         rst,          //reset, active high
    input         clk,          //fpga clock
    input         test_mode,    //if '1': in test mode
    input         test_send,    //in testmode, send 1 instruction
    input  [1:0]  sw_regs,
    input         resend,       //resend all the sequence
    input         sccb_ready,   //SCCB ready to transmit
    output        start_tx,     //start transmission
    output        done,         //all the registers written
    output [6:0]  id,           //id of the slave
    output [7:0]  addr,         //address to be written
    output [7:0]  data_wr,      //data to write to slave
    output        ov7670_rst_n, //camera reset
    output        ov7670_clk,   //camera system clock
    output        ov7670_pwdn   //camera power down
  );



  // frequency divider for camera clk (divide by 4) 
  //signal cnt_cam_clk : unsigned (1 downto 0);
  // frequency divider for camera clk (divide by 8) 
  reg  [2:0]   cnt_cam_clk;

  // 6 bits: less than 64 registers to be written, change if the number
  // of registers to be written change
  reg  [5:0]   cnt_reg;

  // auxiliary signal, connected to output port done
  wire         alltx_done;

  // auxiliary signal, connected to start_tx
  reg         start_tx_aux;

  //id of the slave; 0x21.
  // if adding the write bit, would be 0x42 for writing and 0x43 for reading
  parameter c_id_write  = 7'b0100_001;
  wire  [7:0]   addr_aux; //address to be written
  //wire  [7:0]   data_aux; //data to write to slave
  // register from the register memory: address & data
  reg  [15:0]   reg_i;

  parameter WAIT_ST       = 0,  // waiting to send, until not busy
            WRITE_REG_ST  = 1,  // sending the initial sequence
            DONE_ST       = 2;  // all the registers written

  // present state, next state
  reg  [1:0]  pr_ctrl_st, nx_ctrl_st;  // present state, next state

  // save the switch values to see if the have changed
  reg  [1:0]  sw_regs_st;
  wire        sw_regs_change;

  reg [15:0] reg_yuv, reg_rgb565, reg_hzed, reg_test;

  // msb 8 bits are the address (15 downto 8)
  // lsb 8 bits are the register value to be written
  // cuenta 3(2)

  always @ (cnt_reg) begin
    case (cnt_reg)
      6'h00:
        reg_yuv <= 16'h1280; // COM7   Reset
      6'h01:
        // CLKRC  6->0 External clock, no pre-scale internal clock pre-scale 
        reg_yuv <= 16'h1101;
      6'h02:
        // COM7   2,0->(0,0) YUV  1: disable color bar 1->0 disable color bar
        reg_yuv <= 16'h1200;
      6'h03:
        // COM3   3->0 scale disable 2->0 DCW disable
        reg_yuv <= 16'h0C00; // COM3   3->0 scale disable
      6'h04:
        // COM14  4->0 Normal PCLK 3->0 Scaling cannot be adjusted manually
        reg_yuv <= 16'h3E00;
      6'h05:
        // SCALING_XSC  7->0 , (SCALING_YSC[7])-> (0,0): No test
        reg_yuv <= 16'h70BA;
      6'h06:
        // SCALING_XSC  7->0 , (SCALING_YSC[7])-> (0,0): No test
             //        6:0-> 011 1010 (58) Horizontal scale factor (?)
        //reg_yuv <= 16'h703A;
        reg_yuv <= 16'h0A76; // READ (NOP). To include another operation
      6'h07:
        // SCALING_YSC  7->0 , (SCALING_XSC[7])-> (0,0): No test
             //        6:0-> 011 1010 (53) Vertical scale factor (?)
        reg_yuv <= 16'h7135;
      6'h08:
        reg_yuv <= 16'h7211; // SCALING_DCWCTR
             //        7->0 Vertical truncation vertical average calculation
             //        5:4-> 01: Vertical down sample by 2     
             //        4->0 Horizontal truncation horizontal average calculation
             //        1:0-> 01: Vertical  down sample by 2     
      6'h09:
        reg_yuv <= 16'h73F0; // SCALING_PCLK_DIV
             //        7:4-> Reserved
             //        3->0 Enable clock divider
             //        2:0 -> clock divider control for DSP
             //               only valid when COM15[3]=1
      6'h0A:
        reg_yuv <= 16'hA202; // SCALING_PCLK_DELAY
             //        6:0-> 2 Scaling output delay
      6'h0B:
        reg_yuv <= 16'hFFFF; // FINISH CONDITION
      6'h0C:
        reg_yuv <= 16'hFFFF; // FINISH CONDITION
      default:
        reg_yuv <= 16'h0A76; // NOP
    endcase
  end


  always @ (cnt_reg) begin
    case (cnt_reg)
      6'h00:
        reg_rgb565 <= 16'h1280; // COM7   Reset
      6'h01:
        reg_rgb565 <= 16'h1101; // CLKRC  6->0 External clock, no pre-scale
             //           internal clock pre-scale /2
      6'h02:
        reg_rgb565 <= 16'h1204; // COM7   2,0->(1,0) RGB 
             //        1->0 disable color bar
      6'h03:
        //reg_rgb565 <= 16'h0C00, // COM3   3->0 scale disable
             //        2->0 DCW disable
        reg_rgb565 <= 16'h0A76; // NOP
      6'h04:
        reg_rgb565 <= 16'h3E00; // COM14  4->0 Normal PCLK
             //        3->0 Scaling cannot be adjusted manually
      6'h05:
        reg_rgb565 <= 16'h40D0; // COM15  7,6->(1,1): full range enable
             //        5:4->(0,1): RGB565
             //        3:0-> Reserved
      6'h06:
        //reg_rgb565 <= 16'h7080, // test
        reg_rgb565 <= 16'h0A76; // NOP
      6'h07:
        //reg_rgb565 <= 16'h7100, // test
        reg_rgb565 <= 16'h0A76; // NOP
      6'h08:
        // SCALING_XSC  7->0 , (SCALING_YSC[7])-> (0,0): No test
        //        6:0-> 011 1010 (58) Horizontal scale factor (?)
        //reg_rgb565 <= 16'h703A;
        reg_rgb565 <= 16'h0A76; // NOP
      6'h09:
        // SCALING_YSC  7->0 , (SCALING_XSC[7])-> (0,0): No test
        //        6:0-> 011 1010 (53) Vertical scale factor (?)
        //reg_rgb565 <= 16'h7135;
        reg_rgb565 <= 16'h0A76; // NOP
      6'h0A:
        // reg_rgb565 <= 16'h7211; // SCALING_DCWCTR
             //        7->0 Vertical truncation vertical average calculation
             //        5:4-> 01: Vertical down sample by 2     
             //        4->0 Horizontal truncation horizontal average calculation
             //        1:0-> 01: Vertical  down sample by 2     
        reg_rgb565 <= 16'h0A76; // NOP
      6'h0B:
        //reg_rgb565 <= 16'h73F0; // SCALING_PCLK_DIV
             //        7:4-> Reserved
             //        3->0 Enable clock divider
             //        2:0 -> clock divider control for DSP
             //               only valid when COM15[3]=1
        reg_rgb565 <= 16'h0A76; // NOP
      6'h0C:
        //reg_rgb565 <= 16'hA202; // SCALING_PCLK_DELAY
             //        6:0-> 2 Scaling output delay
        reg_rgb565 <= 16'h0A76; // NOP
      6'h0D:
        reg_rgb565 <= 16'hFFFF; // FINISH CONDITION
      6'h0E:
        reg_rgb565 <= 16'hFFFF; // FINISH CONDITION
      default:
        reg_rgb565 <= 16'h0A76; // NOP
    endcase
  end

  // cuenta 1, mas cerca los pclk
  always @ (cnt_reg) begin
    case (cnt_reg)
      6'h00:
        reg_hzed <= 16'h1280; // COM7   Reset
      6'h01:
        reg_hzed <= 16'h1280; // COM7   Reset
      6'h02:
        reg_hzed <= 16'h1204; // COM7   Size & RGB output
      6'h03:
        reg_hzed <= 16'h1100; // CLKRC  Prescaler - Fin/(1+1)
      6'h04:
        reg_hzed <= 16'h0C00; //COM3 Lots of stuff,enable scaling,all others off
      6'h05:
        reg_hzed <= 16'h3E00; // COM14  PCLK scaling off
      6'h06:
        reg_hzed <= 16'h8C00; // RGB444 Set RGB format
      6'h07:
        reg_hzed <= 16'h0400; // COM1   no CCIR601
      6'h08:
        reg_hzed <= 16'h4010; // COM15  Full 0-255 output, RGB 565
      6'h09:
        reg_hzed <= 16'h3a04; // TSLB Set UV ordering,  do not auto-reset window
      6'h0A:
        reg_hzed <= 16'h1438; // COM9  - AGC Celling
      6'h0B:
        reg_hzed <= 16'h4f40; //16'h4fb3; // MTX1  - colour conversion matrix
      6'h0C:
        reg_hzed <= 16'h5034; //16'h50b3; // MTX2  - colour conversion matrix
      6'h0D:
        reg_hzed <= 16'h510C; //16'h5100; // MTX3  - colour conversion matrix
      6'h0E:
        reg_hzed <= 16'h5217; //16'h523d; // MTX4  - colour conversion matrix
      6'h0F:
        reg_hzed <= 16'h5329; //16'h53a7; // MTX5  - colour conversion matrix
      6'h10:
        reg_hzed <= 16'h5440; //16'h54e4; // MTX6  - colour conversion matrix
      6'h11:
        reg_hzed <= 16'h581e; //16'h589e; // MTXS -Matrix sign and auto contrast
      6'h12:
        reg_hzed <= 16'h3dc0; // COM13 - Turn on GAMMA and UV Auto adjust
      6'h13:
        reg_hzed <= 16'h1100; // CLKRC  Prescaler - Fin/(1+1)
      6'h14:
        reg_hzed <= 16'h1711; // HSTART HREF start (high 8 bits)
      6'h15:
        reg_hzed <= 16'h1861; // HSTOP  HREF stop (high 8 bits)
      6'h16:
        reg_hzed <= 16'h32A4; // HREF Edge offset and low 3 bits of HSTART and HSTOP
      6'h17:
        reg_hzed <= 16'h1903; // VSTART VSYNC start (high 8 bits)
      6'h18:
        reg_hzed <= 16'h1A7b; // VSTOP  VSYNC stop (high 8 bits) 
      6'h19:
        reg_hzed <= 16'h030a; // VREF   VSYNC low two bits
      6'h1A:
        reg_hzed <= 16'h0e61; // COM5(0x0E) 0x61
      6'h1B:
        reg_hzed <= 16'h0f4b; // COM6(0x0F) 0x4B 
      6'h1C:
        reg_hzed <= 16'h1602; //
      6'h1D:
        reg_hzed <= 16'h1e37; // MVFP (0x1E) 0x07  // FLIP AND MIRROR IMAGE 0x3x
      6'h1E:
        reg_hzed <= 16'h2102;
      6'h1F:
        reg_hzed <= 16'h2291;
      6'h20:
        reg_hzed <= 16'h2907;
      6'h21:
        reg_hzed <= 16'h330b;
      6'h22:
        reg_hzed <= 16'h350b;
      6'h23:
        reg_hzed <= 16'h371d;
      6'h24:
        reg_hzed <= 16'h3871;
      6'h25:
        reg_hzed <= 16'h392a;
      6'h26:
        reg_hzed <= 16'h3c78; // COM12 (0x3C) 0x78
      6'h27:
        reg_hzed <= 16'h4d40; 
      6'h28:
        reg_hzed <= 16'h4e20;
      6'h29:
        reg_hzed <= 16'h6900; // GFIX (0x69) 0x00
      6'h2A:
        reg_hzed <= 16'h6b4a;
      6'h2B:
        reg_hzed <= 16'h7410;
      6'h2C:
        reg_hzed <= 16'h8d4f;
      6'h2D:
        reg_hzed <= 16'h8e00;
      6'h2E:
        reg_hzed <= 16'h8f00;
      6'h2F:
        reg_hzed <= 16'h9000;
      6'h30:
        reg_hzed <= 16'h9100;
      6'h31:
        reg_hzed <= 16'h9600;
      6'h32:
        reg_hzed <= 16'h9a00;
      6'h33:
        reg_hzed <= 16'hb084;
      6'h34:
        reg_hzed <= 16'hb10c;
      6'h35:
        reg_hzed <= 16'hb20e;
      6'h36:
        reg_hzed <= 16'hb382;
      6'h37:
        reg_hzed <= 16'hb80a;
      6'h38:
        reg_hzed <= 16'hffff;
      6'h39:
        reg_hzed <= 16'hffff;
      default:
        reg_hzed <= 16'h0A76; // NOP
    endcase
  end


  // cuenta 2-3 
  always @ (cnt_reg) begin
    case (cnt_reg)
      6'h00:
        reg_test <= 16'h1280; // COM7   Reset
      6'h01:
        reg_test <= 16'h1280; // COM7   Reset
      6'h02:
        reg_test <= 16'h1204; // COM7   "00000100" No reset + RGB
      6'h03:
        reg_test <= 16'h4010; // COM15  Full 0-255 output, RGB 444
      6'h04:
        reg_test <= 16'h8C02; // RGB444 Set RGB format
      6'h05:
        reg_test <= 16'h1100; // CLKRC  Prescaler - Fin/(1+1)  ?
      6'h06:
        //reg_test <= 16'h1204; // COM7   QIF + RGB output
        reg_test <= 16'h0A76; // NOP
      6'h07:
        //reg_test <= 16'h1204; // COM7   QIF + RGB output
        reg_test <= 16'h0A76; // NOP
      6'h08:
        //reg_test <= 16'h0C04; // COM3  Lots of stuff, enable scaling, all others off
        reg_test <= 16'h0A76; // NOP
      6'h09:
        //reg_test <= 16'h3E19; // COM14  PCLK scaling = 0
        reg_test <= 16'h0A76; // NOP
      6'h0A:
            
        reg_test <= 16'h40D0; // COM15  Full 0-255 output, RGB 565
      6'h0B:
        reg_test <= 16'h3a04; // TSLB   Set UV ordering,  do not auto-reset window
      6'h0C:
        //reg_test <= 16'h8C00; // RGB444 Set RGB format
        reg_test <= 16'h0A76; // NOP
    
      6'h0D:
        //reg_test <= 16'h1714; // HSTART HREF start (high 8 bits)
        reg_test <= 16'h0A76; // NOP
      6'h0E:
        //reg_test <= 16'h1802; // HSTOP  HREF stop (high 8 bits)
        reg_test <= 16'h0A76; // NOP
      6'h0F:
        //reg_test <= 16'h32A4; // HREF   Edge offset and low 3 bits of HSTART and HSTOP
        reg_test <= 16'h0A76; // NOP
      6'h10:
        //reg_test <= 16'h1903; // VSTART VSYNC start (high 8 bits)
        reg_test <= 16'h0A76; // NOP
      6'h11:
        //reg_test <= 16'h1A7b; // VSTOP  VSYNC stop (high 8 bits) 
        reg_test <= 16'h0A76; // NOP
      6'h12:
        //reg_test <= 16'h030a; // VREF   VSYNC low two bits
        reg_test <= 16'h0A76; // NOP
      6'h13:
        //reg_test <= 16'h7080; // test
        reg_test <= 16'h0A76; // NOP
      6'h14:
        //reg_test <= 16'h7100; // test
        reg_test <= 16'h0A76; // NOP
      6'h15:
        //reg_test <= 16'h703a; // SCALING_XSC
        reg_test <= 16'h0A76; // NOP
      6'h16:
        //reg_test <= 16'h7135; // SCALING_YSC
        reg_test <= 16'h0A76; // NOP
      6'h17:
        //reg_test <= 16'h7211; // SCALING_DCWCTR
        reg_test <= 16'h0A76; // NOP
      6'h18:
        //reg_test <= 16'h73f1; // SCALING_PCLK_DIV
        reg_test <= 16'h0A76; // NOP
      6'h19:
        //reg_test <= 16'ha202; // SCALING_PCLK_DELAY  PCLK scaling = 4, must match COM14
        reg_test <= 16'h0A76; // NOP
      6'h1A:
        //reg_test <= //16'h1500; // COM10 Use HREF not hSYNC
        reg_test <= 16'h0A76; // NOP
      6'h1B:
        reg_test <= 16'h7a20; // SLOP
      6'h1C:
        reg_test <= 16'h7b10; // GAM1
      6'h1D:
        reg_test <= 16'h7c1e; // GAM2
      6'h1E:
        reg_test <= 16'h7d35; // GAM3
      6'h1F:
        reg_test <= 16'h7e5a; // GAM4
      6'h20:
        reg_test <= 16'h7f69; // GAM5
      6'h21:
        reg_test <= 16'h8076; // GAM6
      6'h22:
        reg_test <= 16'h8180; // GAM7
      6'h23:
        reg_test <= 16'h8288; // GAM8
      6'h24:
        reg_test <= 16'h838f; // GAM9
      6'h25:
        reg_test <= 16'h8496; // GAM10
      6'h26:
        reg_test <= 16'h85a3; // GAM11
      6'h27:
        reg_test <= 16'h86af; // GAM12
      6'h28:
        reg_test <= 16'h87c4; // GAM13
      6'h29:
        reg_test <= 16'h88d7; // GAM14
      6'h2A:
        reg_test <= 16'h89e8; // GAM15
      6'h2B:
        //reg_test <= 16'h13E0; // COM8 - AGC, White balance
        reg_test <= 16'h0A76; // NOP
      6'h2C:
        reg_test <= 16'h0000; // GAIN AGC 
      6'h2D:
        reg_test <= 16'h1000; // AECH Exposure
      6'h2E:
        //reg_test <= 16'h0D40; // COMM4 - Window Size
        reg_test <= 16'h0A76; // NOP
      6'h2F:
        reg_test <= 16'h1418; // COMM9 AGC 
      6'h30:
        reg_test <= 16'ha505; // AECGMAX banding filter step
      6'h31:
        reg_test <= 16'h2495; // AEW AGC Stable upper limite
      6'h32:
        reg_test <= 16'h2533; // AEB AGC Stable lower limi
      6'h33:
        reg_test <= 16'h26e3; // VPT AGC fast mode limits
      6'h34:
        reg_test <= 16'h9f78; // HRL High reference level
      6'h35:
        reg_test <= 16'hA068; // LRL low reference level
      6'h36:
        reg_test <= 16'ha103; // DSPC3 DSP control
      6'h37:
        reg_test <= 16'hA6d8; // LPH Lower Prob High
      6'h38:
        reg_test <= 16'hA7d8; // UPL Upper Prob Low
      6'h39:
        reg_test <= 16'hA8f0; // TPL Total Prob Low
      6'h3A:
        reg_test <= 16'hA990; // TPH Total Prob High
      6'h3B:
        reg_test <= 16'hAA94; // NALG AEC Algo select
      6'h3C:
        reg_test <= 16'h13E5; // COM8 AGC Settings
      6'h3D:
        reg_test <= 16'hFFFF;  // FINISH CONDITION
      6'h3E:
        reg_test <= 16'hFFFF; // FINISH CONDITION
      default:
        reg_test <= 16'h0A76; // NOP
    endcase
  end



  // camera system clock:
  //     freq   :  min: 10 MHz  -- typ: 24 MHz  -- Max: 48 MHz
  //     Period : max: 100 ns   -- typ: 42 ns   -- Max: 21 ns
  // duty cycle between 45% and 55%
  // Since our clock is 10 ns (100 MHz), we have to divide frequency by:
  //  4: 25 MHz - 40 ns
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      cnt_cam_clk <= 0;
    else begin
      if (cnt_cam_clk == 3'b111)
        cnt_cam_clk <= 0;
      else
        cnt_cam_clk <= cnt_cam_clk + 1;
    end
  end

  // when cnt_cam_clk = 0 | 1 => '0', when 2 | 3 => '1'
  assign ov7670_clk = cnt_cam_clk[2];

  // camera reset and power down
  // reset camera when rst is pressed
  //ov7670_rst_n <= '0' when rst = c_on else '1';
  assign ov7670_rst_n = ~rst;
  assign ov7670_pwdn  = 1'b0;

  //------ controlling the registers to be sent ------------

  assign id        = c_id_write; // 0x21
  assign addr_aux  = reg_i[15:8];
  assign addr      = addr_aux;
  assign data_wr   = reg_i[7:0];

  assign done      = alltx_done;
  assign start_tx  = start_tx_aux;

  // sequentially counts the registers to be sent to the SCCB
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      cnt_reg <= 0;
    else begin
      if (resend || sw_regs_change)
        cnt_reg <= 0; // start again sending the sequence
      else if (~alltx_done) begin
        if (start_tx_aux)
          cnt_reg <= cnt_reg + 1;
      end
    end
  end
        
  // instead of comparing addr_aux = 16'hFF, to simplify, since there is no
  // address in F ("1111"), it can be compared
  assign alltx_done = (addr_aux[7:4] == 4'b1111) ? 1'b1 : 1'b0; 

  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      sw_regs_st <= 0;
    else
      sw_regs_st <= sw_regs;
  end

  assign sw_regs_change = ((sw_regs_st ^ sw_regs) != 2'b00)? 1'b1 : 1'b0;

  // without clk -> Distributed CLBS
  // reg_i <= registers(to_integer(unsigned(cnt_reg));
  // process with clk -> BRAM
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      reg_i <= 16'h1280; // reset
    else begin
      case (sw_regs)
        2'b00 :
          reg_i <= reg_test;
        2'b01 : //hamster Zed
          reg_i <= reg_hzed;
        2'b10 :
          reg_i <= reg_rgb565;
        default:
          reg_i <= reg_yuv;
      endcase
    end
  end

  // FSM sequential process
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      pr_ctrl_st <= WAIT_ST;
    else
      pr_ctrl_st <= nx_ctrl_st;
  end

  // FSM combinatorial process
  always @ (pr_ctrl_st or alltx_done or sccb_ready or test_mode or test_send)
  begin
    // default values
    nx_ctrl_st <= pr_ctrl_st;
    start_tx_aux <= 1'b0;
    case  (pr_ctrl_st)
      WAIT_ST: begin // waiting for the SCCB to be available
        if (alltx_done)
          nx_ctrl_st <= DONE_ST;
        else if (sccb_ready) begin
          //if test_mode = '0' or (test_mode = '1' and test_send='1') then
          if (~test_mode || (test_mode && test_send)) begin
            nx_ctrl_st <= WRITE_REG_ST;
            start_tx_aux <= 1'b1;
          end
        end
      end
      WRITE_REG_ST: // writting a new register (maybe not necessary)
        nx_ctrl_st <= WAIT_ST;
      DONE_ST: // writting a new register
        if (~alltx_done) // in case of resend = '1'
          nx_ctrl_st <= WAIT_ST;
    endcase
  end

endmodule
