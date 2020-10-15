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

  reg    [23:0]  count_16ms;  // 16.7 million count
  reg    [5:0]   count_2sec;  // count for a seconds aprox (64 x 16ms)
  wire           pulse_16ms;
  wire           pulse_1sec;
  wire           end1sec;

  // count around 16 ms approx
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      count_16ms <= 24'hFF_FFFF;
    end
    else begin
      if (btn_in) begin
        if (count_16ms == 0) begin
          count_16ms <= 24'hFF_FFFF;
        end
        else 
          count_16ms <= count_16ms - 1;
      end
      else
        count_16ms <= 24'hFF_FFFF;
    end
  end

  assign pulse_16ms = (count_16ms == 0) ? 1'b1 : 1'b0;

  // to see if it has been pulsed for more than a second
  // the count is of 2 seconds to give time to release the button
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      count_2sec    <= 6'b00_0000;
    end
    else begin
      if (btn_in) begin
        if (pulse_16ms) begin
          if (count_2sec == 6'b11_1111)
            count_2sec    <= 6'b00_0000;
          else
            count_2sec <= count_2sec + 1;
        end
      end
      else 
        count_2sec  <= 6'b00_0000;
    end
  end

  assign end1sec = (count_2sec == 7'b01_1111) ? 1'b1 : 1'b0;
  assign pulse_1sec = ((end1sec==1'b1) && (pulse_16ms==1'b1)) ? 1'b1 : 1'b0;

  always @ (posedge rst, posedge clk)
  begin
    if (rst) begin
      filter_on <= 1'b0; // no filter
      // no vertical filter, but it doesnt matter, since filter off
      vfilter   <= 1'b0;
    end
    else begin
      if (pulse_16ms && count_2sec == 0) begin
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

