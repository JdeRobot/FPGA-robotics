ICESTUDIO BLOCK: DRIVER FOR ULTRASOUND HCSR04 SENSOR
====================================================

INPUTS:
- ECHO: 
    Assign to any free GPIO board pin and connect it to HCSR04 ECHO PIN, using a voltage regulator/divider
    IMPORTANT: Do not perform a direct connection, use a voltage regulator/divider, as board GPIOs can only handle 3.3 volts
    and HCSR04 sensor works with 5v voltage

PARAMETERS:
- T_MSEC:
    Period of US measurements, expressed in milliseconds (e.g., if set to 1000, measurements will be taken every second).

OUTPUTS:
- TRIGGER: 
    Assign to any free GPIO board pin and connect it directly to HCSR04 TRIGGER PIN
- DISTANCE_CMS[7:0]: 
    8-bit binary number expressing the distance to any detected obstacle, in cms. (range from 0 to 255)

NOTES:
    - HCSR04 sensor should be powered using 5v (it does not work properly when powered using 3.3v)
    - An example of use is included for convenience