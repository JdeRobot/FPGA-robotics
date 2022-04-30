
import msvcrt
import control_functions



# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# Mejor estabilidad para 20/25 de altura
alt_kp = 10;
alt_ki = 10;
alt_kd = 10;
xy_kp = 11;
xy_ki = 255;
xy_kd = 50;

# Bajo ensayo
alt_kp = 50;
alt_ki = 4;
alt_kd = 120;
xy_kp = 12;
xy_ki = 255;
xy_kd = 50;



# -------------------------------------- TAKE OFF -------------------------------------- #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(0,		alt_ki,	0,		xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	0.5)

# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(alt_kp,	alt_ki,	0,		xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	1)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(alt_kp,	alt_ki,	alt_kd,	xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	0.1)


# -------------------------------------- FLIGHT --------------------------------------
print('Flight...')
# Espera por teclado
press = 0
while press==0:
    if msvcrt.kbhit():
        key = msvcrt.getch()
        press = 1
flight_Delante = 128;
flight_Derecha = 128;


# -------------------------------------- LANDING --------------------------------------
print('Landing...')
# Set Flight Parameters		  AA 	DI				DD 				GID 	Order Duration
control_functions.setcontrols(9, 	flight_Derecha, flight_Delante, 128, 	2.5)


# -------------------------------------- ENGINE OFF --------------------------------------
print('Off...')
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(alt_kp,	20,		0,		xy_kp, 	255, 	xy_kd,	128)
# Set Flight Parameters		  AA 	DI				DD 				GID 	Order Duration
control_functions.setcontrols(0, 	flight_Derecha, flight_Delante, 128, 	0.2)