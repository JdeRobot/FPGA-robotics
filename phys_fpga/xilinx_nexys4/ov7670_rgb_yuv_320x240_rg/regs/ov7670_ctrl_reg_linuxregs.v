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
    input         rgbmode,      //if '1': in RGB mode
    input         testmode,     //if '1': in test mode
    input         resend,       //resend all the sequence
    input         sccb_ready,   //SCCB ready to transmit
    output [5:0]  cnt_reg_test,     //to test the count
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
  reg  [7:0]   cnt_reg;

  // auxiliary signal, connected to output port done
  wire         alltx_done;

  // auxiliary signal connected to output port ov7670_rst_n
  reg          cam_rst_n;

  // auxiliary signal, connected to start_tx
  reg          start_tx_aux;

  reg [25-1:0] cnt300ms;
  wire         end300ms;
  reg          ena_cnt300ms;
  parameter    c_end300ms = 30000000;
  //parameter    c_end300ms = 30;



  //id of the slave; 0x21.
  // if adding the write bit, would be 0x42 for writing and 0x43 for reading
  parameter c_id_write  = 7'b0100_001;
  wire  [7:0]   addr_aux; //address to be written
  //wire  [7:0]   data_aux; //data to write to slave
  // register from the register memory: address & data
  reg  [15:0]   reg_i;

  parameter RSTCAM_ST      = 0,  // Reset camera during 300ms
            WAIT_RSTCAM_ST = 1,  // Wait 300ms for the camera to be ready
            WAIT_ST        = 2,  // waiting to send, until not busy
            WRITE_REG_ST   = 3,  // sending the initial sequence
            DONE_ST        = 4;  // all the registers written

  // present state, next state
  reg  [2:0]  pr_ctrl_st, nx_ctrl_st;  // present state, next state

  // save the mode values to see if the have changed
  reg         rgbmode_old;
  reg         testmode_old;
  wire        mode_change;

  reg [15:0] reg_yuv422, reg_yuv422_test, reg_rgb444, reg_rgb444_test;

  assign cnt_reg_test = cnt_reg;

  // msb 8 bits are the address (15 downto 8)
  // lsb 8 bits are the register value to be written

  always @ (*) begin
    // *IG means Implementation guide
    case (cnt_reg)
      6'h00:
        reg_rgb444_test = 16'h1280;
               // 12: COM7 Common Control 7
               // [7]=1: Reset all registers to default values
      6'h01:
        reg_rgb444_test = 16'h1280;
               // 12: COM7 Common Control 7
               // [7]=1: Reset all registers to default values
      6'h02:
        reg_rgb444_test = 16'h1204;
               // 12: COM7 Common Control 7
               // [1]=0: disable color bar (dont know what it is
               //        because a 0 also shows the test 8bar
               // [2,0]="10": Output format RGB 
      6'h03:
        reg_rgb444_test = 16'h0901; 
               // 09:COM2 Common Control 2. Default: 01 
               // [7:5] : Reserved
               // [4]   : Soft sleep mode
               // [3:2] : Reserved
               // [1:0] : output drive capability, to increase IOL/OH drive
               //   00: 1x
               //   01: 2x
               //   10: 3x
               //   11: 4x
      6'h04:
        reg_rgb444_test = 16'h40F0;
               // 40: COM15 Full 0-255 output, RGB 444
               // [7:6]="11": Full output range
               // [5:4]="11": RGB 555 only if RGB444 is low
               //             so, this is to have RGB444
               // [3:0]=0: Reserved
      6'h05:
        reg_rgb444_test = 16'h8C02;
               // 8C: RGB444
               // [7:2]=0: Reserved
               // [1]=1: Enable RGB444
               // [0]=0: word format: xR GB
               //    =1: word format: RG Bx
      6'h06:
        reg_rgb444_test = 16'h1180;
               // 11: CLKRC Internal Clock
               // [7]=1: Reserved  **IG says 0, but 1 seems stable
               // [6]=0: Use pre-scale
               // [5:0]: Interal clock pre-scalar
               //    F(internal clk) = F(input clk)/([5:0]+1)
               // [5:0]= 0: No prescale (internal clk)

      6'h07:
        //reg_rgb444_test = 16'h0F43; // 0F: COM6 Common Control 6
        reg_rgb444_test = 16'h0F4B;
               // 0F: COM6 Common Control 6
               // [7]=0: Disable HREF at optical blank
               // [1]=1: Resets timming when format changes
               // others reserved
               // [3] = 1 (reserved) hamster

      6'h08:
        reg_rgb444_test = 16'h1E37;
             // MVFP Mirror/flip enable. Default 00
             // [7:6]= 00 : reserved
             // [5]= 1 : Mirror image
             // [4]= 1 : Flip image
             // [3] : Reserved
             // [2] : Black Sun Enable
             // [1:0] : Reserved

      // color from hamster
      6'h09:
        reg_rgb444_test = 16'h1438;
             // COM9 reserved: default 4A
             // [6:4] Automatic Gain Ceiling - maximum AGC value
             //   100 : 32x (default)
             //   011 : 16x (default)
             // [3:1] Reserved (default 101)
             //   100 : Hamster

     //x"4F40", --x"4fb3", -- MTX1  - colour conversion matrix
     //x"5034", --x"50b3", -- MTX2  - colour conversion matrix
     //x"510C", --x"5100", -- MTX3  - colour conversion matrix
     //x"5217", --x"523d", -- MTX4  - colour conversion matrix
     //x"5329", --x"53a7", -- MTX5  - colour conversion matrix
     //x"54E4", -- MTX6  - colour conversion matrix
     //x"581E", --x"589e", -- MTXS  - Matrix sign and auto contrast

      6'h0A:
        reg_rgb444_test = 16'h4FB3; // MTX1  - colour conversion matrix
      6'h0B:
        reg_rgb444_test = 16'h50B3; // MTX2  - colour conversion matrix
      6'h0C:
        reg_rgb444_test = 16'h5100; // MTX3  - colour conversion matrix
      6'h0D:
        reg_rgb444_test = 16'h523D; // MTX4  - colour conversion matrix
      6'h0E:
        reg_rgb444_test = 16'h53A7; // MTX5  - colour conversion matrix
      6'h0F:
        reg_rgb444_test = 16'h54E4; // MTX6  - colour conversion matrix
      6'h10:
        reg_rgb444_test = 16'h589E; // MTXS  - Matrix sign and auto contrast

      6'h11:
        reg_rgb444_test = 16'h3DC0; // COM13: default 88
              // [7]=1 : Gamma enable (defaul)
              // [6]=1 : UV Saturation Level - UV autoadjustment
              // [5:1]: Reserved
              // [0]: UV swap


    // Trial and error
      6'h12:
        reg_rgb444_test = 16'hB084; // recommended TFG (reserved)
    // hamster
      6'h13:
        reg_rgb444_test = 16'h0E61; // COM5 reserved: default 01
      6'h14:
        reg_rgb444_test = 16'h1602; // reserved
      6'h15:
        reg_rgb444_test = 16'h2102; // ADCCTR0 (reserved): default 02 
      6'h16:
        reg_rgb444_test = 16'h2291; // ADCCTR1 (reserved): default 01 
      6'h17:
        reg_rgb444_test = 16'h2907; // RSVD (reserved): default XX 
      6'h18:
        reg_rgb444_test = 16'h330B; // CHLF Array Current Control (reserved):
                                     // default 08 
      6'h19:
        reg_rgb444_test = 16'h350B; // RSVD (reserved): default XX
      6'h1A:
        reg_rgb444_test = 16'h371D; // ADC (reserved): default 3F
      6'h1B:
        reg_rgb444_test = 16'h3871; // ACOM (reserved): default 01.
                                     // ADC and Analog Common Mode Control
      6'h1C:
        reg_rgb444_test = 16'h392A; // OFON (reserved): default 00.
                                     // ADC Offset Control 

      6'h1D:
        reg_rgb444_test = 16'h3C78; // COM12 (default 69)
             // [7]= 0: No HREF when VSYNC is low
             // [6:0]: Reserved
      6'h1E:
        reg_rgb444_test = 16'h4D40; // RSVD (reserved): default XX
      6'h1F:
        reg_rgb444_test = 16'h4E20; // RSVD (reserved): default XX
      6'h20:
        reg_rgb444_test = 16'h7410; // REG74 default 00
             // [4]=1 : Digital Gain control by REG74[1:0]
             // [1:0]=00: Bypass
      6'h21:
        reg_rgb444_test = 16'h8D4F; // RSVD (reserved): default XX
      6'h22:
        reg_rgb444_test = 16'h8E00; // RSVD (reserved): default XX
      6'h23:
        reg_rgb444_test = 16'h8F00; // RSVD (reserved): default XX
      6'h24:
        reg_rgb444_test = 16'h9000; // RSVD (reserved): default XX
      6'h25:
        reg_rgb444_test = 16'h9100; // RSVD (reserved): default XX
      6'h26:
        reg_rgb444_test = 16'h9600; // RSVD (reserved): default XX
      6'h27:
        reg_rgb444_test = 16'h9A00; // RSVD (reserved): default XX
      6'h28:
        reg_rgb444_test = 16'hB10C; // ABLC1: default 00.
             // Automatic Black Level Calibration
             // [3]=1 : Reserved (hamster=1)
             // [2]=1 : Enable ABLC
      6'h29:
        reg_rgb444_test = 16'hB20E; // RSVD (reserved): default XX
      6'h2A:
        reg_rgb444_test = 16'hB382; // THL_ST: ABLC Target: default 80
             // Lower limit of black leve +0x80
      6'h2B:
        reg_rgb444_test = 16'hB80A; // RSVD (reserved): default XX


      // ---------

      6'h2C:
        reg_rgb444_test = 16'h1520; // 15: COM10 Common Control 10
                             // [7]=0: Reserved
                             // [6]=0: Use HREF not HSYNC
                             // [5]=1: PCLK doesnt toggle during horizontl blank
                             // others default
      6'h2D:
        reg_rgb444_test = 16'h1711; // HSTART HREF start high 8-bit.
              // The first pixels flicker
              // 1700; // HSTART HREF start high 8-bit.
              // For windowing. Dont want to do
      6'h2E:
        reg_rgb444_test = 16'h1800; // HSTOP HREF end high 8-bit.
             // For windowing. Dont want to do
      6'h2F:
        reg_rgb444_test = 16'h1900; // VSTRT VREF start high 8-bit.
             // For windowing. Dont want to do
      6'h30:
        reg_rgb444_test = 16'h1A00; // VSTOP VREF end high 8-bit.
             // For windowing. Dont want to do
      6'h31:
        reg_rgb444_test = 16'h3200; // HREF Control
             // [7:6] : HREF edge offset to data ouput
             // [5:3] : HREF end LSB (high 8MSB at HSTOP)
             // [2:0] : HREF start LSB (high 8MSB at HSTART


      // -- QVGA 320x240
      6'h32:
        reg_rgb444_test = 16'h0C04; // 0C: COM3 Common Control 3
                             // [3]=1: Enable scale (for QQVGA/2)
                             // [2]=0: Disable DCW
                             // others default
      6'h33:
        reg_rgb444_test = 16'h3E19; // 3E: COM14 Common Control 14
                             //    Scaling can be adjusted manually
                             // [7:5]: Reserved
                             // [4]=1: Scaling PCLK and DCW enabled
                             //        Controlled by [2:0] and SCALING_PCLK_DIV
                             // [3]=1: Manual scaling enabled for predefined
                             //        modes such QVGA
                             // [2:0] PCLK divided when COM14[4]=1
                             // [2:0]=001: Divided by 2-> QVGA: 320x480
      6'h34:
        reg_rgb444_test = 16'h703A; // 70: SCALING_XSC
                             // [7]: test_pattern[0], works with test_pattern[1]
                             //  00: No test output                            
                             //  01: Shifting "1"
                             //  10: 8-bar color bar
                             //  11: Fade to gray color bar
                             // [7]= 0 -> 8-bar color bar (test_pattern[1]=1)
                             // [6:0]: default horizontal scale factor
      6'h35:
        reg_rgb444_test = 16'h71B5; // 71: SCALING_YSC
                             // [7]: test_pattern[1], works with test_pattern[0]
                             //  00: No test output                            
                             //  01: Shifting "1"
                             //  10: 8-bar color bar
                             //  11: Fade to gray color bar
                             // [7]= 1 -> 8-bar color bar (test_pattern[0]=0)
                             // [6:0]: default vertical scale factor
      6'h36:
        reg_rgb444_test = 16'h7211; // 72: SCALING_DCWCTR DCW Control
                             // [7]=0: Vertical average calc truncation(default)
                             // [6]=0: Vertical truncation downsampling(default)
                             // [5:4]: Vertical down sampling rate
                             // [5:4]=01: Vertical down sampling by 2->QVGA
                             // [3]=0: Horztal average calc truncation(default)
                             // [2]=0: Horztal truncation downsampling(default)
                             // [1:0]: Horztal down sampling rate
                             // [1:0]=01: Horztal down sampling by 2->QVGA
      6'h37:
        reg_rgb444_test = 16'h73F1; // 73: SCALING_PCLK_DIV
                             // [7:4]=F: Reserved, and manual says default is 0
                             //          but IG says F
                             // [3]=0: Enable clk divider for DSP scale control
                             // [2:0]=001: Divided by 2 -> QVGA
      6'h38:
        reg_rgb444_test = 16'hA202; // A2: SCALING_PCLK_DELAY Pixel Clock Delay
                             // [7]: Reserved
                             // [6:0]=02: Default scaling ouput delay
      //  end QQVGA
      6'h39:
        reg_rgb444_test = 16'hFFFF;  // FINISH CONDITION, register FF doesnt exist
      default:
        reg_rgb444_test = 16'hFFFF;  // FINISH CONDITION
    endcase
  end






//---- Autcmatically generated verilog ROM blockfrom a VHDL file----
//  Original VHDL file name: ov7670_ctrl_reg_linux.vhd
//  Constant VHDL name: reg_rgb444
//  Memory with blocking assignments (=)
//  Memory without clock

  always @(*)
  begin
    case(cnt_reg)
      8'h0: reg_rgb444 = 16'h1280;
            // 12:COM7
            // [7]=1: Reset all registers to default values
      8'h1: reg_rgb444 = 16'h1180;
            // CLKRC  6->0 External clock, pre-scale 
            //        [7]: 1 (reserved)
            //        [5:0]: Interal clock pre-scalar
            //           F(internal clk) = F(input clk)/([5:0]+1)
            //        [5:0]= 0: No prescale (internal clk)
            // TOCHECK as in linux driver
            //x"1100", -- CLKRC  6->0 External clock, pre-scale 
      8'h2: reg_rgb444 = 16'h6B0A;
            // DBLV  default 0A
            // [7:6] = 00 : Bypass PLL
            // [5]: reserved
            // [4] = 0 : Enable internal regulator
            // [3:0]: reserved 
      8'h3: reg_rgb444 = 16'h1204;
            // 12:COM7
            // [2,0]="10": Output format RGB 
      8'h4: reg_rgb444 = 16'h0901;
            // 09:COM2 Common Control 2. Default: 01
            // [7:5] : Reserved
            // [4]   : Soft sleep mode
            // [3:2] : Reserved
            // [1:0] : output drive capability, to increase IOL/OH drive
            //   00: 1x
            //   01: 2x
            //   10: 3x
            //   11: 4x
      8'h5: reg_rgb444 = 16'h40F0;
            // 40:COM15  Full 0-255 output, RGB 444
            // [7:6] = 11: Full output range. 12 (C)
            // [5:4] = x0: Normal RGB output (not we want) Seems: GRB422
            // [5:4] = 11: RGB555 only if RGB444 is low, we want RGB444
            // [3:0] = 0:  Reserved
      8'h6: reg_rgb444 = 16'h8C02;
            // RGB444 Set RGB format: RGB444
            // [1]= 1: RGB444 enable
            // [0]= 0: word format: xR GB (chosen)
            // [0]= 1: word format: RG Bx
            //---------------------- FROM LINUX DRIVER -----------------------
            // Gamma curve values
      8'h7: reg_rgb444 = 16'h7A20;
            // SLOP: Gamma Curve Highest segment Slope. Default: 24
            // SLOP[7:0] = (0x100 - GAM15[7:0]x4/3
      8'h8: reg_rgb444 = 16'h7B10;
            // GAM1: Gamma Curve 1st segment input end point 0x04 Output Value
            // Default: 04
      8'h9: reg_rgb444 = 16'h7C1E;
            // GAM2: Gamma Curve 2nd segment input end point 0x08 Output Value
            // Default: 07
      8'hA: reg_rgb444 = 16'h7D35;
            // GAM3: Gamma Curve 3rd segment input end point 0x10 Output Value
            // Default: 10
      8'hB: reg_rgb444 = 16'h7E5A;
            // GAM4: Gamma Curve 4th segment input end point 0x20 Output Value
            // Default: 28
      8'hC: reg_rgb444 = 16'h7F69;
            // GAM5: Gamma Curve 5th segment input end point 0x28 Output Value
            // Default: 36
      8'hD: reg_rgb444 = 16'h8076;
            // GAM6: Gamma Curve 6th segment input end point 0x30 Output Value
            // Default: 44
      8'hE: reg_rgb444 = 16'h8180;
            // GAM7: Gamma Curve 7th segment input end point 0x38 Output Value
            // Default: 52
      8'hF: reg_rgb444 = 16'h8288;
            // GAM8: Gamma Curve 8th segment input end point 0x40 Output Value
            // Default: 60
      8'h10: reg_rgb444 = 16'h838F;
            // GAM9: Gamma Curve 9th segment input end point 0x48 Output Value
            // Default: 6C
      8'h11: reg_rgb444 = 16'h8496;
            // GAM10: Gamma Curve 10th segment input endpoint 0x50 Output Value
            // Default: 78
      8'h12: reg_rgb444 = 16'h85A3;
            // GAM11: Gamma Curve 11th segment input endpoint 0x60 Output Value
            // Default: 8C
      8'h13: reg_rgb444 = 16'h86AF;
            // GAM12: Gamma Curve 12th segment input endpoint 0x70 Output Value
            // Default: 9E
      8'h14: reg_rgb444 = 16'h87C4;
            // GAM13: Gamma Curve 13th segment input endpoint 0x90 Output Value
            // Default: BB
      8'h15: reg_rgb444 = 16'h88D7;
            // GAM14: Gamma Curve 14th segment input endpoint 0xB0 Output Value
            // Default: D2
      8'h16: reg_rgb444 = 16'h89E8;
            // GAM15: Gamma Curve 15th segment input endpoint 0xD0 Output Value
            // Default: E5
            //---------------------- FROM LINUX DRIVER -----------------------
            // Automatic Gain Control (AGC) Automatic Exposure Control (AEC)
            // AGC and AEC parameters. First these features are disabled, then
            // turned on after tweaking the values (actually, what it is disabled
            // is the AGC, AWB and AEC 
      8'h17: reg_rgb444 = 16'h13E0;
            // COM8. Default 8F (1000 1111)
            // Actual linux value is x"13E0", but bit 3 is reserved: 1 default
            // [7]: Enable fast AGC/AEC algorithm
            // [6]: AEC - Step size limit
            //    = 0 : Step size is limited to vertical blank
            //    = 1 : Unlimited Step
            // [5]: Banding filter ON/OFF. To turn ON de banding filter
            //      BD50ST (0x9D) or BD60ST (0x9E) must be set to non zero
            //    = 0 : OFF
            //    = 1 : ON
            // [4:3]: Reserved . Default 01
            // [2]: AGC Enable -> OFF
            // [1]: AWB Enable (Auto White Enable) -> OFF
            // [0]: AEC Enable -> OFF
      8'h18: reg_rgb444 = 16'h0000;
            // GAIN. AGC control gain setting (automatic gain control)
            // default 00
      8'h19: reg_rgb444 = 16'h1000;
            // AECH. Exposure value
            // default 40
            // [7:0]: AEC[9:2], see registers AECHH (0x07) for AEC[15:10]
            //                                COM1 (0x04) for AEC[1:0]
      8'h1A: reg_rgb444 = 16'h0D40;
            // COM4. Default 00
            // [7:6]: reserved -> magic reserved bit -> 01
            // [5:4]: AEC window, must be same as COM17[7:6] (0x42)
            //        00: Full window
            //        01: 1/2 window... does not change
      8'h1B: reg_rgb444 = 16'h1418;
            // COM9. Default  4A: 0100 1010
            //       selected 18: 0001 1000
            //       hamster  38: 0011 1000
            // [7]: reserved 0
            // [6:4]: Automatic Gain Ceiling - maximum AGC value
            //      = 000: 2x
            //      = 001: 4x -> selected
            //      = 010: 8x
            //      = 011: 16x -> hamster
            //      = ...
            //      = 100: 32x -> default
            // [3:1]: Reserved (101) -> 100 selected magic
            // [0]: Freeze AGC/AEC
      8'h1C: reg_rgb444 = 16'hA505;
            // BD50MAX: 50Hz Banding Step Limit. Default 0F
      8'h1D: reg_rgb444 = 16'hAB07;
            // BD60MAX: 60Hz Banding Step Limit. Default 0F
      8'h1E: reg_rgb444 = 16'h2495;
            // AEW: AGC/AEC Stable operation Region (upper limit). Default 75
      8'h1F: reg_rgb444 = 16'h2533;
            // AEW: AGC/AEC Stable operation Region (lower limit). Default 63
      8'h20: reg_rgb444 = 16'h26E3;
            // VPT: AGC/AEC Fast Mode Operating Region. Default D4
      8'h21: reg_rgb444 = 16'h9F78;
            // HAECC1: Histogram-based AGC/AEC Control 1. Default C0
      8'h22: reg_rgb444 = 16'hA068;
            // HAECC2: Histogram-based AGC/AEC Control 2. Default 90
      8'h23: reg_rgb444 = 16'hA103;
            // Reserved, default XX. magic
      8'h24: reg_rgb444 = 16'hA6D8;
            // HAECC3: Histogram-based AGC/AEC Control 3. Default F0
      8'h25: reg_rgb444 = 16'hA7D8;
            // HAECC4: Histogram-based AGC/AEC Control 4. Default C1
      8'h26: reg_rgb444 = 16'hA8F0;
            // HAECC5: Histogram-based AGC/AEC Control 5. Default F0 <-
      8'h27: reg_rgb444 = 16'hA990;
            // HAECC6: Histogram-based AGC/AEC Control 6. Default C1
      8'h28: reg_rgb444 = 16'hAA94;
            // HAECC7: default 14
            // [7]: AEC algorith selection
            //    = 0: Average-based AEC Algorithm   -> default
            //    = 1: Histogram-based AEC Algorithm -> selected
            // [6:0]: reserved 001 0100 -> selected
            // COM8 Again, turn on AGC and AEC
      8'h29: reg_rgb444 = 16'h13E5;
            // COM8. Default  8F (1000 1111)
            // COM8. Selected E5 (1110 0101)
            // Actual linux value is x"13E0", but bit 3 is reserved: 1 default
            // [7]: Enable fast AGC/AEC algorithm
            // [6]: AEC - Step size limit
            //    = 0 : Step size is limited to vertical blank
            //    = 1 : Unlimited Step
            // [5]: Banding filter ON/OFF. To turn ON de banding filter
            //      BD50ST (0x9D) or BD60ST (0x9E) must be set to non zero
            //    = 0 : OFF
            //    = 1 : ON
            // [4:3]: Reserved . Default 01
            // [2]: AGC Enable -> ON
            // [1]: AWB Enable (Auto White Enable) -> OFF
            // [0]: AEC Enable -> ON
            // Almost all are magic
      8'h2A: reg_rgb444 = 16'h0E61;
            // COM5. Default XX (reserved)
      8'h2B: reg_rgb444 = 16'h0F4B;
            // COM6. Default 43 1000 0011
            //       Used    4B 1000 1011
            // [7] = 0 Disable HREF at optical black
            // [1] = 1 Resets timming when format changes
            // others reserved
            // [3] = 1 (reserved) 
            // [0] = 1 (reserved) 
      8'h2C: reg_rgb444 = 16'h1602;
            // reserved
      8'h2D: reg_rgb444 = 16'h1E37;
            // MVFP Mirror/flip enable. Default 01
            // [7:6]= 00 : reserved
            // [5]= 1 : Mirror image (linux 0)
            // [4]= 1 : Flip image   (linux 0)
            // [3] : Reserved
            // [2] : Black Sun Enable -> 1
            // [1:0] : Reserved (01) - > 11
      8'h2E: reg_rgb444 = 16'h2102;
            // ADCCTR0 (reserved): default 02 
      8'h2F: reg_rgb444 = 16'h2291;
            // ADCCTR1 (reserved): default 01 
      8'h30: reg_rgb444 = 16'h2907;
            // RSVD (reserved): default XX 
      8'h31: reg_rgb444 = 16'h330B;
            // CHLF Array Current Control (reserved): default 08 
      8'h32: reg_rgb444 = 16'h350B;
            // RSVD (reserved): default XX
      8'h33: reg_rgb444 = 16'h371D;
            // ADC (reserved): default 3F
      8'h34: reg_rgb444 = 16'h3871;
            // ACOM (reserved): default 01. ADC and Analog Common Mode Control
      8'h35: reg_rgb444 = 16'h392A;
            // OFON (reserved): default 00. ADC Offset Control 
      8'h36: reg_rgb444 = 16'h3C78;
            // COM12 (default 69)
            // [7]= 0: No HREF when VSYNC is low
            // [6:0]: Reserved
      8'h37: reg_rgb444 = 16'h4D40;
            // RSVD (reserved): default XX
      8'h38: reg_rgb444 = 16'h4E20;
            // RSVD (reserved): default XX
      8'h39: reg_rgb444 = 16'h6900;
            // Fix Gain Control
            // [7:6]: Fix Gain for Gr channel
            // [5:4]: Fix Gain for Gb channel
            // [3:2]: Fix Gain for R channel
            // [1:0]: Fix Gain for B channel
            //  values:
            //  00: 1x
            //  01: 1.25x
            //  10: 1.5x
            //  11: 1.75x
            //x"6B0A", -- DBLV  default 0A (already done)
      8'h3A: reg_rgb444 = 16'h7410;
            // REG74 default 00
            // [4]=1 : Digital Gain control by REG74[1:0]
            // [1:0]=00: Bypass
      8'h3B: reg_rgb444 = 16'h8D4F;
            // RSVD (reserved): default XX
      8'h3C: reg_rgb444 = 16'h8E00;
            // RSVD (reserved): default XX
      8'h3D: reg_rgb444 = 16'h8F00;
            // RSVD (reserved): default XX
      8'h3E: reg_rgb444 = 16'h9000;
            // RSVD (reserved): default XX
      8'h3F: reg_rgb444 = 16'h9100;
            // RSVD (reserved): default XX
      8'h40: reg_rgb444 = 16'h9600;
            // RSVD (reserved): default XX
      8'h41: reg_rgb444 = 16'h9A00;
            // RSVD (reserved): default XX
      8'h42: reg_rgb444 = 16'hB084;
            // recommended TFG (reserved)
      8'h43: reg_rgb444 = 16'hB10C;
            // ABLC1: default 00. Automatic Black Level Calibration
            // [3]=1 : Reserved -> 1
            // [2]=1 : Enable ABLC
      8'h44: reg_rgb444 = 16'hB20E;
            // RSVD (reserved): default XX
      8'h45: reg_rgb444 = 16'hB382;
            // THL_ST: ABLC Target: default 80
            // Lower limit of black leve +0x80
      8'h46: reg_rgb444 = 16'hB80A;
            // RSVD (reserved): default XX
      8'h47: reg_rgb444 = 16'h430A;
            // AWBC1 (reserved): default 14
      8'h48: reg_rgb444 = 16'h44F0;
            // AWBC2 (reserved): default F0 <-
      8'h49: reg_rgb444 = 16'h4534;
            // AWBC3 (reserved): default 45
      8'h4A: reg_rgb444 = 16'h4658;
            // AWBC4 (reserved): default 61
      8'h4B: reg_rgb444 = 16'h4728;
            // AWBC5 (reserved): default 51
      8'h4C: reg_rgb444 = 16'h483A;
            // AWBC6 (reserved): default 79
      8'h4D: reg_rgb444 = 16'h5988;
            // AWB Control (reserved): default XX
      8'h4E: reg_rgb444 = 16'h5A88;
            // AWB Control (reserved): default XX
      8'h4F: reg_rgb444 = 16'h5B44;
            // AWB Control (reserved): default XX
      8'h50: reg_rgb444 = 16'h5C67;
            // AWB Control (reserved): default XX
      8'h51: reg_rgb444 = 16'h5D49;
            // AWB Control (reserved): default XX
      8'h52: reg_rgb444 = 16'h5E0E;
            // AWB Control (reserved): default XX
      8'h53: reg_rgb444 = 16'h6C0A;
            // AWBCTR3. AWB Control 3: default 02
      8'h54: reg_rgb444 = 16'h6D55;
            // AWBCTR2. AWB Control 2: default 55
      8'h55: reg_rgb444 = 16'h6E11;
            // AWBCTR1. AWB Control 1: default C0
      8'h56: reg_rgb444 = 16'h6F9F;
            // AWBCTR0. AWB Control 0: default 9A
            // 9E for advance AWB
      8'h57: reg_rgb444 = 16'h6A40;
            // GGAIN. G Channel AWB Gain. default 00
      8'h58: reg_rgb444 = 16'h0140;
            // AWB Blue channel gain setting. default 80. Range 00-FF
      8'h59: reg_rgb444 = 16'h0260;
            // AWB Red  channel gain setting. default 80. Range 00-FF
            // COM8 Again, turn on AGC and AEC and AWB
      8'h5A: reg_rgb444 = 16'h13E7;
            // COM8. Default  8F (1000 1111)
            // COM8. Selected E7 (1110 0111)
            // Actual linux value is x"13E0", but bit 3 is reserved: 1 default
            // [7]: Enable fast AGC/AEC algorithm
            // [6]: AEC - Step size limit
            //    = 0 : Step size is limited to vertical blank
            //    = 1 : Unlimited Step
            // [5]: Banding filter ON/OFF. To turn ON de banding filter
            //      BD50ST (0x9D) or BD60ST (0x9E) must be set to non zero
            //    = 0 : OFF
            //    = 1 : ON
            // [4:3]: Reserved . Default 01. Used 00
            // [2]: AGC Enable -> ON
            // [1]: AWB Enable (Auto White Enable) -> ON
            // [0]: AEC Enable -> ON
            // Matrix color conversion
      8'h5B: reg_rgb444 = 16'h4F80;
            // MTX1  - Matrix Coefficient 1. default 40
      8'h5C: reg_rgb444 = 16'h5080;
            // MTX2  - Matrix Coefficient 2. default 34
      8'h5D: reg_rgb444 = 16'h5100;
            // MTX3  - Matrix Coefficient 3. default 0C
      8'h5E: reg_rgb444 = 16'h5222;
            // MTX4  - Matrix Coefficient 4. default 17
      8'h5F: reg_rgb444 = 16'h535E;
            // MTX5  - Matrix Coefficient 5. default 29
      8'h60: reg_rgb444 = 16'h5480;
            // MTX6  - Matrix Coefficient 6. default 40
      8'h61: reg_rgb444 = 16'h589E;
            // MTXS  - Matrix sign and auto contrast
            // 
      8'h62: reg_rgb444 = 16'h4108;
            // COM16. default 08
            // [7:6]: reserved
            // [5]: Enable edge enhancement for YUV
            // [4]: denoise threshold enable
            // [3]: AWB gain enable
            // [2]: Reserved
            // [1]: Color matrix coefficient double option
            //    = 0: original, =1: double
            // [0]: Reserved
      8'h63: reg_rgb444 = 16'h3F00;
            // EDGE. Edge Enhancement adjustment. default 00
            // [7:5]: reserved
            // [4:0]: edge enhancement factor
      8'h64: reg_rgb444 = 16'h7505;
            // REG75. default 0F
            // [7:5]: reserved
            // [4:0]: edge enhancement lower limit
      8'h65: reg_rgb444 = 16'h76E5;
            // REG76. default 01
            // [7]: black pixel correction enable <- 1
            // [6]: white pixel correction enable <- 1
            // [5]: reserved <- 1
            // [4:0]: edge enhancement higher limit 0 0101
      8'h66: reg_rgb444 = 16'h4C00;
            // DNSTH. De-noise strength. default 00
      8'h67: reg_rgb444 = 16'h7701;
            // REG77. default 10
            // [7:0]: De-noise offset
      8'h68: reg_rgb444 = 16'h3DC2;
            // COM13: default  88: 1000 1000
            //        selected C0: 1100 0010
            // [7]=1 : Gamma enable (default)
            // [6]=1 : UV Saturation Level - UV autoadjustment
            // [5:1]: Reserved <- 00 0010 (changed)
            // [0]: UV swap
      8'h69: reg_rgb444 = 16'h4B09;
            // REG4B, default 00
            // [7:1]: reserved -> changed
            // [0]: UV average enable -> selected
      8'h6A: reg_rgb444 = 16'hC960;
            // SATCTR, saturationcontrol. default C0
            // [7:4]: UV saturation control min. 1100 -> 0110
            // [3:0]: UV saturation control result. 0000
            // again COM16, enable
      8'h6B: reg_rgb444 = 16'h4138;
            // COM16. default 08
            // [7:6]: reserved
            // [5]: Enable edge enhancement for YUV -> ON
            // [4]: denoise threshold enable        -> ON
            // [3]: AWB gain enable
            // [2]: Reserved
            // [1]: Color matrix coefficient double option
            //    = 0: original, =1: double
            // [0]: Reserved
      8'h6C: reg_rgb444 = 16'h5640;
            // Contrast Control. default 40
      8'h6D: reg_rgb444 = 16'h3411;
            // ARBLM. Array Reference Control. default 11 <-
      8'h6E: reg_rgb444 = 16'h3B12;
            // COM11. default 00
            //        selected C3: 0001 0010
            // [7]: Night mode. = 0 Disabled
            //    = 1. Frame rate is reduced automatically while minimum 
            //         frame rate is limited by COM11[6:5].
            //         Also ADVFH adn ADVFL will be automatically uptaded
            // [6:5]: Minimum frame rate of night mode
            //   00: same as normal mode frame rate <-
            //   01: 1/2 of normal mode frame rate
            //   10: 1/4 of normal mode frame rate
            //   11: 1/8 of normal mode frame rate
            // [4]: D56 Auto
            //   0: disable 50/60 Hz auto detection
            //   1: enable 50/60 Hz auto detection <-
            // [3]: Banding filter value select (only when COM11[4] = 0)
            //   0: Select BD60ST[7:0] (0x9E) as Banding Filter Value
            //   1: Select BD50ST[7:0] (0x9D) as Banding Filter Value
            // [2]: reserved: 0 <-
            // [1]: Exposure timing can be less than limit of banding filter
            //      when light is too strong <- 1
            // [0]: reserved: 0 <-
      8'h6F: reg_rgb444 = 16'hA488;
            // NT_CTRL. default 00. Selected 1000 1000
            // [7:4]: reserved: <- selected 1000 
            // [3]: Auto frame rate adjustment control
            //   0: double exposure time
            //   1: reduce frame rate by half <-
            // [2]: reserved: 0 <-
            // [1:0]: Auto frame rate adjustment switch point
            //   00: inster dummy row at 2x gain <-
            //   01: inster dummy row at 4x gain
            //   10: inster dummy row at 8x gain
      8'h70: reg_rgb444 = 16'h9600;
            // RSVD (reserved): default XX -- Again
      8'h71: reg_rgb444 = 16'h9730;
            // RSVD (reserved): default XX
      8'h72: reg_rgb444 = 16'h9820;
            // RSVD (reserved): default XX
      8'h73: reg_rgb444 = 16'h9930;
            // RSVD (reserved): default XX
      8'h74: reg_rgb444 = 16'h9A84;
            // RSVD (reserved): default XX
      8'h75: reg_rgb444 = 16'h9B29;
            // RSVD (reserved): default XX
      8'h76: reg_rgb444 = 16'h9C03;
            // RSVD (reserved): default XX
      8'h77: reg_rgb444 = 16'h9D4C;
            // BD50ST: 50Hz banding filter value. default 99
            // efective only when COM8[5]=1 and COM11[3]=1
      8'h78: reg_rgb444 = 16'h9E3F;
            // BD60ST: 60Hz banding filter value. default 7F
            // efective only when COM8[5]=1 and COM11[3]=0
      8'h79: reg_rgb444 = 16'h7804;
            // RSVD (reserved): default XX
            // extra weird stuff, some sort of multiplexor register
      8'h7A: reg_rgb444 = 16'h7901;
            // RSVD (reserved): default XX
      8'h7B: reg_rgb444 = 16'hC8F0;
            // RSVD (reserved): default XX
      8'h7C: reg_rgb444 = 16'h790F;
            // RSVD (reserved): default XX
      8'h7D: reg_rgb444 = 16'hC8F0;
            // RSVD (reserved): default XX
      8'h7E: reg_rgb444 = 16'h7910;
            // RSVD (reserved): default XX
      8'h7F: reg_rgb444 = 16'hC87E;
            // RSVD (reserved): default XX
      8'h80: reg_rgb444 = 16'h790A;
            // RSVD (reserved): default XX
      8'h81: reg_rgb444 = 16'hC880;
            // RSVD (reserved): default XX
      8'h82: reg_rgb444 = 16'h790B;
            // RSVD (reserved): default XX
      8'h83: reg_rgb444 = 16'hC801;
            // RSVD (reserved): default XX
      8'h84: reg_rgb444 = 16'h790C;
            // RSVD (reserved): default XX
      8'h85: reg_rgb444 = 16'hC80F;
            // RSVD (reserved): default XX
      8'h86: reg_rgb444 = 16'h790D;
            // RSVD (reserved): default XX
      8'h87: reg_rgb444 = 16'hC820;
            // RSVD (reserved): default XX
      8'h88: reg_rgb444 = 16'h7909;
            // RSVD (reserved): default XX
      8'h89: reg_rgb444 = 16'hC880;
            // RSVD (reserved): default XX
      8'h8A: reg_rgb444 = 16'h7902;
            // RSVD (reserved): default XX
      8'h8B: reg_rgb444 = 16'hC8C0;
            // RSVD (reserved): default XX
      8'h8C: reg_rgb444 = 16'h7903;
            // RSVD (reserved): default XX
      8'h8D: reg_rgb444 = 16'hC840;
            // RSVD (reserved): default XX
      8'h8E: reg_rgb444 = 16'h7905;
            // RSVD (reserved): default XX
      8'h8F: reg_rgb444 = 16'hC830;
            // RSVD (reserved): default XX
      8'h90: reg_rgb444 = 16'h7926;
            // RSVD (reserved): default XX
            //----
            //x"1500", -- COM10 Use HREF not hSYNC
      8'h91: reg_rgb444 = 16'h1520;
            // COM10 Use HREF not hSYNC
            // [6]=0: Use HREF not HSYNC
            // [5]=1 pclk does not toggle during horizontal blank
            // others default
            //x"1700", -- HSTART HREF start high 8-bit. For windowing. Dont want to do
      8'h92: reg_rgb444 = 16'h1711;
            // HSTART HREF start high 8-bit. The first pixels flicker
      8'h93: reg_rgb444 = 16'h1800;
            // HSTOP HREF end high 8-bit. For windowing. Dont want to do
      8'h94: reg_rgb444 = 16'h1900;
            // VSTRT VREF start high 8-bit. For windowing. Dont want to do
      8'h95: reg_rgb444 = 16'h1A00;
            // VSTOP VREF end high 8-bit. For windowing. Dont want to do
      8'h96: reg_rgb444 = 16'h3200;
            // HREF Control
            // [7:6] : HREF edge offset to data ouput
            // [5:3] : HREF end LSB (high 8MSB at HSTOP)
            // [2:0] : HREF start LSB (high 8MSB at HSTART)
            //QVGA
      8'h97: reg_rgb444 = 16'h0C04;
            // COM3
            // [3]=1 scale enable (for QQVGA/2)
            // [2]=0 DCW disable
      8'h98: reg_rgb444 = 16'h3E19;
            // COM14
            // [4]=1 : Scaling PCLK enable (also DCW)
            // [3]=1 : Manual scaling enable (QVGA)
            // [2:0] PCLK divided when COM14[4]=1
            // [2:0]-> 001: pclk divided by 2 -> QVGA: 320x480 
      8'h99: reg_rgb444 = 16'h703A;
            // SCALING_XSC 
            // [7]: test_pattern[0], works with test_pattern[1]
            //  00: No test output  <-
            //  01: Shifting "1"
            //  10: 8-bar color bar
            //  11: Fade to gray color bar
            // [7]: 0 -> No test pattern (test_pattern[1]=0)
            // [6:0]: default horizontal scale factor
            //x"70BA", -- SCALING_XSC
            // [7] = 1 (BA) Fade to gray color bar
            //x"7135", -- SCALING_YSC (default)
      8'h9A: reg_rgb444 = 16'h7135;
            // SCALING_YSC (default)
            // [7]: test_pattern[1], works with test_pattern[0]
            //  00: No test output <-                         
            //  01: Shifting "1"
            //  10: 8-bar color bar
            //  11: Fade to gray color bar
            // [7]: 0 -> No test pattern (test_pattern[0]=0)
            // [6:0]: default vertical scale factor
            //x"7222", -- SCALING_DCWCTR (down sampling by 4)
      8'h9B: reg_rgb444 = 16'h7211;
            // SCALING_DCWCTR (down sampling by 8)
            // [7]=0: Vertical average calc truncation(default)
            // [6]=0: Vertical truncation downsampling(default)
            // [5:4]: Vertical down sampling rate
            // [5:4]=01: Vertical down sampling by 2->QVGA
            // [5:4]=11: Vertical down sampling by 8->QQVGA/2
            // [3]=0: Horztal average calc truncation(default)
            // [2]=0: Horztal truncation downsampling(default)
            // [1:0]: Horztal down sampling rate
            // [1:0]=01: Horztal down sampling by 2->QVGA
            //x"73F2", -- SCALING_PCLK_DIV (divided by 4)
      8'h9C: reg_rgb444 = 16'h73F1;
            // SCALING_PCLK_DIV (divided by 8)
            // [7:4]=F: Reserved, and manual says default is 0
            //          but Implementation Guide says F
            // [3]=0: Enable clk divider for DSP scale control
            // [2:0]=001: Divided by 2 -> QVGA  
      8'h9D: reg_rgb444 = 16'hA202;
            // SCALING_PCLK_DELAY (default)
            // [7]: Reserved
            // [6:0]=02: Default scaling ouput delay
      8'h9E: reg_rgb444 = 16'hFFFF;
            // FINISH CONDITION
      8'h9F: reg_rgb444 = 16'hFFFF;
            // FINISH CONDITION
      default: reg_rgb444 = 16'hFFFF;
    endcase
  end





  always @ (*) begin
    // *IG means Implementation guide
    case (cnt_reg)
      6'h00:
        reg_yuv422_test = 16'h1280;
               // 12: COM7 Common Control 7
               // [7]=1: Reset all registers to default values
      6'h01:
        reg_yuv422_test = 16'h1280;
               // 12: COM7 Common Control 7
               // [7]=1: Reset all registers to default values
      6'h02:
        reg_yuv422_test = 16'h1200;
               // 12: COM7 Common Control 7
               // [2,0]= 00 : Output format YUV 
      6'h03:
        reg_yuv422_test = 16'h0901; 
               // 09:COM2 Common Control 2. Default: 01 
               // [7:5] : Reserved
               // [4]   : Soft sleep mode
               // [3:2] : Reserved
               // [1:0] : output drive capability, to increase IOL/OH drive
               //   00: 1x : works best
               //   01: 2x
               //   10: 3x
               //   11: 4x
      6'h04:
        reg_yuv422_test = 16'h40C0;
               // 40: COM15 Full 0-255 output, RGB 444
               // [7:6] = 11 : Full output range
               // [5:4] = x0 : Normal RGB output and YUV
               // [5:4] = 11: RGB 55 only if RGB444 is low
               // [3:0] = 0:  Reserved 
      6'h05:
        reg_yuv422_test = 16'h8C00;
               // 8C: RGB444
               // [7:2]=0: Reserved
               // [1]=1: Enable RGB444
               // [0]=0: word format: xR GB
      6'h06:
        reg_yuv422_test = 16'h1180;
               // 11: CLKRC Internal Clock
               // [7]=1: Reserved  **IG says 0, but 1 seems stable
               // [6]=0: Use pre-scale
               // [5:0]: Interal clock pre-scalar
               //    F(internal clk) = F(input clk)/([5:0]+1)
               // [5:0]= 0: No prescale (internal clk)

      6'h07:
        //reg_yuv422_test = 16'h0F43; // 0F: COM6 Common Control 6
        reg_yuv422_test = 16'h0F4B;  //** check 0F4B
               // 0F: COM6 Common Control 6
               // [7]=0: Disable HREF at optical blank
               // [1]=1: Resets timming when format changes
               // others reserved
               // [3] = 1 (reserved) hamster

      // check
      6'h08:
        reg_yuv422_test = 16'h1E37;
             // MVFP Mirror/flip enable. Default 00
             // [7:6]= 00 : reserved
             // [5]= 1 : Mirror image
             // [4]= 1 : Flip image
             // [3] : Reserved
             // [2] : Black Sun Enable
             // [1:0] : Reserved

      // check

      // check
      6'h09:
        reg_yuv422_test = 16'h3DC0; // COM13: default 88
              // [7]=1 : Gamma enable (defaul)
              // [6]=1 : UV Saturation Level - UV autoadjustment
              // [5:1]: Reserved
              // [0]: UV swap

      // ---------

      6'h0A:
        reg_yuv422_test = 16'h1520; // 15: COM10 Common Control 10
                             // [7]=0: Reserved
                             // [6]=0: Use HREF not HSYNC
                             // [5]=1: PCLK doesnt toggle during horizontl blank
                             // others default
      6'h0B:
        reg_yuv422_test = 16'h1711; // HSTART HREF start high 8-bit.
              // The first pixels flicker
              // 1700; // HSTART HREF start high 8-bit.
              // For windowing. Dont want to do
      6'h0C:
        reg_yuv422_test = 16'h1800; // HSTOP HREF end high 8-bit.
             // For windowing. Dont want to do
      6'h0D:
        reg_yuv422_test = 16'h1900; // VSTRT VREF start high 8-bit.
             // For windowing. Dont want to do
      6'h0E:
        reg_yuv422_test = 16'h1A00; // VSTOP VREF end high 8-bit.
             // For windowing. Dont want to do
      6'h0F:
        reg_yuv422_test = 16'h3200; // HREF Control
             // [7:6] : HREF edge offset to data ouput
             // [5:3] : HREF end LSB (high 8MSB at HSTOP)
             // [2:0] : HREF start LSB (high 8MSB at HSTART

      6'h10:
        reg_yuv422_test = 16'h3A04; // TLSB: Line buffer test option
             // (default 0C)
             // [7:6] : reserved
             // [5]   : negative image enable
             // [5]=0 : Normal image 
             // [4]=0 : Use normal UV output
             // [3]   : Output sequence with COM13[1]
             //      TSLB[3], COM13[1]:
             //    00: Y U Y V
             //    01: Y U Y V
             //    10: U Y V Y
             //    11: V Y U Y
             // [2:1] : Reserved




      // -- QVGA 320x240
      6'h11:
        reg_yuv422_test = 16'h0C04; // 0C: COM3 Common Control 3
                             // [3]=1: Enable scale (for QQVGA/2)
                             // [2]=0: Disable DCW
                             // others default
      6'h12:
        reg_yuv422_test = 16'h3E19; // 3E: COM14 Common Control 14
                             //    Scaling can be adjusted manually
                             // [7:5]: Reserved
                             // [4]=1: Scaling PCLK and DCW enabled
                             //        Controlled by [2:0] and SCALING_PCLK_DIV
                             // [3]=1: Manual scaling enabled for predefined
                             //        modes such QVGA
                             // [2:0] PCLK divided when COM14[4]=1
                             // [2:0]=001: Divided by 2-> QVGA: 320x240
      6'h13:
        reg_yuv422_test = 16'h703A; // 70: SCALING_XSC
                             // [7]: test_pattern[0], works with test_pattern[1]
                             //  00: No test output                            
                             //  01: Shifting "1"
                             //  10: 8-bar color bar
                             //  11: Fade to gray color bar
                             // [7]= 0 -> 8-bar color bar (test_pattern[1]=1)
                             // [6:0]: default horizontal scale factor
      6'h14:
        reg_yuv422_test = 16'h71B5; // 71: SCALING_YSC
                             // [7]: test_pattern[1], works with test_pattern[0]
                             //  00: No test output                            
                             //  01: Shifting "1"
                             //  10: 8-bar color bar
                             //  11: Fade to gray color bar
                             // [7]= 1 -> 8-bar color bar (test_pattern[0]=0)
                             // [6:0]: default vertical scale factor
      6'h15:
        reg_yuv422_test = 16'h7211; // 72: SCALING_DCWCTR DCW Control
                             // [7]=0: Vertical average calc truncation(default)
                             // [6]=0: Vertical truncation downsampling(default)
                             // [5:4]: Vertical down sampling rate
                             // [5:4]=01: Vertical down sampling by 2->QVGA
                             // [3]=0: Horztal average calc truncation(default)
                             // [2]=0: Horztal truncation downsampling(default)
                             // [1:0]: Horztal down sampling rate
                             // [1:0]=01: Horztal down sampling by 2->QVGA
      6'h16:
        reg_yuv422_test = 16'h73F1; // 73: SCALING_PCLK_DIV
                             // [7:4]=F: Reserved, and manual says default is 0
                             //          but IG says F
                             // [3]=0: Enable clk divider for DSP scale control
                             // [2:0]=001: Divided by 2 -> QVGA
      6'h17:
        reg_yuv422_test = 16'hA202; // A2: SCALING_PCLK_DELAY Pixel Clock Delay
                             // [7]: Reserved
                             // [6:0]=02: Default scaling ouput delay
      //  end QQVGA
      6'h18:
        reg_yuv422_test = 16'hFFFF;  // FINISH CONDITION, register FF doesnt exist
      default:
        reg_yuv422_test = 16'hFFFF;  // FINISH CONDITION
    endcase
  end





  always @ (*) begin
    // *IG means Implementation guide
    case (cnt_reg)
      6'h00:
        reg_yuv422 = 16'h1280;
               // 12: COM7 Common Control 7
               // [7]=1: Reset all registers to default values
      6'h01:
        reg_yuv422 = 16'h1280;
               // 12: COM7 Common Control 7
               // [7]=1: Reset all registers to default values
      6'h02:
        reg_yuv422 = 16'h1200;
               // 12: COM7 Common Control 7
               // [2,0]= 00 : Output format YUV 
      6'h03:
        reg_yuv422 = 16'h0901; 
               // 09:COM2 Common Control 2. Default: 01 
               // [7:5] : Reserved
               // [4]   : Soft sleep mode
               // [3:2] : Reserved
               // [1:0] : output drive capability, to increase IOL/OH drive
               //   00: 1x
               //   01: 2x
               //   10: 3x
               //   11: 4x
      6'h04:
        reg_yuv422 = 16'h40C0;
               // 40: COM15 Full 0-255 output, RGB 444
               // [7:6] = 11 : Full output range
               // [5:4] = x0 : Normal RGB output and YUV
               // [5:4] = 11: RGB 55 only if RGB444 is low
               // [3:0] = 0:  Reserved 
      6'h05:
        reg_yuv422 = 16'h8C00;
               // 8C: RGB444
               // [7:2]=0: Reserved
               // [1]=1: Enable RGB444
               // [0]=0: word format: xR GB
      6'h06:
        reg_yuv422 = 16'h1180;
               // 11: CLKRC Internal Clock
               // [7]=1: Reserved  **IG says 0, but 1 seems stable
               // [6]=0: Use pre-scale
               // [5:0]: Interal clock pre-scalar
               //    F(internal clk) = F(input clk)/([5:0]+1)
               // [5:0]= 0: No prescale (internal clk)

      6'h07:
        //reg_yuv422 = 16'h0F43; // 0F: COM6 Common Control 6
        reg_yuv422 = 16'h0F4B;  //** check 0F4B
               // 0F: COM6 Common Control 6
               // [7]=0: Disable HREF at optical blank
               // [1]=1: Resets timming when format changes
               // others reserved
               // [3] = 1 (reserved) hamster

      6'h08:
        reg_yuv422 = 16'h1E37;
             // MVFP Mirror/flip enable. Default 00
             // [7:6]= 00 : reserved
             // [5]= 1 : Mirror image
             // [4]= 1 : Flip image
             // [3] : Reserved
             // [2] : Black Sun Enable
             // [1:0] : Reserved

      6'h09:
        reg_yuv422 = 16'h3DC0; // COM13: default 88
              // [7]=1 : Gamma enable (defaul)
              // [6]=1 : UV Saturation Level - UV autoadjustment
              // [5:1]: Reserved
              // [0]: UV swap


      // ---------

      6'h0A:
        reg_yuv422 = 16'h1520; // 15: COM10 Common Control 10
                             // [7]=0: Reserved
                             // [6]=0: Use HREF not HSYNC
                             // [5]=1: PCLK doesnt toggle during horizontl blank
                             // others default
      6'h0B:
        reg_yuv422 = 16'h1711; // HSTART HREF start high 8-bit.
              // The first pixels flicker
              // 1700; // HSTART HREF start high 8-bit.
              // For windowing. Dont want to do
      6'h0C:
        reg_yuv422 = 16'h1800; // HSTOP HREF end high 8-bit.
             // For windowing. Dont want to do
      6'h0D:
        reg_yuv422 = 16'h1900; // VSTRT VREF start high 8-bit.
             // For windowing. Dont want to do
      6'h0E:
        reg_yuv422 = 16'h1A00; // VSTOP VREF end high 8-bit.
             // For windowing. Dont want to do
      6'h0F:
        reg_yuv422 = 16'h3200; // HREF Control
             // [7:6] : HREF edge offset to data ouput
             // [5:3] : HREF end LSB (high 8MSB at HSTOP)
             // [2:0] : HREF start LSB (high 8MSB at HSTART

      6'h10:
        reg_yuv422 = 16'h3A04; // TLSB: Line buffer test option
             // (default 0C)
             // [7:6] : reserved
             // [5]   : negative image enable
             // [5]=0 : Normal image 
             // [4]=0 : Use normal UV output
             // [3]   : Output sequence with COM13[1]
             //      TSLB[3], COM13[1]:
             //    00: Y U Y V
             //    01: Y U Y V
             //    10: U Y V Y
             //    11: V Y U Y
             // [2:1] : Reserved




      // -- QVGA
      6'h11:
        reg_yuv422 = 16'h0C04; // 0C: COM3 Common Control 3
                             // [3]=1: Enable scale (for QQVGA/2)
                             // [2]=0: Disable DCW
                             // others default
      6'h12:
        reg_yuv422 = 16'h3E19; // 3E: COM14 Common Control 14
                             //    Scaling can be adjusted manually
                             // [7:5]: Reserved
                             // [4]=1: Scaling PCLK and DCW enabled
                             //        Controlled by [2:0] and SCALING_PCLK_DIV
                             // [3]=1: Manual scaling enabled for predefined
                             //        modes such QVGA
                             // [2:0] PCLK divided when COM14[4]=1
                             // [2:0]=001: Divided by 2-> QVGA: 320x240
      6'h13:
        reg_yuv422 = 16'h703A; // 70: SCALING_XSC
                             // [7]: test_pattern[0], works with test_pattern[1]
                             //  00: No test output <-
                             //  01: Shifting "1"
                             //  10: 8-bar color bar
                             //  11: Fade to gray color bar
                             // [7]= 0 -> 8-bar color bar (test_pattern[1]=1)
                             // [6:0]: default horizontal scale factor
      6'h14:
        reg_yuv422 = 16'h7135; // 71: SCALING_YSC
                             // [7]: test_pattern[1], works with test_pattern[0]
                             //  00: No test output  <-
                             //  01: Shifting "1"
                             //  10: 8-bar color bar
                             //  11: Fade to gray color bar
                             // [7]= 1 -> 8-bar color bar (test_pattern[0]=0)
                             // [6:0]: default vertical scale factor
      6'h15:
        reg_yuv422 = 16'h7211; // 72: SCALING_DCWCTR DCW Control
                             // [7]=0: Vertical average calc truncation(default)
                             // [6]=0: Vertical truncation downsampling(default)
                             // [5:4]: Vertical down sampling rate
                             // [5:4]=01: Vertical down sampling by 2->QVGA
                             // [3]=0: Horztal average calc truncation(default)
                             // [2]=0: Horztal truncation downsampling(default)
                             // [1:0]: Horztal down sampling rate
                             // [1:0]=01: Horztal down sampling by 2->QVGA
      6'h16:
        reg_yuv422 = 16'h73F1; // 73: SCALING_PCLK_DIV
                             // [7:4]=F: Reserved, and manual says default is 0
                             //          but IG says F
                             // [3]=0: Enable clk divider for DSP scale control
                             // [2:0]=001: Divided by 2 -> QVGA
      6'h17:
        reg_yuv422 = 16'hA202; // A2: SCALING_PCLK_DELAY Pixel Clock Delay
                             // [7]: Reserved
                             // [6:0]=02: Default scaling ouput delay
      //  end QQVGA
      6'h18:
        reg_yuv422 = 16'hFFFF;  // FINISH CONDITION, register FF doesnt exist
      default:
        reg_yuv422 = 16'hFFFF;  // FINISH CONDITION
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
      if (cnt_cam_clk == 3'b011)
        cnt_cam_clk <= 0;
      else
        cnt_cam_clk <= cnt_cam_clk + 1;
    end
  end

  // when cnt_cam_clk = 0 | 1 => '0', when 2 | 3 => '1'
  assign ov7670_clk = cnt_cam_clk[1];

  // camera reset and power down
  assign ov7670_pwdn  = 1'b0;

  //------ controlling the registers to be sent ------------

  assign id        = c_id_write; // 0x21
  assign addr_aux  = reg_i[15:8];
  assign addr      = addr_aux;
  assign data_wr   = reg_i[7:0];


  assign ov7670_rst_n   = cam_rst_n;
  assign done      = alltx_done;
  assign start_tx  = start_tx_aux;

  // sequentially counts the registers to be sent to the SCCB
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      cnt_reg <= 0;
    else begin
      if (resend || mode_change)
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
    if (rst) begin
      rgbmode_old <= 1'b1; //starts in RGB mode
      testmode_old <= 1'b0; //starts in normal mode
    end
    else begin
      rgbmode_old  <= rgbmode;
      testmode_old <= testmode;
    end
  end

  // ^: xor (different). So if any are different
  assign mode_change = (rgbmode ^ rgbmode_old) | (testmode ^ testmode_old);

  // without clk -> Distributed CLBS
  // reg_i <= registers(to_integer(unsigned(cnt_reg));
  // process with clk -> BRAM
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      reg_i <= 16'h1280; // reset
    else begin
      if (rgbmode) begin
        if (testmode)
          reg_i <= reg_rgb444_test;
        else
          reg_i <= reg_rgb444;
      end
      else begin
        if (testmode)
          reg_i <= reg_yuv422_test;
        else
          reg_i <= reg_yuv422;
      end
    end
  end


  // FSM sequential process
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      pr_ctrl_st <= RSTCAM_ST;
    else
      pr_ctrl_st <= nx_ctrl_st;
  end

  // FSM combinatorial process
  always @ (pr_ctrl_st or alltx_done or sccb_ready or end300ms)
  begin
    // default values
    nx_ctrl_st <= pr_ctrl_st;
    start_tx_aux <= 1'b0;
    cam_rst_n <= 1'b1; //camera reset inactive
    ena_cnt300ms <= 1'b0;
    case  (pr_ctrl_st)
      RSTCAM_ST: begin // Reset camera during 300ms
        cam_rst_n <= 1'b0; //activate reset
        ena_cnt300ms <= 1'b1;
        if (end300ms) begin
          nx_ctrl_st <= WAIT_RSTCAM_ST;
        end
      end
      WAIT_RSTCAM_ST: begin // wait 300ms for the camera to be ready to receive
        ena_cnt300ms <= 1'b1;
        if (end300ms) begin
          nx_ctrl_st <= WAIT_ST;
        end
      end
      WAIT_ST: begin // waiting for the SCCB to be available
        if (alltx_done)
          nx_ctrl_st <= DONE_ST;
        else if (sccb_ready) begin
          nx_ctrl_st <= WRITE_REG_ST;
          start_tx_aux <= 1'b1;
        end
      end
      WRITE_REG_ST: begin // writting a new register (maybe not necessary)
        ena_cnt300ms <= 1'b1;
        if (end300ms) begin
          nx_ctrl_st <= WAIT_ST;
        end
      end
      DONE_ST: // writting a new register
        if (~alltx_done) // in case of resend = '1'
          nx_ctrl_st <= RSTCAM_ST;
    endcase
  end


  // counting 300 ms at 100MHz clk: 30 million. 25 bits
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      cnt300ms <= 25'd0;
    else begin
      if (ena_cnt300ms) begin
        if (end300ms) 
            cnt300ms <= 25'd0;
        else
            cnt300ms <= cnt300ms + 1;
      end
      else
        cnt300ms <= 25'd0;
    end
  end 

  assign end300ms =  (cnt300ms == c_end300ms) ? 1'b1 : 1'b0;




endmodule
