

//////////////////////////////////////////////////////////////////////////////////
// 12MHz clock with 115200 baud
// Este codigo vale para pegarlo directamente dentro de un modulo de ICESTUDIO, 
//TODO: adaptarlo a un modulo verilog de verdad.
// 12MHz clock with 115200 baud

// control module to send to SPI to turn on leds
module spi_ledctrl
(
  input            rst,
  input            clk,
  //input            MISO,
  //input      [7:0] data_flash,
  input            busy_spi,
  output reg [7:0] leds,
  //output           SCLK, // not used
  //output           MOSI, // not used
  output reg       SSBar,
  output reg       start,
  output reg       ack,
  output           ena_2clk, // ena spi, twice the frequency
  output reg [7:0] data_spi
);

   //reg start = 0;           // Registro que mantiene la señal de start para el módulo SPI.
   //reg ack;                  // Señal para terminar ejecucion
   //reg[7:0] leds;
   //reg SSBar;
   //reg[7:0] data_spi;         // Registro con los datos que se quieren transmitir por el módulo SPI.

  reg [5:0] counter;
  reg busy_wait;
  reg busy_spi_rg;

  wire end_ena_2clk;

  reg [3:0] ena_2clk_cnt;  // count to 12 for the spi clock divider

  reg [28:0] cnt_startup; // to have time before sending the commands
                          // 25 bits: 33.5 millions -> 12MHz -> ~2.8 segs
  wire end_cnt_startup;
  reg startup_done;
  //parameter c_startup_end = 2**29-1; // for synthesis
  parameter c_startup_end = 500-1; // for simulation

  reg [5:0] cnt_ssb_enable; // to activate the SPI enable beforehand
  wire end_cnt_ssb_enable;

  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      cnt_startup <= 0;
      startup_done <=1'b0;
    end
    else begin
      if (end_cnt_startup) begin
        startup_done <= 1'b1;
        cnt_startup <= 0;
      end
      else
        cnt_startup <= cnt_startup + 1;
    end
  end

  assign end_cnt_startup = (cnt_startup == c_startup_end) ? 1'b1 : 1'b0;

  // timer to active the SPI enable beforehand
  always @(posedge rst, posedge clk)
  begin
    if (rst)
      cnt_ssb_enable <= 0;
    else begin
      if (startup_done) begin
        if (end_cnt_ssb_enable)
          cnt_ssb_enable <= 0;
        else
          cnt_ssb_enable <= cnt_ssb_enable + 1;
      end
    end
  end

  assign end_cnt_ssb_enable = (cnt_ssb_enable == 63) ? 1'b1 : 1'b0;


  // clk divider. Alhambra clock is 12 MHz, 
  // from the logic analyzer, SCK is 500 kHz, then ena_2clk has to be 1MHz
  // count to 12
  always @(posedge rst, posedge clk)
  begin
    if (rst)
      ena_2clk_cnt <= 3'b0;
    else begin
      if ((end_ena_2clk) || (start == 1'b1))//restart when sending a new command
        ena_2clk_cnt <= 3'b0;
      else
        ena_2clk_cnt <= ena_2clk_cnt + 1;
    end
  end

  // end of the count 0 to 11: 1 MHz signal
  assign end_ena_2clk = (ena_2clk_cnt == 12-1) ? 1'b1 : 1'b0;
  assign ena_2clk = end_ena_2clk;

  
  always @(posedge rst, posedge clk)
  begin
    if (rst) begin
      counter  <= 0;
      busy_wait <= 1'b0; // wait for SPI to stay busy again
    end
    else begin
      if ((counter == 0)  && end_cnt_ssb_enable) // give some time to start
        counter <= counter + 1; 
      else if (counter != 11) begin
        if (!busy_wait) begin  // we are not waiting to activate the SPI
          if (!busy_spi_rg) begin // wait for the SPI to be ready
            // when ready SPI, start sending, but wait for SPI to be busy again
            busy_wait <= 1'b1; 
          end
        end
        else if (busy_spi_rg) begin // now SPI is busy again with the new sending
          // move to the new one
          counter <= counter + 1;
          busy_wait <= 1'b0; 
        end
      end
    end
  end

  always @(posedge rst, posedge clk)
  begin
    if (rst)
      busy_spi_rg <= 1'b1;
    else begin
      if (busy_spi) // if busy, busy_spi_rg will be busy
        busy_spi_rg <= busy_spi;
      else if (end_ena_2clk) // busy spi_rg will update to 0 after a SPI clock
        busy_spi_rg <= busy_spi;
    end
  end



  always @(*)
  begin
    start    <= 1'b0;
    ack      <= 1'b0;
    SSBar    <= 1'b1;  // SPI disabled  : FMS No seria el mosi_en_o del propio SPI?
    data_spi <= 7'b00000000;
    leds     <= 7'b00000000;

    /* tenemos que enviar todo esto para setear leds
       spi_array_out[0] = Address;   //8
       spi_array_out[1] = GPGSPI_MESSAGE_SET_LED; //6 (enum)
       spi_array_out[2] = led; // 0x02
       spi_array_out[3] = red; //1
       spi_array_out[4] = green; //1
       spi_array_out[5] = blue; //1
    */
    if (rst)
      SSBar <= 1'b1;
    case (counter)
      6'd0: begin  // start sending
        SSBar <= 1'b1;        
        if (startup_done)
          SSBar <= 1'b0;        
        leds[0] <= 1'b1;
      end
      6'd1: begin
        SSBar <= 1'b0;        // Activar el protocolo SPI en el esclavo (Bot).
        data_spi <= 8'h08;    // direccion 8 del SPI
        if (!busy_spi_rg) begin
          start <= 1'b1;
          leds[1] <= 1'b1;
        end
      end
      6'd2: begin
        SSBar <= 1'b0;        // Activar el protocolo SPI en el esclavo (Bot).
        data_spi <= 8'h06;    // comando encender leds
        if (!busy_spi_rg) begin
          start <= 1'b1;
          leds[2] <= 1'b1;
        end
      end
      6'd3: begin
        SSBar <= 1'b0;        // Activar el protocolo SPI en el esclavo (Bot).
        data_spi <= 8'h04;    // set led left eye
        if (!busy_spi_rg) begin
          start <= 1'b1;
          leds[3] <= 1'b1;
        end
      end
      6'd4: begin
        SSBar <= 1'b0;        // Activar el protocolo SPI en el esclavo (Bot).
        data_spi <= 8'h10;          
        if (!busy_spi_rg) begin
          start <= 1'b1;
          leds[4] <= 1'b1;
        end
      end
      6'd5: begin
        SSBar <= 1'b0;        // Activar el protocolo SPI en el esclavo (Bot).
        data_spi <= 8'h1F;         
        if (!busy_spi_rg) begin
          start <= 1'b1;
          leds[5] <= 1'b1;
        end
      end
      6'd6: begin
        SSBar <= 1'b0;        // Activar el protocolo SPI en el esclavo (Bot).
        data_spi <= 8'h1A;         
        if (!busy_spi_rg) begin
          start <= 1'b1;
          leds[6] <= 1'b1;
        end
      end
      6'd7: begin
        SSBar <= 1'b0;        // wait for the last byte to be sent
        data_spi <= 8'h00;         
        if (!busy_spi_rg) begin
          start <= 1'b1;
          leds[6] <= 1'b1;
        end

      end
      6'd8: begin
        SSBar <= 1'b0;       // Desactivamos el esclavo una vez despierto (según sketch de S.E.Tropea para Lattuino).
        data_spi <= 8'h00;         
        if (!busy_spi_rg) begin
          start <= 1'b1;
          leds[6] <= 1'b1;
        end
        leds[2] <= 1'b1;
      end
      6'd9: begin
        SSBar <= 1'b0;       // Desactivamos el esclavo una vez despierto (según sketch de S.E.Tropea para Lattuino).

        leds[2] <= 1'b1;
      end
      default: begin
        leds <= 8'h00;    // No se hace nada, solo borra los leds.
        ack <= 1'b1;      // terminamos
        SSBar <= 1'b1;    // Desactivar el protocolo SPI en el esclavo (Bot).
      end
    endcase
  end
endmodule


