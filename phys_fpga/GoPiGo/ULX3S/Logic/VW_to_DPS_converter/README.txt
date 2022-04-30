ICESTUDIO BLOCK: (V,W) to GoPiGo motors DPS (left,right) converter
==================================================================

INPUTS:
- V: 
    Linear speed in cms/sec (8 bits, range: [-128, 127])
- W: 
    Angular speed in degrees/sec (8 bits, range: [-128, 127])

OUTPUTS:
- DPS_left: 
    DPS (Degrees per second) to be applied to the GoPiGo left motor according to (V,W) (16 bits, range: [-32768, 32767])
- DPS_right: 
    DPS (Degrees per second) to be applied to the GoPiGo right motor according to (V,W) (16 bits, range: [-32768, 32767])

NOTES:
    - An example of use is included for convenience