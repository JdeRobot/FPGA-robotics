import control_functions

# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Derecha	Delante Gira
#control_functions.setPIDValues(0,		0,		128, 	128, 	128)	# Kp_altura, Offsets: Derecha/Izquierda, Delante/Detras, GiroIzquierda/Derecha






# -------------------------------------- Flight -------------------------------------- #
print('STOP...')
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setPIDValues(50,		16,		128, 	128, 	128)	# Alt_Kp	Alt_Ki	Derecha	Delante Gira
control_functions.setcontrols(10, 	128, 	128, 	128, 	1)	# Aprox to 1,04m height
control_functions.setcontrols(0, 	128, 	128, 	128, 	0.5)	# Aprox to 1,04m height