

import control_functions



# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# Mejor estabilidad para 20/25 de altura
alt_kp = 60;
alt_ki = 3;
alt_kd = 100;
xy_kp = 11;
xy_ki = 255;
xy_kd = 50;

# Tensados Seguros
alt_kp = 90;
alt_ki = 3;
alt_kd = 120;
xy_kp = 11;
xy_ki = 255;
xy_kd = 50;

# Tensados contra toque
alt_kp = 95;
alt_ki = 3;
alt_kd = 125;
xy_kp = 12;
xy_ki = 255;
xy_kd = 50;

# Tensados Seguros
alt_kp = 90;
alt_ki = 3;
alt_kd = 120;
xy_kp = 11;
xy_ki = 255;
xy_kd = 50;


# -------------------------------------- TAKE OFF -------------------------------------- #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(0,		alt_ki,	0,		xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(25, 	128, 	128, 	128, 	0.5)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(alt_kp,	alt_ki,	alt_kd,	xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	3)


# -------------------------------------- FLIGHT --------------------------------------
print('Flight...')
control_functions.setcontrols(20, 	128, 	128, 	128, 	15)
flight_Delante = 128;
flight_Derecha = 128;


# -------------------------------------- LANDING --------------------------------------
print('Landing...')
# Set Flight Parameters		  AA 	DI				DD 				GID 	Order Duration
control_functions.setcontrols(11, 	flight_Derecha, flight_Delante, 128, 	1)
control_functions.setcontrols(18, 	flight_Derecha, flight_Delante, 128, 	0.3)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(alt_kp,	16,		0,		xy_kp, 	255, 	xy_kd,	128)
# Set Flight Parameters		  AA 	DI				DD 				GID 	Order Duration
control_functions.setcontrols(0, 	flight_Derecha, flight_Delante, 128, 	0.2)