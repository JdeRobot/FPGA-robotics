import msvcrt
import serial
import time


# Parametros
#print("Puerto? COM:")
#puerto = input()
#PUERTO = 'COM'+str(puerto)
#print("BaurRate? BR=")
#BR = input()
#BAUDRATE = BR

PUERTO = 'COM5'
BAUDRATE = 54600
ser=serial.Serial(PUERTO,BAUDRATE)
print('Se imprimira por el puerto '+PUERTO+' lo introducido por teclado a '+str(BAUDRATE)+' Baudios...')





print('Enviando Secuencia de Comandos...')
# Primera trama despegue
ser.write(str(chr(255)))
#time.sleep(0.002) # espera en segundos
ser.write(str(chr(90)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))		# Arriba Abajo
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))	# Derecha Izquierda
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.003) # espera en segundos
time.sleep(1) # espera en segundos
# Primera trama despegue
ser.write(str(chr(255)))
#time.sleep(0.002) # espera en segundos
ser.write(str(chr(90)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(200)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.003) # espera en segundos
time.sleep(0.3) # espera en segundos
# Primera trama despegue
ser.write(str(chr(255)))
#time.sleep(0.002) # espera en segundos
ser.write(str(chr(90)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(100)))		# Arriba Abajo
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))		# Derecha Izquierda
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.003) # espera en segundos
time.sleep(0.1)















time.sleep(2) # espera en segundos










# Aterrizaje
ser.write(str(chr(255)))
#time.sleep(0.002) # espera en segundos
ser.write(str(chr(90)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(75)))		# Arriba Abajo
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))	# Derecha Izquierda
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
time.sleep(1) # espera en segundos

# Parada
ser.write(str(chr(255)))
#time.sleep(0.002) # espera en segundos
ser.write(str(chr(90)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))		# Arriba Abajo
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))	# Derecha Izquierda
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(128)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))
#time.sleep(0.001) # espera en segundos
ser.write(str(chr(0)))