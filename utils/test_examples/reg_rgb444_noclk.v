//---- Felipe Machado -------------------------------
//---- Area de Tecnologia Electronica ---------------
//---- Universidad Rey Juan Carlos ------------------
//---- https://github.com/felipe-m ------------------
//---------------------------------------------------
//---- Autcmatically generated verilog ROM blockfrom a VHDL file----
//  Original VHDL file name: ov7670_ctrl_reg.vhd
//  Constant VHDL name: reg_rgb444
//  Memory with blocking assignments (=)

//--- Ports ---------------------------------------------
// Inputs   ---------------------------------------------
//   // clk  :  clock signal
//    addr :  memory address
// Outputs  ---------------------------------------------
//    dout :  memory data out  (no clock: in the same clock cycle)




module ov7670_ctrl_reg
  (
     //input     clk,   // clock
     input      [6-1:0] cnt_reg,  //59 memory positions
     output reg  [16-1:0] reg_rgb444  // memory data width
  );


//  Memory without clock

  always @(*)
  begin
    case(cnt_reg)
      6'h0: reg_rgb444 = 16'h1280;
            // 12:COM7
            // [7]=1: Reset all registers to default values
      6'h1: reg_rgb444 = 16'h1204;
            // 12:COM7
            // [2,0]="10": Output format RGB 
      6'h2: reg_rgb444 = 16'h0901;
            // 09:COM2 Common Control 2. Default: 01
            // [7:5] : Reserved
            // [4]   : Soft sleep mode
            // [3:2] : Reserved
            // [1:0] : output drive capability, to increase IOL/OH drive
            //   00: 1x
            //   01: 2x
            //   10: 3x
            //   11: 4x
      6'h3: reg_rgb444 = 16'h40F0;
            // 40:COM15  Full 0-255 output, RGB 444
            // [7:6] = 11: Full output range. 12 (C)
            // [5:4] = x0: Normal RGB output (not we want) Seems: GRB422
            // [5:4] = 11: RGB555 only if RGB444 is low, we want RGB444
            // [3:0] = 0:  Reserved
      6'h4: reg_rgb444 = 16'h8C02;
            // RGB444 Set RGB format: RGB444
            // [1]= 1: RGB444 enable
            // [0]= 0: word format: xR GB (chosen)
            // [0]= 1: word format: RG Bx
      6'h5: reg_rgb444 = 16'h1180;
            // CLKRC  6->0 External clock, pre-scale 
            //        [7]: 1 (reserved)
            //        [5:0]: Interal clock pre-scalar
            //           F(internal clk) = F(input clk)/([5:0]+1)
            //        [5:0]= 0: No prescale (internal clk)
            //x"0F43", -- COM6  
      6'h6: reg_rgb444 = 16'h0F4B;
            // COM6  (hamster)
            // [7] = 0 Disable HREF at optical black
            // [1] = 1 Resets timming when format changes
            // others reserved
            // [3] = 1 (reserved) hamster
      6'h7: reg_rgb444 = 16'h1E37;
            // MVFP Mirror/flip enable. Default 00
            // [7:6]= 00 : reserved
            // [5]= 1 : Mirror image
            // [4]= 1 : Flip image
            // [3] : Reserved
            // [2] : Black Sun Enable
            // [1:0] : Reserved
            // color from hamster
      6'h8: reg_rgb444 = 16'h1438;
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
      6'h9: reg_rgb444 = 16'h4FB3;
            // MTX1  - colour conversion matrix
      6'hA: reg_rgb444 = 16'h50B3;
            // MTX2  - colour conversion matrix
      6'hB: reg_rgb444 = 16'h5100;
            // MTX3  - colour conversion matrix
      6'hC: reg_rgb444 = 16'h523D;
            // MTX4  - colour conversion matrix
      6'hD: reg_rgb444 = 16'h53A7;
            // MTX5  - colour conversion matrix
      6'hE: reg_rgb444 = 16'h54E4;
            // MTX6  - colour conversion matrix
      6'hF: reg_rgb444 = 16'h589E;
            // MTXS  - Matrix sign and auto contrast
      6'h10: reg_rgb444 = 16'h3DC0;
            // COM13: default 88
            // [7]=1 : Gamma enable (defaul)
            // [6]=1 : UV Saturation Level - UV autoadjustment
            // [5:1]: Reserved
            // [0]: UV swap
            // Trial and error
      6'h11: reg_rgb444 = 16'hB084;
            // recommended TFG (reserved)
            // hamster
      6'h12: reg_rgb444 = 16'h0E61;
            // COM5 reserved: default 01
      6'h13: reg_rgb444 = 16'h1602;
            // reserved
      6'h14: reg_rgb444 = 16'h2102;
            // ADCCTR0 (reserved): default 02 
      6'h15: reg_rgb444 = 16'h2291;
            // ADCCTR1 (reserved): default 01 
      6'h16: reg_rgb444 = 16'h2907;
            // RSVD (reserved): default XX 
      6'h17: reg_rgb444 = 16'h330B;
            // CHLF Array Current Control (reserved): default 08 
      6'h18: reg_rgb444 = 16'h330B;
            // CHLF Array Current Control (reserved): default 08 
      6'h19: reg_rgb444 = 16'h350B;
            // RSVD (reserved): default XX
      6'h1A: reg_rgb444 = 16'h371D;
            // ADC (reserved): default 3F
      6'h1B: reg_rgb444 = 16'h3871;
            // ACOM (reserved): default 01. ADC and Analog Common Mode Control
      6'h1C: reg_rgb444 = 16'h392A;
            // OFON (reserved): default 00. ADC Offset Control 
      6'h1D: reg_rgb444 = 16'h3C78;
            // COM12 (default 69)
            // [7]= 0: No HREF when VSYNC is low
            // [6:0]: Reserved
      6'h1E: reg_rgb444 = 16'h4D40;
            // RSVD (reserved): default XX
      6'h1F: reg_rgb444 = 16'h4E20;
            // RSVD (reserved): default XX
      6'h20: reg_rgb444 = 16'h7410;
            // REG74 default 00
            // [4]=1 : Digital Gain control by REG74[1:0]
            // [1:0]=00: Bypass
      6'h21: reg_rgb444 = 16'h8D4F;
            // RSVD (reserved): default XX
      6'h22: reg_rgb444 = 16'h8E00;
            // RSVD (reserved): default XX
      6'h23: reg_rgb444 = 16'h8F00;
            // RSVD (reserved): default XX
      6'h24: reg_rgb444 = 16'h9000;
            // RSVD (reserved): default XX
      6'h25: reg_rgb444 = 16'h9100;
            // RSVD (reserved): default XX
      6'h26: reg_rgb444 = 16'h9600;
            // RSVD (reserved): default XX
      6'h27: reg_rgb444 = 16'h9A00;
            // RSVD (reserved): default XX
      6'h28: reg_rgb444 = 16'hB10C;
            // ABLC1: default 00. Automatic Black Level Calibration
            // [3]=1 : Reserved (hamster=1)
            // [2]=1 : Enable ABLC
      6'h29: reg_rgb444 = 16'hB20E;
            // RSVD (reserved): default XX
      6'h2A: reg_rgb444 = 16'hB382;
            // THL_ST: ABLC Target: default 80
            // Lower limit of black leve +0x80
      6'h2B: reg_rgb444 = 16'hB80A;
            // RSVD (reserved): default XX
            //----
            //x"1500", -- COM10 Use HREF not hSYNC
      6'h2C: reg_rgb444 = 16'h1520;
            // COM10 Use HREF not hSYNC
            // [6]=0: Use HREF not HSYNC
            // [5]=1 pclk does not toggle during horizontal blank
            // others default
            //x"1700", -- HSTART HREF start high 8-bit. For windowing. Dont want to do
      6'h2D: reg_rgb444 = 16'h1711;
            // HSTART HREF start high 8-bit. The first pixels flicker
      6'h2E: reg_rgb444 = 16'h1800;
            // HSTOP HREF end high 8-bit. For windowing. Dont want to do
      6'h2F: reg_rgb444 = 16'h1900;
            // VSTRT VREF start high 8-bit. For windowing. Dont want to do
      6'h30: reg_rgb444 = 16'h1A00;
            // VSTOP VREF end high 8-bit. For windowing. Dont want to do
      6'h31: reg_rgb444 = 16'h3200;
            // HREF Control
            // [7:6] : HREF edge offset to data ouput
            // [5:3] : HREF end LSB (high 8MSB at HSTOP)
            // [2:0] : HREF start LSB (high 8MSB at HSTART)
            //QVGA
      6'h32: reg_rgb444 = 16'h0C04;
            // COM3
            // [3]=1 scale enable (for QQVGA/2)
            // [2]=0 DCW disable
      6'h33: reg_rgb444 = 16'h3E19;
            // COM14
            // [4]=1 : Scaling PCLK enable (also DCW)
            // [3]=1 : Manual scaling enable (QVGA)
            // [2:0] PCLK divided when COM14[4]=1
            // [2:0]-> 001: pclk divided by 2 -> QVGA: 320x480 
      6'h34: reg_rgb444 = 16'h703A;
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
      6'h35: reg_rgb444 = 16'h7135;
            // SCALING_YSC (default)
            // [7]: test_pattern[1], works with test_pattern[0]
            //  00: No test output <-                         
            //  01: Shifting "1"
            //  10: 8-bar color bar
            //  11: Fade to gray color bar
            // [7]: 0 -> No test pattern (test_pattern[0]=0)
            // [6:0]: default vertical scale factor
            //x"7222", -- SCALING_DCWCTR (down sampling by 4)
      6'h36: reg_rgb444 = 16'h7211;
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
      6'h37: reg_rgb444 = 16'h73F1;
            // SCALING_PCLK_DIV (divided by 8)
            // [7:4]=F: Reserved, and manual says default is 0
            //          but Implementation Guide says F
            // [3]=0: Enable clk divider for DSP scale control
            // [2:0]=001: Divided by 2 -> QVGA  
      6'h38: reg_rgb444 = 16'hA202;
            // SCALING_PCLK_DELAY (default)
            // [7]: Reserved
            // [6:0]=02: Default scaling ouput delay
      6'h39: reg_rgb444 = 16'hFFFF;
            // FINISH CONDITION
      6'h3A: reg_rgb444 = 16'hFFFF;
            // FINISH CONDITION
      default: reg_rgb444 = 16'hFFFF;
    endcase
  end

endmodule
