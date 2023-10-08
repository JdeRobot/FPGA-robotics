# Verilator+GUI Tutorial 4

This is the same as in Tutorial 3, but now taking a 640x480 image, to test if the processing is fast enough.
Now, each frame is 307,200 pixels, so it is an order of magnitude larger than in tutorial 3

The color processing is the same as in tutorial 3 and 2 (only changing some generics)

* [../../../phys_fpga/ulx3s/apio/ov7670x2_colorcentroid_160x120/color_proc.v](../../../phys_fpga/ulx3s/apio/ov7670x2_colorcentroid_160x120/color_proc.v)

Frames per second has been included, they can be seen at the bottom of the window.
It includes two measurement methods and the maximum fps reported by opencv.
With this resolution around 2 frames per second can be achieved.

![Screenshot with frame period and fps](imgs/fps_sm.png)

The rest is the same as in tutorial 3.






