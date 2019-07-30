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

while True:
    if msvcrt.kbhit():
        key = msvcrt.getch()
        if (key == 'w'):
        	print(key)   # just to show the result
        	ser.write('w')
        	#time.sleep(0.001) # espera en segundos
        	ser.write('a')
        	#time.sleep(0.001) # espera en segundos
        	ser.write('w')
        if (key == 'd'):
        	print(key)   # just to show the result
        	ser.write('d')
        	#time.sleep(0.001) # espera en segundos
        	ser.write('a')
        	#time.sleep(0.001) # espera en segundos
        	ser.write('d')
