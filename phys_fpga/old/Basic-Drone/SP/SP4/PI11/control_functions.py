#import msvcrt
import serial
import time

# Open USB Port:
PUERTO = 'COM24'
#BAUDRATE = 500000	# Modify to Standard 57600
BAUDRATE = 54600	# Modify to Standard 57600
ser=serial.Serial(PUERTO,BAUDRATE)
print('Se enviara por el puerto '+PUERTO+' las ordenes a '+str(BAUDRATE)+' Baudios...')

TrimmValues = [ 0, 128, 128, 128 ]	# Offsets: Arriba/Abajo Derecha/Izquierda Delante/Detras GiroIzquierda/Derecha



# Setting up trimming values
def setTrimmValues(OffArrAb,OffDerIzq,OffDelDet,OffGiroDI):
	TrimmValues[0]= OffArrAb;
	TrimmValues[1]= OffDerIzq;
	TrimmValues[2]= OffDelDet;
	TrimmValues[3]= OffGiroDI;



# Flight Control Functions
def setcontrols(ArrAb,DerIzq,DelDet,GiroDI,Duracion):
	ser.write(str(chr(255)))
	ser.write(str(chr(90)))
	ser.write(str(chr(ArrAb)))		# Arriba Abajo
	ser.write(str(chr(DerIzq)))	# Derecha Izquierda
	ser.write(str(chr(DelDet)))
	ser.write(str(chr(GiroDI)))
	ser.write(str(chr(TrimmValues[0])))
	ser.write(str(chr(TrimmValues[1])))
	ser.write(str(chr(TrimmValues[2])))
	ser.write(str(chr(TrimmValues[3])))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	ser.write(str(chr(0)))
	time.sleep(Duracion) # espera en segundos