
import time
import control_functions



# -------------------------------------- Flight -------------------------------------- #
# Takeoff
print('Taking off...')
# Mejor estabilidad para 25 de altura
alt_kp = 60;
alt_ki = 3;
alt_kd = 100;
xy_kp = 10;
xy_ki = 255;
xy_kd = 50;

# Tensados
alt_kp = 90;
alt_ki = 3;
alt_kd = 125;
xy_kp = 11;
xy_ki = 255;
xy_kd = 50;


# --------------------------- TAKE OFF ---------------------------
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(0,		alt_ki,	0,		xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
# Set Flight Parameters		  AA 	DI		DD 		GID 	Order Duration
control_functions.setcontrols(20, 	128, 	128, 	128, 	0.5)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(alt_kp,	alt_ki,	alt_kd,	xy_kp, 	xy_ki, 	xy_kd,	128)	# Con XY
control_functions.setcontrols(20, 	128, 	128, 	128, 	2.5)



# --------------------------- FLIGHT ---------------------------
# Avanza
print('Flight...')
flight_Delante = 240;
flight_Derecha = 128;
flight_GiroDer = 128;
# Set Flight Parameters	   AA 	DI				DD 				GID  			Duration	Steps
control_functions.settrace(20, 	flight_Derecha, flight_Delante, flight_GiroDer, 4.0,		20)
print('Stop...')

# Corrige error de rotacion
flight_GiroDer = 126;
# Set Flight Parameters		  AA  DI			  DD 			  GID 				Order Duration
control_functions.setcontrols(20, flight_Derecha, flight_Delante, flight_GiroDer, 	1)
#time.sleep(1) # espera en segundos

# Retrocede
print('Return...')
flight_Delante = 128;
flight_Derecha = 128;
flight_GiroDer = 128;
# Set Flight Parameters	   AA 	DI				DD 				GID  			Duration	Steps
control_functions.settrace(20, 	flight_Derecha, flight_Delante, flight_GiroDer, 4.0,		20)
#time.sleep(0.1) # espera en segundos



# --------------------------- LANDING ---------------------------
print('Landing...')
# Set Flight Parameters		  AA 	DI				DD 				GID 				Order Duration
control_functions.setcontrols(11, 	flight_Derecha, flight_Delante, flight_GiroDer, 	1)
control_functions.setcontrols(16, 	flight_Derecha, flight_Delante, flight_GiroDer, 	0.2)
# Set Trim & PID Parameters	   Alt_Kp	Alt_Ki	Alt_Kd	XY_Kp	XY_Ki	XY_Kd 	Giro
control_functions.setPIDValues(alt_kp,	16,		0,		xy_kp, 	255, 	xy_kd,	128)
# Set Flight Parameters		  AA 	DI				DD 				GID 				Order Duration
control_functions.setcontrols(0, 	flight_Derecha, flight_Delante, flight_GiroDer, 	0.2)