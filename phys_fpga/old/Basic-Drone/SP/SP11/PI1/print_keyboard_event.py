import msvcrt
import serial

# Parametros
print("Puerto? COM:")
puerto = input()
PUERTO = 'COM'+str(puerto)
print("BaurRate? BR=")
BR = input()
BAUDRATE = BR

ser=serial.Serial(PUERTO,BAUDRATE)
print('Se imprimira por el puerto '+PUERTO+' lo introducido por teclado a '+str(BAUDRATE)+' Baudios...')

while True:
    if msvcrt.kbhit():
        key = msvcrt.getch()
        print(key)   # just to show the result
                     # https://docs.python.org/2/library/msvcrt.html
        ser.write(key)
