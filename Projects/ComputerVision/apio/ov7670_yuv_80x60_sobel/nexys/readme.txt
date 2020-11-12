This files are for the Nexys 4 DDR
The ov7670_ctrl_reg are different for the Nexys and the Alhambra
The data from the camera comes in a different clock cycle,
that is why the TLSB register is changed.
For Alhambra, Y comes first, but for Nexys Y comes second.
I dont know the reason for this difference