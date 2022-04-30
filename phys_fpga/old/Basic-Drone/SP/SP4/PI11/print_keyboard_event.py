import control_functions

# Set Trim Parameters		     Arriba	Derecha	Delante Gira
control_functions.setTrimmValues(105,	128, 	128, 	128)	# Offsets: Up/Down Right/Left Forward/Backward TurnRight/TurnLeft  (Cargado)






# -------------------------------------- Takeoff -------------------------------------- #
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
print('Taking off...')
control_functions.setcontrols(0, 	128, 	128, 	128, 	1)
control_functions.setcontrols(55, 	128, 	128, 	145, 	0.5)
#control_functions.setcontrols(128, 	128, 	128, 	128, 	3)



# -------------------------------------- Flight -------------------------------------- #
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
#control_functions.setcontrols(0, 	128, 	150, 	128, 	1)
#control_functions.setcontrols(128, 		128, 		128, 		200, 	1.5) # Adelante
#control_functions.setcontrols(150, 		128, 		50, 		128, 	1) # Atras

#control_functions.setcontrols(128, 		140, 		128, 		128, 	0.5) # Derecha
#control_functions.setcontrols(128, 		116, 		116, 		128, 	0.5) # Vuelve





# -------------------------------------- Landing -------------------------------------- #
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
print('Landing...')
# Set Flight Parameters		  Arriba	Derecha		Delante 	Gira 	Order Duration
#control_functions.setcontrols(118, 		128, 		150, 		128, 	1.5)
control_functions.setcontrols(25, 		128, 		128, 		128, 	1)
control_functions.setcontrols(30, 		128, 		128, 		128, 	0.2)
control_functions.setcontrols(0, 		128, 		128, 		128, 	0.1)