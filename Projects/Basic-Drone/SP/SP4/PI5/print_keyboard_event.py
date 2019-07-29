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
        	print('Enviando trama 0x FF 5A 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E')
        	print('Enviando trama 0x FF 5B 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E')
        	print('Enviando trama 0x FF 5A 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E + 1')
        	print('Enviando trama 0x FF 5A 01 46 ...')
        	# Primera trama
        	ser.write(str(chr(255)))
        	time.sleep(0.002) # espera en segundos
        	ser.write(str(chr(90)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(1)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(2)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(3)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(4)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(5)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(6)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(7)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(8)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(9)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(10)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(11)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(12)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(13)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(14)))
        	time.sleep(0.003) # espera en segundos
        	# Segunda trama
        	ser.write(str(chr(255)))
        	time.sleep(0.002) # espera en segundos
        	ser.write(str(chr(91)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(1)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(2)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(3)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(4)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(5)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(6)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(7)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(8)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(9)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(10)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(11)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(12)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(13)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(14)))
        	time.sleep(0.003) # espera en segundos
        	# Tercera trama
        	ser.write(str(chr(255)))
        	time.sleep(0.002) # espera en segundos
        	ser.write(str(chr(90)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(11)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(21)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(31)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(41)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(51)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(61)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(71)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(81)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(91)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(101)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(111)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(121)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(131)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(141)))
        	time.sleep(0.003) # espera en segundos
        	# Cuarta trama
        	ser.write(str(chr(255)))
        	time.sleep(0.002) # espera en segundos
        	ser.write(str(chr(90)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(02)))
        	time.sleep(0.001) # espera en segundos
        	ser.write(str(chr(70)))