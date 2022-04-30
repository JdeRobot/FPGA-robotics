
module uart_rx
  #(parameter
    G_FREQ_CLK  = 10**8,  // clock frequency
    G_BAUD      = 9600    // baud
  )
  (
    input            rst,
    input            clk,
    input            uart_rx,
    output reg       receiving,
    output reg       dat_ready,
    output     [7:0] dat_o
  );

  parameter E_IDLE      = 0,
            E_INIT_BIT  = 1,
            E_DATA_BITS = 2,
            E_END_BIT   = 3;
  reg [1:0] e_act, e_nxt; // actual state, next state

  // end of the counter of the frequency divider
  parameter C_DIV_END = G_FREQ_CLK/G_BAUD-1;
  parameter C_HALFDIV_END = C_DIV_END/2;
  
  wire   baud_pulse;
  wire   halfbaud_pulse;
  reg    rxdata_rg;
  reg    en_divfrq;
  reg    shift;
  
  parameter NB_DIVFRQ = $clog2(C_DIV_END-1);
  reg  [NB_DIVFRQ-1:0] divfrq;
  reg  [2:0]           bit_cnt; // count up to 7
  reg  [7:0]           tmp_dat;  // temporal data
  wire                 end_data_bits;


  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      e_act <= E_IDLE;
    else
      e_act <= e_nxt;
  end


  always @(*)
  begin
    e_nxt = e_act;
    shift = 1'b0;
    en_divfrq = 1'b1;
    dat_ready = 1'b0;
    receiving = 1'b1;
    case (e_act)
      E_IDLE: begin
        en_divfrq = 1'b0;
        receiving = 1'b0;
        if (rxdata_rg == 1'b0) begin
           e_nxt = E_INIT_BIT;
           en_divfrq = 1'b1;
           receiving = 1'b1;
        end
      end
      E_INIT_BIT: begin
        if (baud_pulse)
          e_nxt = E_DATA_BITS;
      end
      E_DATA_BITS: begin
        if (halfbaud_pulse)
          shift = 1'b1;
        if (end_data_bits) begin
          e_nxt = E_END_BIT;
          dat_ready = 1'b1;
        end
       end
       E_END_BIT: begin
         // some times next sending is too fast, we dont wait until the end
         if (halfbaud_pulse) begin
           e_nxt = E_IDLE;
           en_divfrq = 1'b0;
         end;
       end
    endcase
  end
  
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      divfrq <= 0;
    else begin
      if (en_divfrq == 1'b0)  // counter disabled
        divfrq <= 0;
      else begin
        if (baud_pulse) // end of the count
          divfrq <= 0;
        else
          divfrq <= divfrq + 1;
      end
    end
  end

  assign baud_pulse     = (divfrq == C_DIV_END-1)     ?  1'b1 : 1'b0;
  assign halfbaud_pulse = (divfrq == C_HALFDIV_END-1) ?  1'b1 : 1'b0;

  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      rxdata_rg <= 1'b1;
    else
      rxdata_rg <= uart_rx;
  end
  
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      bit_cnt <= 0;
    else begin
      if (e_act == E_DATA_BITS) begin
        if (end_data_bits)
          bit_cnt <= 0;
        else if (baud_pulse)
          bit_cnt <= bit_cnt + 1;
      end
      else
        bit_cnt <= 0;
    end
  end

  assign end_data_bits = (bit_cnt==7 && baud_pulse==1'b1)? 1'b1 : 1'b0;
  
  always @ (posedge rst, posedge clk)
  begin
    if (rst)
      tmp_dat <= 0;
    else begin
      if (shift)
        tmp_dat <= {rxdata_rg, tmp_dat[7:1]};
    end
  end

  // data only valid when dat_ready = '1'
  assign dat_o = tmp_dat;


endmodule

