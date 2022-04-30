#import msvcrt
import serial
import time

# Open USB Port:
PUERTO = 'COM11'
BAUDRATE = 500000	# Mmodify to Standard 57600
ser=serial.Serial(PUERTO,BAUDRATE)
print('Se enviara por el puerto '+PUERTO+' las ordenes a '+str(BAUDRATE)+' Baudios...')

TrimmValues = [ 0, 128, 128, 128 ,0 ,0]	# Kp_altura, Offsets: Derecha/Izquierda, Delante/Detras, GiroIzquierda/Derecha, Ki_altura, Kd_altura



# Setting up trimming values
def setPIDValues(alt_kp,alt_ki,alt_kd,OffDerIzq,OffDelDet,OffGiroDI):
	TrimmValues[0]= alt_kp;
	TrimmValues[1]= OffDerIzq;	# Mantenemos el trim hasta meter el resto de factores PID
	TrimmValues[2]= OffDelDet;	# Mantenemos el trim hasta meter el resto de factores PID 
	TrimmValues[3]= OffGiroDI;	# Mantenemos el trim hasta meter el resto de factores PID 
	TrimmValues[4]= alt_ki;
	TrimmValues[5]= alt_kd;



# Flight Control Functions
def setcontrols(ArrAb,DerIzq,DelDet,GiroDI,Duracion):
	ser.write(str(chr(255)))
	ser.write(str(chr(90)))
	ser.write(str(chr(ArrAb)))		# Arriba Abajo
	ser.write(str(chr(DerIzq)))		# Derecha Izquierda
	ser.write(str(chr(DelDet)))
	ser.write(str(chr(GiroDI)))
	ser.write(str(chr(TrimmValues[0])))
	ser.write(str(chr(TrimmValues[1])))
	ser.write(str(chr(TrimmValues[2])))
	ser.write(str(chr(TrimmValues[3])))
	ser.write(str(chr(TrimmValues[4])))
	ser.write(str(chr(TrimmValues[5])))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	time.sleep(Duracion) # espera en segundos