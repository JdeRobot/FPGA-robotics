import control_functions

# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Derecha	Delante Gira
#control_functions.setPIDValues(0,		0,		128, 	128, 	128)	# Kp_altura, Offsets: Derecha/Izquierda, Delante/Detras, GiroIzquierda/Derecha






# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# ------------ ETAPA 1 ------------ #
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Derecha	Delante Gira
control_functions.setPIDValues(30,		8,		128, 	128, 	128)	# Kp_altura, Offsets: Der/Izq, Del/Det, GirIzq/Der
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	1)	# 
# ------------ ETAPA 2 ------------ #
control_functions.setPIDValues(50,		16,		128, 	128, 	128)	# Alt_Kp	Alt_Ki	Derecha	Delante Gira
control_functions.setcontrols(20, 	128, 	128, 	128, 	1)	# AA 	DI		DD 		GID 	Order Duration




# Flight
#print('Fliying...')








# Landing
print('Landing...')
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(10, 	128, 	128, 	128, 	1)	# Aprox to 1,04m height
control_functions.setcontrols(0, 	128, 	128, 	128, 	0.5)	# Aprox to 1,04m height