The goal of this project is to perform image processing inside FPGAs, different operations like edge computation, color filtering, convolutions...


- Basics/HexImgStorage:

  ![](https://github.com/JdeRobot/FPGA-robotics/blob/master/Projects/ComputerVision/Basics/HexImgStorage/Diagram.png)
  
  
- Basics/HexImageFilter:

  ![](https://github.com/JdeRobot/FPGA-robotics/blob/master/Projects/ComputerVision/Basics/HexImageFilter/Untitled%20Diagram.png)


- HexToVGA:

  ![](https://github.com/JdeRobot/FPGA-robotics/blob/master/Projects/ComputerVision/HexToVGA/Untitled%20Diagram.png)


  
- ov7670_test:

  Same project as the Apio ov7670_rgb444_80x60 adapted for icestudio.
  ![OV7670 test icestudio](ov7670_test/ov7670_vga_top_icestudio.png)
  ![OV7670 test icestudio flow](ov7670_test/ov7670_vga_top_icestudio_flow.png)

- ov7670_color_proc:

  Same project as the Apio ov7670_rgb444_80x60_color_proc adapted for icestudio.
  ![OV7670 test icestudio](ov7670_colorfilter/ov7670_vga_top_icestudio_procolor.png)
  ![OV7670 test icestudio flow](ov7670_colorfilter/ov7670_vga_top_icestudio_flow.png)
  
### Alhambra II Apio projects
It is important to connect the camera with short wires (10 cm at most)

- vga_test_100mhz
  
  Display a test card on a 640x480 VGA with Alhambra II using 100MHz PLL generated clock
  
- ov7670_rgb444_80x60
  
  Display 80x60 video on a VGA from the ov7670 camera using Alhambra II
  
  Camera in test mode

- ov7670_rgb444_80x60_color_proc
  
  ov7670 camera capture, color processing and 80x60 VGA display using Alhambra II
  
  Camera in test mode QQVGA/2 (80x60)

- ov7670_rgb_yuv_80x60
  
  SW1: reset, necessary to start
  
  SW2 choose between:
  
    RGB -> RGB test -> YUV -> YUV test -> RGB

    The drawback of choosing is that you loose pins for YUV, and you can only get 3 bits of gray color, without choosing you could get 5

- ov7670_rgb_yuv_80x60_50mhz
  
  The same as the previous, but configures the PLL to have a clock of 50MHz instead of 100MHz to see if there is any improvement. It doesnt seem to be; however, the timming analysis suggest a clock frequency of 80MHz (or less)

  ![OV7670 camera and alhambra pin connection](ov7670_alhambra_interface.png)
  

- ov7670_yuv_80x60_sobel
  
  SW1: reset, necessary to start
  
  SW2 choose between:
    No filter grayscale -> Sobel horizontal filter -> Sobel Vertical filter -> No filter grayscale.
    
    When pressed more than a second -> test mode
    
- ov7670_yuv_80x60_sobel_50mhz

  Same as previous, but configures the PLL to have a clock of 50MHz instead of 100MHz to see if there is any improvement. It doesnt seem to be; however, the timming analysis suggest a clock frequency of 80MHz (or less)
  
   ![OV7670 camera and alhambra pin connection for YUV](ov7670_alhambra_interface_yuv.png)


  
### ov7670_xilinx: 
Interfacing the OV7670 camera with a Xilinx Nexys4 FPGA and displaying the video through VGA.  There are VHDL and verilog versions

  + ov7670_rgb_yuv_80x60: latest version, you can choose between RGB or YUV (only Y). And camera in test mode or normal capture
  
  
