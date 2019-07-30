import control_functions

# Set Trim Parameters		     Arriba	Derecha	Delante Gira
#control_functions.setTrimmValues(115,	133, 	132, 	128)	# Offsets: Up/Down Right/Left Forward/Backward TurnRight/TurnLeft  (Descargado)
control_functions.setTrimmValues(100,	134, 	132, 	128)	# Offsets: Up/Down Right/Left Forward/Backward TurnRight/TurnLeft  (Cargado)






# -------------------------------------- Flight -------------------------------------- #
# Takeoff
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(0, 	128, 	128, 	128, 	1)
control_functions.setcontrols(220, 	128, 	128, 	128, 	0.3)
#control_functions.setcontrols(128, 	128, 	128, 	128, 	3)







# Flight
# Set Flight Parameters		  Arriba	Derecha		Delante 	Gira 	Order Duration
control_functions.setcontrols(128, 		128, 		180, 		128, 	1) # Adelante
control_functions.setcontrols(150, 		128, 		50, 		128, 	1) # Atras
#control_functions.setcontrols(128, 		140, 		128, 		128, 	0.5) # Derecha
#control_functions.setcontrols(128, 		116, 		116, 		128, 	0.5) # Vuelve








# Landing
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
print('Landing...')
# Set Flight Parameters		  Arriba	Derecha		Delante 	Gira 	Order Duration
control_functions.setcontrols(118, 		128, 		150, 		128, 	1.5)
control_functions.setcontrols(0, 		128, 		128, 		128, 	0.1)