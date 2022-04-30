#import msvcrt
import serial
import time

# Open USB Port:
PUERTO = 'COM11'
BAUDRATE = 500000
ser=serial.Serial(PUERTO,BAUDRATE)
print('Se enviara por el puerto '+PUERTO+' las ordenes a '+str(BAUDRATE)+' Baudios...')

TrimmValues = [ 0, 0, 128, 128 ,0 ,0 ,0 ,0]



# Setting up trimming values
def setPIDValues(alt_kp,alt_ki,alt_kd,xy_kp,xy_ki,xy_kd,OffGiroDI):
	TrimmValues[0]= alt_kp;		# Constante proporcional PID Altura
	TrimmValues[1]= xy_kp;		# Constante proporcional PID XY
	TrimmValues[2]= 0;
	TrimmValues[3]= OffGiroDI;	# Offset Trim Giro.
	TrimmValues[4]= alt_ki;		# Constante integral PID Altura
	TrimmValues[5]= alt_kd;		# Constante derivativa PID Altura
	TrimmValues[6]= xy_ki;		# Constante integral PID XY
	TrimmValues[7]= xy_kd;		# Constante derivativa PID XY



# Flight Control Functions
def setcontrols(ArrAb,DerIzq,DelDet,GiroDI,Duracion):
	ser.write(str(chr(255)))
	ser.write(str(chr(90)))
	ser.write(str(chr(ArrAb)))		# Arriba Abajo Control Posicion [0 255]. Default: 0 Landed
	ser.write(str(chr(DerIzq)))		# Derecha Izquierda Control Velocidad [0 255]. Default: 128 Steady
	ser.write(str(chr(DelDet)))		# Delante Detras Control Velocidad [0 255]. Default: 128 Steady
	ser.write(str(chr(GiroDI)))		# Giiro Derecha Izquierda Control Abierto [0 255]. Default: 128 Steady
	ser.write(str(chr(TrimmValues[0])))
	ser.write(str(chr(TrimmValues[1])))
	ser.write(str(chr(TrimmValues[2])))
	ser.write(str(chr(TrimmValues[3])))
	ser.write(str(chr(TrimmValues[4])))
	ser.write(str(chr(TrimmValues[5])))
	ser.write(str(chr(TrimmValues[6])))
	ser.write(str(chr(TrimmValues[7])))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	time.sleep(Duracion) # espera en segundos