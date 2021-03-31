# UART receiver and PWM output for 2 motors

It receives from the UART a 8 bit number and activates two motors using PWM. 
The 8bit number is divided into two sign-magnitude numbers, each one for each motor.
Thus, for each motor we have 8 speeds (0 to 7) and going forward and backwards

It also shows the 8-bit number in the leds

To send the number you can use RealTerm: https://sourceforge.net/projects/realterm/

You have to set the same baudrate, select the port and send the 8-bit number
