

import control_functions



# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# Mejor estabilidad para 25 de altura
alt_kp = 60;
alt_ki = 3;
alt_kd = 100;
xy_kp = 10;
xy_ki = 255;
xy_kd = 50;

# Tensados
alt_kp = 90;
alt_ki = 3;
alt_kd = 100;
xy_kp = 11;
xy_ki = 255;
xy_kd = 50;


# ------------ ETAPA 1 ------------ #						   (error*XY_Ki^2)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(0,		alt_ki,	0,		xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(25, 	128, 	128, 	128, 	0.5)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(alt_kp,	alt_ki,	alt_kd,	xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
control_functions.setcontrols(20, 	128, 	128, 	128, 	3)
# ------------ ETAPA 2 ------------ #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
#control_functions.setPIDValues(30,		16,		0,		32, 	0, 		0,		128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
#control_functions.setcontrols(20, 	128, 	128, 	128, 	1)
# ------------ ETAPA 3 ------------ #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
#control_functions.setPIDValues(50,		16,		0,		32, 	0, 		0,		128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
#control_functions.setcontrols(30, 	128, 	128, 	128, 	4)


# Flight
print('Flight...')
flight_Delante = 160;
flight_Derecha = 128;
# Set Flight Parameters		  AA 	DI				DD 				GID 	Order Duration
control_functions.setcontrols(20, 	flight_Derecha, flight_Delante, 128, 	2)
flight_Delante = 190;
# Set Flight Parameters		  AA 	DI				DD 				GID 	Order Duration
control_functions.setcontrols(20, 	flight_Derecha, flight_Delante, 128, 	4)



# Landing
print('Landing...')
# Set Flight Parameters		  AA 	DI				DD 				GID 	Order Duration
control_functions.setcontrols(11, 	flight_Derecha, flight_Delante, 128, 	1)
control_functions.setcontrols(18, 	flight_Derecha, flight_Delante, 128, 	0.3)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
#control_functions.setPIDValues(80,		16,		0,		35,	 	0, 		50,		128)
control_functions.setPIDValues(alt_kp,	16,		0,		xy_kp, 	255, 	xy_kd,	128)
# Set Flight Parameters		  AA 	DI				DD 				GID 	Order Duration
control_functions.setcontrols(0, 	flight_Derecha, flight_Delante, 128, 	0.2)