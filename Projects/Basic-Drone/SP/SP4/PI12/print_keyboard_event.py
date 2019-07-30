import control_functions

# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Derecha	Delante Gira
#control_functions.setPIDValues(0,		0,		128, 	128, 	128)	# Kp_altura, Offsets: Derecha/Izquierda, Delante/Detras, GiroIzquierda/Derecha






# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# ------------ ETAPA 1 ------------ #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	Derecha	Delante Gira
control_functions.setPIDValues(20,		8,		0,		130, 	125, 	128)	# Kp_altura, Ki_altura, Kd_altura, Offsets: Der/Izq, Del/Det, GirIzq/Der
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	1)	# 
# ------------ ETAPA 2 ------------ #
control_functions.setPIDValues(40,		16,		0,		130, 	125, 	128)	# Kp_altura, Ki_altura, Kd_altura, Offsets: Der/Izq, Del/Det, GirIzq/Der
control_functions.setcontrols(20, 	128, 	128, 	128, 	1)	# AA 	DI		DD 		GID 	Order Duration
# ------------ ETAPA 3 ------------ #
control_functions.setPIDValues(40,		16,		0,		130, 	125, 	128)	# Kp_altura, Ki_altura, Kd_altura, Offsets: Der/Izq, Del/Det, GirIzq/Der
control_functions.setcontrols(30, 	128, 	128, 	128, 	1)	# AA 	DI		DD 		GID 	Order Duration




# Flight
#print('Fliying...')
# ------------ ETAPA 2 ------------ #
#control_functions.setPIDValues(80,		16,		0,		130, 	125, 	128)	# Kp_altura, Ki_altura, Kd_altura, Offsets: Der/Izq, Del/Det, GirIzq/Der
#control_functions.setcontrols(30, 	128, 	128, 	128, 	2)	# AA 	DI		DD 		GID 	Order Duration








# Landing
print('Landing...')
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	Derecha	Delante Gira
control_functions.setPIDValues(40,		16,		0,		130, 	125, 	128)	# Kp_altura, Ki_altura, Kd_altura, Offsets: Der/Izq, Del/Det, GirIzq/Der
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	2.5)	# Aprox to 1,04m height
control_functions.setcontrols(0, 	128, 	128, 	128, 	0.5)	# Aprox to 1,04m height