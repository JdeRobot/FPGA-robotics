

import control_functions



# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# ------------ ETAPA 1 ------------ #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(20,		8,		0,		32, 	0, 		0,		128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	1)
# ------------ ETAPA 2 ------------ #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(30,		16,		0,		32, 	0, 		0,		128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	1)
# ------------ ETAPA 3 ------------ #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(50,		16,		0,		32, 	0, 		0,		128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(30, 	128, 	128, 	128, 	4)



# Flight
#print('Fliying...')
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
#control_functions.setPIDValues(40,		16,		0,		30, 	0, 		0,		128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
#control_functions.setcontrols(30, 	128, 	128, 	128, 	2)






# Landing
print('Landing...')
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(50,		16,		0,		32, 		0, 		0,		128)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
#control_functions.setcontrols(15, 	128, 	128, 	128, 	2)
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(0, 	128, 	128, 	128, 	1)