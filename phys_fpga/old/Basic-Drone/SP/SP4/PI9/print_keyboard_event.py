import control_functions

# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Derecha	Delante Gira
#control_functions.setPIDValues(0,		0,		128, 	128, 	128)	# Kp_altura, Offsets: Derecha/Izquierda, Delante/Detras, GiroIzquierda/Derecha






# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Derecha	Delante Gira
control_functions.setPIDValues(0,		0,		128, 	128, 	128)	# Kp_altura, Offsets: Der/Izq, Del/Det, GirIzq/Der
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(65, 	128, 	128, 	128, 	0.5)	# Aprox to 1,04m height







# Flight
print('Fliying...')
# Set Flight Parameters		  Arriba	Derecha		Delante 	Gira 	Order Duration








# Landing
print('Landing...')
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration