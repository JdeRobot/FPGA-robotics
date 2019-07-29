import control_functions

# Set Trim Parameters		     Arriba	Derecha	Delante Gira
control_functions.setTrimmValues(138,	133, 	126, 	125)	# Offsets: Up/Down Right/Left Forward/Backward TurnRight/TurnLeft  (Cargado)
#control_functions.setTrimmValues(136,	134, 	127, 	125)	# Offsets: Up/Down Right/Left Forward/Backward TurnRight/TurnLeft  (Cargado)






# -------------------------------------- Takeoff -------------------------------------- #
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
print('Taking off...')
control_functions.setcontrols(0, 	128, 	128, 	128, 	1)
control_functions.setcontrols(80, 	128, 	128, 	128, 	1.5)



# -------------------------------------- Flight -------------------------------------- #
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(75, 	128, 	128, 	128, 	1.5)
control_functions.setcontrols(75, 	133, 	126, 	128, 	1.5)
control_functions.setcontrols(75, 	132, 	126, 	128, 	1.5)




# -------------------------------------- Landing -------------------------------------- #
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
print('Landing...')
# Set Flight Parameters		  Arriba	Derecha		Delante 	Gira 	Order Duration
#control_functions.setcontrols(118, 		128, 		150, 		128, 	1.5)
control_functions.setcontrols(30, 		128, 		128, 		128, 	1)
control_functions.setcontrols(35, 		128, 		128, 		128, 	0.2)
control_functions.setcontrols(0, 		128, 		128, 		128, 	0.1)