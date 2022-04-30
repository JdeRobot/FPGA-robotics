# OV7670 camera project with verilog and Xilinx

It has been tested with Digilent Nexys 4
  
+ **ov7670_osc_disp**: with display options for debugging
  + It is more or less working, camera configuration needs improvement
  + Some testbenches are still in VHDL
  + SW(0)= '1': test_mode. Sends one SCCB command evey time pb_right is pushed.
  + SW(3 downto 0): Capture interpretation bytes from camera 
     + "000": RGB444
     + "001": RGB555
     + "010": RGB565
     + "011": YUV Gray first
     + "100": YUV Gray second
  + SW(4) = '1': shows input signals as in a oscilloscope
  + SW(6 downto 5): choose different camera initialization
     + "00": my own RGB444 format
     + "01": copied from hamster zed
     + "10": RGB565
     + "11": YUV
  + SW(15)='1' reset camera
  
 


