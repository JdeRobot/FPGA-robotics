

import control_functions



# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# ------------ ETAPA 1 ------------ #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(64,		4,		40,		45, 	0, 		200,	128)	# Con XY
#control_functions.setPIDValues(64,		4,		0,		0, 		0, 		0,		128)	# Sin XY
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
control_functions.setPIDValues(64,		16,		0,		0,	 	0, 		0,		128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(0, 	128, 	128, 	128, 	0.2)