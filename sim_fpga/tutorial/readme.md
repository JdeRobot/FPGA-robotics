# Detailed examples of Verilator + GUI simulations

## [Tutorial 1](./tut01)

In this first example we _verilate_ the color processing Verilog module and create a GUI in which two images can be provided.
As a result, the color processed image is shown.

The module used is [../../phys_fpga/ulx3s/apio/ov7670_rgb_yuv_320x240_colorfilter/color_proc.v](../../phys_fpga/ulx3s/apio/ov7670_rgb_yuv_320x240_colorfilter/color_proc.v)

More info in its [tutorial 1 readme](./tut01)

## [Tutorial 2](./tut02)

We add and show in the GUI the centroid and proximity of the _verilated_ color processing Verilog module.

More info in its [tutorial 2 readme](./tut02)

## [Tutorial 3](./tut03)

In this example, instead of processing still images, the frames from the computer camera is processed by the _verilated_ color processing Verilog module.

More info in its [tutorial 3 readme](./tut03)

## [Tutorial 4](./tut04)

In this example, the video frame size has increased considerably, from 160x120 to 640x480. To test the performance with this size

More info in its [tutorial 4 readme](./tut04)


## [Tutorial 5](./tut05)

Instead of a color filter, this example includes a more complex filter such as Sobel, to check the performance in simulation.

More info in its [tutorial 5 readme](./tut05)

The filter has been take from  [../../phys_fpga/alhambra_ii/apio/ov7670_yuv_80x60_sobel/edge_proc.v](../../phys_fpga/alhambra_ii/apio/ov7670_yuv_80x60_sobel/edge_proc.v)

