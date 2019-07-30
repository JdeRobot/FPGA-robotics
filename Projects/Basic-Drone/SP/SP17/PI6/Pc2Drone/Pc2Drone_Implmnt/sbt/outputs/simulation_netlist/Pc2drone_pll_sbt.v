// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     May 18 2019 11:55:24

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "Pc2drone_pll" view "INTERFACE"

module Pc2drone_pll (
    RESET,
    REFERENCECLK,
    PLLOUTGLOBAL,
    PLLOUTCORE);

    input RESET;
    input REFERENCECLK;
    output PLLOUTGLOBAL;
    output PLLOUTCORE;

    wire N__178;
    wire N__177;
    wire N__176;
    wire N__169;
    wire N__168;
    wire N__167;
    wire N__160;
    wire N__159;
    wire N__158;
    wire N__151;
    wire N__150;
    wire N__149;
    wire N__132;
    wire N__129;
    wire N__126;
    wire N__123;
    wire N__120;
    wire N__117;
    wire N__114;
    wire N__111;
    wire N__108;
    wire N__105;
    wire N__102;
    wire N__99;
    wire N__96;
    wire N__93;
    wire N__90;
    wire N__87;
    wire RESET_c;
    wire REFERENCECLK_c;
    wire PLLOUTCORE_c;
    wire VCCG0;
    wire GNDG0;
    wire PLLOUTGLOBAL_c;
    wire GB_BUFFER_PLLOUTGLOBAL_c_THRU_CO;
    wire _gnd_net_;

    defparam Pc2drone_pll_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK="FIXED";
    defparam Pc2drone_pll_inst.TEST_MODE=1'b0;
    defparam Pc2drone_pll_inst.SHIFTREG_DIV_MODE=2'b00;
    defparam Pc2drone_pll_inst.PLLOUT_SELECT="GENCLK";
    defparam Pc2drone_pll_inst.FILTER_RANGE=3'b001;
    defparam Pc2drone_pll_inst.FEEDBACK_PATH="SIMPLE";
    defparam Pc2drone_pll_inst.FDA_RELATIVE=4'b0000;
    defparam Pc2drone_pll_inst.FDA_FEEDBACK=4'b0000;
    defparam Pc2drone_pll_inst.ENABLE_ICEGATE=1'b0;
    defparam Pc2drone_pll_inst.DIVR=4'b0000;
    defparam Pc2drone_pll_inst.DIVQ=3'b110;
    defparam Pc2drone_pll_inst.DIVF=7'b0111111;
    defparam Pc2drone_pll_inst.DELAY_ADJUSTMENT_MODE_RELATIVE="FIXED";
    SB_PLL40_CORE Pc2drone_pll_inst (
            .EXTFEEDBACK(),
            .LATCHINPUTVALUE(),
            .SCLK(),
            .SDO(),
            .LOCK(),
            .PLLOUTCORE(PLLOUTCORE_c),
            .REFERENCECLK(N__123),
            .RESETB(N__132),
            .BYPASS(GNDG0),
            .SDI(),
            .DYNAMICDELAY({GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0}),
            .PLLOUTGLOBAL(PLLOUTGLOBAL_c));
    IO_PAD PLLOUTGLOBAL_obuf_iopad (
            .OE(N__178),
            .DIN(N__177),
            .DOUT(N__176),
            .PACKAGEPIN(PLLOUTGLOBAL));
    defparam PLLOUTGLOBAL_obuf_preio.NEG_TRIGGER=1'b0;
    defparam PLLOUTGLOBAL_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO PLLOUTGLOBAL_obuf_preio (
            .PADOEN(N__178),
            .PADOUT(N__177),
            .PADIN(N__176),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__90),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD PLLOUTCORE_obuf_iopad (
            .OE(N__169),
            .DIN(N__168),
            .DOUT(N__167),
            .PACKAGEPIN(PLLOUTCORE));
    defparam PLLOUTCORE_obuf_preio.NEG_TRIGGER=1'b0;
    defparam PLLOUTCORE_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO PLLOUTCORE_obuf_preio (
            .PADOEN(N__169),
            .PADOUT(N__168),
            .PADIN(N__167),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__114),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD REFERENCECLK_ibuf_iopad (
            .OE(N__160),
            .DIN(N__159),
            .DOUT(N__158),
            .PACKAGEPIN(REFERENCECLK));
    defparam REFERENCECLK_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam REFERENCECLK_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO REFERENCECLK_ibuf_preio (
            .PADOEN(N__160),
            .PADOUT(N__159),
            .PADIN(N__158),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(REFERENCECLK_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD RESET_ibuf_iopad (
            .OE(N__151),
            .DIN(N__150),
            .DOUT(N__149),
            .PACKAGEPIN(RESET));
    defparam RESET_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam RESET_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO RESET_ibuf_preio (
            .PADOEN(N__151),
            .PADOUT(N__150),
            .PADIN(N__149),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(RESET_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IoInMux I__24 (
            .O(N__132),
            .I(N__129));
    LocalMux I__23 (
            .O(N__129),
            .I(N__126));
    Odrv4 I__22 (
            .O(N__126),
            .I(RESET_c));
    IoInMux I__21 (
            .O(N__123),
            .I(N__120));
    LocalMux I__20 (
            .O(N__120),
            .I(N__117));
    Odrv4 I__19 (
            .O(N__117),
            .I(REFERENCECLK_c));
    IoInMux I__18 (
            .O(N__114),
            .I(N__111));
    LocalMux I__17 (
            .O(N__111),
            .I(N__108));
    IoSpan4Mux I__16 (
            .O(N__108),
            .I(N__105));
    Odrv4 I__15 (
            .O(N__105),
            .I(PLLOUTCORE_c));
    InMux I__14 (
            .O(N__102),
            .I(N__99));
    LocalMux I__13 (
            .O(N__99),
            .I(N__96));
    Glb2LocalMux I__12 (
            .O(N__96),
            .I(N__93));
    GlobalMux I__11 (
            .O(N__93),
            .I(PLLOUTGLOBAL_c));
    IoInMux I__10 (
            .O(N__90),
            .I(N__87));
    LocalMux I__9 (
            .O(N__87),
            .I(GB_BUFFER_PLLOUTGLOBAL_c_THRU_CO));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam GB_BUFFER_PLLOUTGLOBAL_c_THRU_LUT4_0_LC_9_30_0.C_ON=1'b0;
    defparam GB_BUFFER_PLLOUTGLOBAL_c_THRU_LUT4_0_LC_9_30_0.SEQ_MODE=4'b0000;
    defparam GB_BUFFER_PLLOUTGLOBAL_c_THRU_LUT4_0_LC_9_30_0.LUT_INIT=16'b1111111100000000;
    LogicCell40 GB_BUFFER_PLLOUTGLOBAL_c_THRU_LUT4_0_LC_9_30_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__102),
            .lcout(GB_BUFFER_PLLOUTGLOBAL_c_THRU_CO),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // Pc2drone_pll
