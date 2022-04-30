
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

SW3 swaps red-blue (it works)

SW4 in VHDL: oscilloscope

SW15: reset

## ov7670_rgb_yuv_320x240_rg

Same as ULX3S version, but for Nexys4DDR

There is the regs folder in which has the 2 versions of the OV7670 registers.
The original one, and the one copied from the linux driver:

https://github.com/yandex/smart/blob/master/drivers/media/i2c/ov7670.c