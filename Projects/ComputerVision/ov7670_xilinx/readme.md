
## initial: 
Initial version for interfacing the OV7670 camera with a Xilinx Nexys4 FPGA and displaying the video through VGA. 
  + VHDL
  + Verilog
  
## ov7670_rgb444_80x60:
Same as Apio (../apio/ov7670_rgb444_80x60) version but for Xilinx ISE and Nexys4
It puts the camera in test mode with a 8-color bar and QQVGA/2 (80x60), and shows the image in VGA
  + VHDL
  + Verilog

## ov7670_rgb_yuv_80x60:  
Selects between RGB and YUV using SW1
Selects test mode and normal capture using SW2