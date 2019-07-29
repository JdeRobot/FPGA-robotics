import random, sys
import pygame
from pygame.locals import *
import time
import serial

# Parametros
color_fondo = (180, 180, 180)


# Inicializacion del puerto serie
print("Puerto? COM:")
puert = input()
PUERTO = 'COM'+str(puert)
print("BaurRate? BR=")
BR = input()
BAUDRATE = BR
ser=serial.Serial(PUERTO,BAUDRATE)
print('Se imprimira por el puerto '+PUERTO+' las pulsadiones de a, w, s, d, shift y espacio a '+str(BAUDRATE)+' Baudios...')

# Inicializacion del handler de teclado, display y demas
pygame.init()
pygame.display.set_caption("Mando")
screen = pygame.display.set_mode((245,258))
screen.fill(color_fondo)
#fondo = pygame.image.load('ruta_del_fondo')
#screen.blit(fondo, (0, 0))	# (imagen, coordenada_X, coordenada_Y)
flechaDerecha = pygame.image.load('Right.jpg')
flechaIzquierda = pygame.image.load('Left.jpg')
flechaAdelante = pygame.image.load('Up.jpg')
flechaAtras = pygame.image.load('Down.jpg')
flechaArriba = pygame.image.load('UpUp.jpg')
flechaAbajo = pygame.image.load('DownDown.jpg')
bind = pygame.image.load('Bind.jpg')
print("Mando a la espera!")


# Loop
while 1:
	# Se pinta la pantalla
	screen.fill(color_fondo)



	# Lectura de eventos
	for event in pygame.event.get():
		if event.type == QUIT:
			pygame.quit()
			sys.exit(0)



    # Teclado:
	#if event.type == pygame.KEYDOWN:
	keys = pygame.key.get_pressed()
	if keys[pygame.K_a] == 1:
		screen.blit(flechaIzquierda, (0, 65))
		ser.write("a")
	if keys[pygame.K_w] == 1:
		screen.blit(flechaAdelante, (65, 0))
		ser.write("w")
	if keys[pygame.K_s] == 1:
		screen.blit(flechaAtras, (65, 65))
		ser.write("s")
	if keys[pygame.K_d] == 1:
		screen.blit(flechaDerecha, (120, 65))
		ser.write("d")
	if keys[pygame.K_SPACE] == 1:
		screen.blit(flechaArriba, (185, 0))
		ser.write("]")
	if keys[pygame.K_LSHIFT] == 1:
		screen.blit(flechaAbajo, (185, 129))
		ser.write("[")
	if keys[pygame.K_b] == 1:
		screen.blit(bind, (0, 213))
		ser.write("b")
	pygame.display.update()
	time.sleep(0.02)