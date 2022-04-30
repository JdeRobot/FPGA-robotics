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

  reg [15:0] reg_00, reg_01, reg_10, reg_11;

  // msb 8 bits are the address (15 downto 8)
  // lsb 8 bits are the register value to be written
  // cuenta 3(2)

  always @ (cnt_reg) begin
    case (cnt_reg)
      6'h00:
        reg_00 <= 16'h1280; // COM7   Reset
      6'h01:
        reg_00 <= 16'h1280;

      //  QQVGA
      6'h02:
        reg_00 <= 16'h1181;
      6'h03:
        reg_00 <= 16'h1204;
      6'h04:
        reg_00 <= 16'h0C04; // [2]=1 -> DCW enable
      6'h05:
        reg_00 <= 16'h3E1B; //COM14 Scaling can be adjusted manually
                            // pclk divided by 8
      6'h06:
        reg_00 <= 16'h703A; //SCALING_XSC (default)
      6'h07:
                             // [7] = 1: test partern color bar
        reg_00 <= 16'h71B5; //SCALING_YSC (default)
      6'h08:
        reg_00 <= 16'h7233; //SCALING_DCWCTR (down sampling by 8
      6'h09:
        reg_00 <= 16'h73F3; //SCALING_PCLK_DIV (divided by 8)
      6'h0A:
        reg_00 <= 16'hA202; //SCALING_PCLK_DELAY (default)
      //  end QQVGA
      6'h0B:  // to continue with QQVGA
        reg_00 <= 16'hA202;
      6'h0C:
        reg_00 <= 16'hA202;
      6'h0D:
        reg_00 <= 16'hA202;
      6'h0E:
        reg_00 <= 16'hA202;
      6'h0F:
        reg_00 <= 16'hA202;
      6'h10:
        reg_00 <= 16'hA202;
      6'h11:
        reg_00 <= 16'hA202;
      6'h12:
        reg_00 <= 16'hA202;
      6'h13:
        reg_00 <= 16'hA202;
      6'h14:
        reg_00 <= 16'hA202;
      6'h15:
        reg_00 <= 16'hA202;
      // end QQVGA filling


      6'h16:
        reg_00 <= 16'h40F0;
      6'h17:
        reg_00 <= 16'h0F43;
      6'h18:
        reg_00 <= 16'h8C02;
      6'h19:
        reg_00 <= 16'h1520;
      6'h1A:
        reg_00 <= 16'h0E61;
      6'h1B:
        reg_00 <= 16'h0F4B;
      6'h1C:
        reg_00 <= 16'h1602;
      6'h1D:
        reg_00 <= 16'hFFFF;
      default:
        reg_00 <= 16'h0A76;  // NOP: read only, product number
    endcase
  end


  always @ (cnt_reg) begin
    case (cnt_reg)
      6'h00:
        reg_01 <= 16'h1280; // COM7   Reset
      6'h01:
        reg_01 <= 16'h1181; // CLKRC  6->0 External clock, no pre-scale
             //           internal clock pre-scale /2
      6'h02:
        reg_01 <= 16'h1204; // COM7   2,0->(1,0) RGB 
             //        1->0 disable color bar
      6'h03:
        //reg_01 <= 16'h0C00, // COM3   3->0 scale disable
             //        2->0 DCW disable
        reg_01 <= 16'h0A76; // NOP
      6'h04:
        reg_01 <= 16'h0A76; // NOP
      6'h05:
        reg_01 <= 16'h40F0; // RGB 444 COM15  7,6->(1,1): full range enable
             //        5:4->(0,1): RGB565
             //        3:0-> Reserved
      6'h06:
        //reg_01 <= 16'h7080, // test
        reg_01 <= 16'h0A76; // NOP
      6'h07:
        //reg_01 <= 16'h7100, // test
        reg_01 <= 16'h0A76; // NOP
      6'h08:
        // SCALING_XSC  7->0 , (SCALING_YSC[7])-> (0,0): No test
        //        6:0-> 011 1010 (58) Horizontal scale factor (?)
        //reg_01 <= 16'h703A;
        reg_01 <= 16'h0A76; // NOP
      6'h09:
        // SCALING_YSC  7->0 , (SCALING_XSC[7])-> (0,0): No test
        //        6:0-> 011 1010 (53) Vertical scale factor (?)
        //reg_01 <= 16'h7135;
        reg_01 <= 16'h0A76; // NOP
      6'h0A:
        // reg_01 <= 16'h7211; // SCALING_DCWCTR
             //        7->0 Vertical truncation vertical average calculation
             //        5:4-> 01: Vertical down sample by 2     
             //        4->0 Horizontal truncation horizontal average calculation
             //        1:0-> 01: Vertical  down sample by 2     
        reg_01 <= 16'h0A76; // NOP
      6'h0B:
        //reg_01 <= 16'h73F0; // SCALING_PCLK_DIV
             //        7:4-> Reserved
             //        3->0 Enable clock divider
             //        2:0 -> clock divider control for DSP
             //               only valid when COM15[3]=1
        reg_01 <= 16'h0A76; // NOP
      6'h0C:
        //reg_01 <= 16'hA202; // SCALING_PCLK_DELAY
             //        6:0-> 2 Scaling output delay
        reg_01 <= 16'h0A76; // NOP

      //  QQVGA
      6'h0D:
        reg_01 <= 16'h1181;
      6'h0E:
        reg_01 <= 16'h1204;
      6'h0F:
        reg_01 <= 16'h0C04;
      6'h10:
                            // manua scaling enabled
        reg_01 <= 16'h3E1B; //COM14 Scaling can be adjusted manually
      6'h11:
        reg_01 <= 16'h703A; //SCALING_XSC (default)
      6'h12:
                            // B: test color bar
        reg_01 <= 16'h71B5; //SCALING_YSC (default)
      6'h13:
        reg_01 <= 16'h7233; //SCALING_DCWCTR (down sampling by 8
      6'h14:
        reg_01 <= 16'h73F3; //SCALING_PCLK_DIV (divided by 8)
      6'h15:
        reg_01 <= 16'hA202; //SCALING_PCLK_DELAY (default)
      //  end QQVGA



      6'h16:
        reg_01 <= 16'hFFFF; // FINISH CONDITION
      6'h17:
        reg_01 <= 16'hFFFF; // FINISH CONDITION
      default:
        reg_01 <= 16'h0A76;  // NOP: read only, product number
    endcase
  end

  // cuenta 1, mas cerca los pclk
  always @ (cnt_reg) begin
    case (cnt_reg)
      6'h00:
        reg_10 <= 16'h1280; // COM7   Reset
      6'h01:
        reg_10 <= 16'h1280; // COM7   Reset
      6'h02:
        reg_10 <= 16'h1181;
      6'h03:
        reg_10 <= 16'h1204;
      6'h04:
                            // [2]-> enable scaling
        reg_10 <= 16'h0C04; //COM3 Lots of stuff,enable scaling,all others off
      6'h05:
        //reg_10 <= 16'h3E00; // COM14  PCLK scaling off
        reg_10 <= 16'h3E1B; // COM14 qqvga/2
      6'h06:
        reg_10 <= 16'h40F0;
      6'h07:
        reg_10 <= 16'h0F43;
      6'h08:
        reg_10 <= 16'h8C02;
      6'h09:
        reg_10 <= 16'hA200;
      6'h0A:
        reg_10 <= 16'h1520;
      6'h0B:
        reg_10 <= 16'hB084;
      6'h0C:
        reg_10 <= 16'h1438; // COM9  - AGC Celling
      6'h0D:
        reg_10 <= 16'h4f40; //16'h4fb3; // MTX1  - colour conversion matrix
      6'h0E:
        reg_10 <= 16'h5034; //16'h50b3; // MTX2  - colour conversion matrix
      6'h0F:
        reg_10 <= 16'h510C; //16'h5100; // MTX3  - colour conversion matrix
      6'h10:
        reg_10 <= 16'h5217; //16'h523d; // MTX4  - colour conversion matrix
      6'h11:
        reg_10 <= 16'h5329; //16'h53a7; // MTX5  - colour conversion matrix
      6'h12:
        reg_10 <= 16'h5440; //16'h54e4; // MTX6  - colour conversion matrix
      6'h13:
        reg_10 <= 16'h581e; //16'h589e; // MTXS -Matrix sign and auto contrast
      6'h14:
        reg_10 <= 16'h3dc0; // COM13 - Turn on GAMMA and UV Auto adjust
      6'h15:
        reg_10 <= 16'h3A04;


     //  QQVGA
      6'h16:
        reg_10 <= 16'h1181;
      6'h17:
        reg_10 <= 16'h1204;
      6'h18:
        reg_10 <= 16'h0C04;
      6'h19:
                            // [3]=1: manual scaling enabled
        reg_10 <= 16'h3E1B; //COM14 Scaling can be adjusted manually
      6'h1A:
        reg_10 <= 16'h703A; //SCALING_XSC (default)
      6'h1B:
        //reg_10 <= 16'h7135; //SCALING_YSC (default)
        reg_10 <= 16'h71B5; //SCALING_YSC (default) 
                            // [7]=1 test color bar
      6'h1C:
        reg_10 <= 16'h7233; //SCALING_DCWCTR (down sampling by 8
      6'h1D:
        reg_10 <= 16'h73F3; //SCALING_PCLK_DIV (divided by 8)
      6'h1E:
        reg_10 <= 16'hA202; //SCALING_PCLK_DELAY (default)
      //  end QQVGA


      6'h1F:
        reg_10 <= 16'hFFFF; // FINISH CONDITION
      6'h20:
        reg_10 <= 16'hFFFF;  // FINISH CONDITION
      default:
        reg_10 <= 16'h0A76;  // NOP: read only, product number
    endcase
  end


  // cuenta 2-3 
  always @ (cnt_reg) begin
    case (cnt_reg)
      6'h00:
        reg_11 <= 16'h1280; // COM7   Reset
      6'h01:
        reg_11 <= 16'h1280; // COM7   Reset
      6'h02:
        reg_11 <= 16'h1280; // COM7   Reset
      6'h03:
        reg_11 <= 16'h1280; // COM7   Reset
      6'h04:
        reg_11 <= 16'h1280; // COM7   Reset
      6'h05:
        reg_11 <= 16'h1280; // COM7   Reset
      6'h06:
        reg_11 <= 16'h1204; //
      6'h07:
        reg_11 <= 16'h40F0;
      6'h08:
        reg_11 <= 16'h8C02;
      6'h09:
        reg_11 <= 16'h1181;
      6'h0A:
        reg_11 <= 16'h0F43;
      6'h0B:
        reg_11 <= 16'hB084;
      6'h0C:
        reg_11 <= 16'h1520;
      6'h0D:
        reg_11 <= 16'h0C04;
      6'h0E:
        reg_11 <= 16'h3E1B; //COM14 Scaling can be adjusted manually
      6'h0F:
        reg_11 <= 16'h703A; //SCALING_XSC (default)
      6'h10:
        reg_11 <= 16'h71B5; //SCALING_YSC : test color bar
      6'h11:
        reg_11 <= 16'h7233; //SCALING_DCWCTR (down sampling by 8
      6'h12:
        reg_11 <= 16'h73F3; //SCALING_PCLK_DIV (divided by 8)
      6'h13:
        reg_11 <= 16'hA202; //SCALING_PCLK_DELAY (default)
      //  end QQVGA

      6'h14:
        reg_11 <= 16'hFFFF;  // FINISH CONDITION
      default:
        reg_11 <= 16'hFFFF;  // FINISH CONDITION
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
          reg_i <= reg_00;
        2'b01 : 
          reg_i <= reg_01;
        2'b10 :
          reg_i <= reg_10;
        default:
          reg_i <= reg_11;
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
