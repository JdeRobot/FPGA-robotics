# Verliator+GUI Tutorial 2

**Centroid** and **proximity** calculation of the color processing module is included

The color processing module is different from tutorial 1. It has been taken from:

* [../../../phys_fpga/ulx3s/apio/ov7670x2_colorcentroid_160x120/color_proc.v](../../../phys_fpga/ulx3s/apio/ov7670x2_colorcentroid_160x120/color_proc.v)

, but also it is very similar to other centroid color processing modules, such as the one used in the Alhambra II project:

* [../../../phys_fpga/alhambra_ii/apio/ov7670_rgb444_80x60_color_proc/color_proc.v](../../../phys_fpga/alhambra_ii/apio/ov7670_rgb444_80x60_color_centroid/color_proc.v)

For the ULX3S the color processing module requests a 12-bit RGB444 pixel from a **160x120** memory and in the following clock cycle it sends the processed pixel and its corresponding address to be written in a processed memory. It also includes a 8-bit centroid horizontal position, and a 3-bit proximity level. The larger the proximity, the closer the detected object is.

The input/output schematic of this module is shown in the following block diagram:

![color processing module](color_proc_centr_block.png)

Our objective is to convert the color processing block (the Unit Under Test: UUT) from Verilog into C++ using Verilator, and then create a testbench in C++ in which we provide the stimuli to the UUT.
Instead of generating the waveforms as in traditional testbenches, we are going to provide a C++ generated image and visualize the filtered image.
This is one of the great advantages of this approach because it is very difficult to appreciate the color filtering results by looking at waveforms.

With this GUI, you can select any of the color test images and run a simulation in which the color processing is performed by the verilog module, which has been converted into C++ using Verilator.
As a result you can view the processed image by the verilog module:

![Simulationn GUI](tut01_gui.png)





