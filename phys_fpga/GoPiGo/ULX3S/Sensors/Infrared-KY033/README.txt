ICESTUDIO BLOCK: DRIVER FOR INFRARED KY033 SENSOR
=================================================

INPUTS:
- IR_OUT: 
    Assign to any free GPIO board pin and connect it directly to KY033 OUT PIN

OUTPUTS:
- BLACK: 
    This output will be set to 1 when black/dark surface is detected by the IR sensor
    This output will be set to 0 when white/light surface is detected by the IR sensor

NOTES:
    - KY033 sensor should be powered using 3.3v
    - An example of use is included for convenience