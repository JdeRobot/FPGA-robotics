//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   ov7670_top_ctrl.v
//   structural model, that controls the OV7670 camera, send the registers
//   and controls the camera
//
//   output:
//     done: stays at '1' when configuration is finished
//
//------------------------------------------------------------------------------

module ov7670_top_ctrl
  # (parameter
    c_nb_ov7670_sccb = 8, // number of bits for each SCCB transmision phase
    c_nb_ov7670_sccb_id = 7 // number of bits for the camera id (slave) 
  )
  (input        rst,           //reset, active high
   input        clk,           //FPGA clock
   input        resend,        //resend the sequence
   input        rgbmode,      //if '1': in RGB, else YUV
   input        testmode,     //if '1': in test mode
   output [5:0] cnt_reg_test,  //to test the count
   output       done,          //all transmission done. Stays '1' when finish
   output       sclk,          //sccb clock
   output       sdat_on,       //transmitting serial ('1')
   //output       sdat_in,     //sccb serial data in
   output       sdat_out,      //sccb serial data ou
   output       ov7670_rst_n,  //camera reset
   output       ov7670_clk,    //camera system clock
   output       ov7670_pwdn    //camera power down
  );


  wire         start_tx;
  wire         sccb_ready;
  wire [c_nb_ov7670_sccb_id-1:0]  id;
  wire [c_nb_ov7670_sccb-1:0]     addr;
  wire [c_nb_ov7670_sccb-1:0]     data_wr;

  sccb_master
  #( //parameters
    .c_nb_ov7670_sccb    (c_nb_ov7670_sccb),
    .c_nb_ov7670_sccb_id (c_nb_ov7670_sccb_id)
   )
   i_sccb
   (
     .rst      (rst),
     .clk      (clk),
     .start_tx (start_tx),
     .id       (id),
     .addr     (addr),
     .data_wr  (data_wr),
     .ready    (sccb_ready),
     //.finish_tx    
     .sclk     (sclk),
     .sdat_on  (sdat_on),
     //sdat_in
     .sdat_out (sdat_out)
   );


  ov7670_ctrl_reg
  #( //parameters
    .c_nb_ov7670_sccb    (c_nb_ov7670_sccb),
    .c_nb_ov7670_sccb_id (c_nb_ov7670_sccb_id)
   )
  i_regs
  (
    .rst          (rst),
    .clk          (clk),
    .rgbmode      (rgbmode),
    .testmode     (testmode),
    .resend       (resend),
    .sccb_ready   (sccb_ready),
    .cnt_reg_test (cnt_reg_test), //test
    .start_tx     (start_tx),
    .done         (done),
    .id           (id),
    .addr         (addr),
    .data_wr      (data_wr),
    .ov7670_rst_n (ov7670_rst_n),
    .ov7670_clk   (ov7670_clk),
    .ov7670_pwdn  (ov7670_pwdn)
  );

endmodule
