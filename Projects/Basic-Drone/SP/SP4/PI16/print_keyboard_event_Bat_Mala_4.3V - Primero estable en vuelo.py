

import control_functions



# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
alt_kp = 20;
alt_ki = 3;
alt_kd = 10;
xy_kp = 20;
xy_ki = 255;
xy_kd = 100;
# ------------ ETAPA 1 ------------ #						   (error*XY_Ki^2)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
#control_functions.setPIDValues(75,		4,		100,	40, 	2, 		50,		128)	# Con XY
control_functions.setPIDValues(alt_kp,	alt_ki,	alt_kd,	xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(25, 	128, 	128, 	128, 	5)
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
#print('Fliying...')


# Landing
print('Landing...')
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setcontrols(15, 	128, 	128, 	128, 	0.8)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
#control_functions.setPIDValues(80,		16,		0,		35,	 	0, 		50,		128)
control_functions.setPIDValues(alt_kp,		16,		0,		0, 		255, 	0,	128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(0, 	128, 	128, 	128, 	0.2)