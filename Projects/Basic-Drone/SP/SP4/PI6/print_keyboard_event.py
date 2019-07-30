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

PUERTO = 'COM7'
BAUDRATE = 54600

ser=serial.Serial(PUERTO,BAUDRATE)
print('Se imprimira por el puerto '+PUERTO+' lo introducido por teclado a '+str(BAUDRATE)+' Baudios...')

while True:
    if msvcrt.kbhit():
        key = msvcrt.getch()
        print('Pulsado')
        if (key == 'w'):
        	print('Enviando trama: 0xFF 0x5A 0 128 128 128 128 128 128 128 0 0 0 0 0 0')
        	print('Equivalente en tiempo a: nulo medio medio medio')
        	print('Delay 1000ms');
        	print('Enviando trama: 0xFF 0x5A 50 128 128 128 128 128 128 128 0 0 0 0 0 0')
        	print('Equivalente en tiempo a: bajo medio medio medio')
        	print('Delay 500ms');
        	print('Enviando trama: 0xFF 0x5A 0 128 128 128 128 128 128 128 0 0 0 0 0 0')
        	print('Equivalente en tiempo a: nulo medio medio medio')
        	# Primera trama
        	ser.write(str(chr(255)))
        	time.sleep(0.002) # espera en segundos
        	ser.write(str(chr(90)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(1) # espera en segundos
        	# Segunda trama
        	ser.write(str(chr(255)))
        	time.sleep(0.002) # espera en segundos
        	ser.write(str(chr(90)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(50)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.003) # espera en segundos
        	time.sleep(0.5) # espera en segundos
        	# Primera trama
        	ser.write(str(chr(255)))
        	time.sleep(0.002) # espera en segundos
        	ser.write(str(chr(90)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(128)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(0)))
        	time.sleep(1) # espera en segundos