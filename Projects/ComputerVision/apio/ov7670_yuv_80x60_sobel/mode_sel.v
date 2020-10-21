//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   mode selection:
//     - Test mode: camera in 8 color bar
//     - Sobel filter on/off
//     - Vertical/Horizontal sobel filter

module mode_sel
  #(parameter
    c_on    = 1'b1
   )
   (input        rst,
    input        clk,
    input        btn_in,  // input
    output reg   filter_on,
    output reg   vfilter,
    output reg   test_mode);

  reg    [20-1:0]  count_10ms;  // ~1.05 million count -> 10 ms
  reg    [8-1:0]   count_2sec;  // count for 2.5 seconds aprox (256 x 10ms)
  wire           pulse_10ms;
  wire           pulse_1sec;
  wire           end1sec;

  // count around 10 ms approx
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      count_10ms <= 20'hF_FFFF;
    end
    else begin
      if (btn_in) begin
        if (count_10ms == 0) begin
          count_10ms <= 20'hF_FFFF;
        end
        else 
          count_10ms <= count_10ms - 1;
      end
      else
        count_10ms <= 20'hF_FFFF;
    end
  end

  assign pulse_10ms = (count_10ms == 0) ? 1'b1 : 1'b0;

  // to see if it has been pulsed for more than a second
  // the count is of 2 seconds to give time to release the button
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      count_2sec    <= 8'b0000_0000;
    end
    else begin
      if (btn_in) begin
        if (pulse_10ms) begin
          if (count_2sec == 8'b1111_1111)
            count_2sec    <= 8'b0000_0000;
          else
            count_2sec <= count_2sec + 1;
        end
      end
      else 
        count_2sec  <= 8'b0000_0000;
    end
  end

  assign end1sec = (count_2sec == 8'b0111_1111) ? 1'b1 : 1'b0;
  assign pulse_1sec = ((end1sec==1'b1) && (pulse_10ms==1'b1)) ? 1'b1 : 1'b0;

  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      filter_on <= 1'b0; // no filter
      // no vertical filter, but it doesnt matter, since filter off
      vfilter   <= 1'b0;
    end
    else begin
      if (pulse_10ms && count_2sec == 0) begin
        if (filter_on == 1'b0) begin
          // no filter -> horizontal filter
          filter_on <= 1'b1;
          vfilter   <= 1'b0; //horizontal filter
        end
        else if (vfilter == 1'b0) begin
          // horizontal filter -> vertical filter
          filter_on <= 1'b1;
          vfilter   <= 1'b1; //vertical filter
        end
        else begin
          // vertical filter -> no filter
          filter_on <= 1'b0;
          vfilter   <= 1'b0;
        end
      end
    end
  end

  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      test_mode <= 1'b0;
    end
    else begin
      if (pulse_1sec) begin
        //change the test mode when pressing for more than 1 sec
        test_mode <= ~test_mode;
      end
    end
  end

endmodule

