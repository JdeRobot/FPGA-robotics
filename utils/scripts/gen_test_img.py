
import math
import numpy as np
import imageio as iio

# set image number of cols and rows
N_COLS = 80 # works better with powers of 2
N_ROWS = 60 # works better with powers of 2

# Blue will be the large division. i.e:
#
#       x0        x1
#     -----------------
#    |   00   :   01   |
# 0x |    0   :   64   |
#    |........:........|
#    |   10   :   11   |
# 0x |  127   :  255   |
#    |________:________|
#
#
#      xx00      xx01
#     ----------------------------------
#    |  0000  :  0001  :  0010  :  0011  |
# 0x |     0  :    64  :|
#    |........:........|
#    |    10  :   11   |
# 0x |   127  :  255   |
#    |________:________|
#
# And then inside each block, red will be on the columns
# and blue on the rows

# div 4:
#   0   1   2   3
#  00  01  10  11

# if NUM_COL=16 and DIV_COL=4
#    0-3   4-7   8-11  12-15
#      0     1      2      3
#     00    01     10     11
#      0  0.25    0.5   0.75

COLOR_CH_BITS = 8  # bits for the color (dont change it for now)

RED_DIV   = 4  # should be divisible by 2
GREEN_DIV = 4  # should be divisible by 2
BLUE_DIV  = 4  # should be divisible by 4

# these are the number of MSB that will be used for the color
red_bits   = int(math.log(RED_DIV,2))  # 2 bits (for div 4)
green_bits = int(math.log(GREEN_DIV,2))
blue_bits  = int(math.log(BLUE_DIV,2))
# for the blue channel, the bits will be divided for columns (LSB) and rows (MSB)
                                       # DIV=4  ; DIV=16
sh_red   = COLOR_CH_BITS - red_bits    # 8 - 2
sh_green = COLOR_CH_BITS - green_bits  # 
sh_blue  = COLOR_CH_BITS - blue_bits   # 8 - 2  ;  8 - 4
sh_blue_side  = sh_blue >> 1  # each side the half

print('red bits: ' + str(red_bits))

blue_div_2 = int( math.sqrt(BLUE_DIV))
print('blue_div_2: ' + str(blue_div_2))

blue_col_width = N_COLS // blue_div_2 
blue_row_height = N_ROWS // blue_div_2 

print('blue_row_height: ' + str(blue_row_height)) 

green_row_height = blue_row_height // GREEN_DIV

red_col_width = blue_col_width // RED_DIV

print ('green row height: ' + str(green_row_height))

filename = ('colortest_' + str(N_COLS) + 'x' + str(N_ROWS) + '_div_r' +
            str(RED_DIV) + 'g' + str(GREEN_DIV) + 'b' + str(BLUE_DIV) + '.png')

pxldata_type = np.uint8
pxl_max_val = np.iinfo(pxldata_type).max
dt = np.dtype(pxldata_type)
np_img = np.empty([N_ROWS, N_COLS, 3], dt)

# so we have 8 bit for each color channel
# if we divide each channel by 4, we need 2 bits for the 4 levels
# the 6 LSB are the same for all
# 00 00 00
# 01 01 01
# 10 10 10
# 11 11 11
# if we divide each channel by 16, we need 4 bits for the 16 levels
# the 4 LSB are the same for all
# 0000
# 0001
# 0010
# 0011
# 0100
# 0101
# 0110
# 0111
# 1000
# 1001
# 1010
# 1011
# 1100
# 1101
# 1110
# 1111


for row_i in range (N_ROWS):
    blue_row_bin_i = row_i >> sh_blue # shift 6 (DIV=4) or shift 4(DIV=16)
    blue_row_i = min(row_i // blue_row_height, BLUE_DIV/2-1) # which blue row grid
    #print('\nblue row: ' + str(blue_row_i))
    blue_row_color = (blue_row_i << sh_blue) << (blue_bits//2) # rows are most signficant
    #print('blue row color: ' + str(blue_row_color))

    in_row_i = row_i % blue_row_height # which inner blue row grid
    #print('in_row_i: ' + str(in_row_i))
    green_row_bin = min(in_row_i // green_row_height, GREEN_DIV-1) # equally divide the rows
    #print('green_row_bin: ' + str(green_row_bin))
    green_color = (green_row_bin << sh_green)
    #print('green color: ' + str(green_color))
    for col_i in range (N_COLS):
        blue_col_i = min(col_i // blue_col_width, BLUE_DIV/2-1) # which blue column grid
        in_col_i = min(col_i % blue_col_width, blue_col_width-1) # which inner column grid
        blue_col_color = blue_col_i << sh_blue

        #print('in_col_i: ' + str(in_col_i))
        red_col_bin = in_col_i // red_col_width # equally divide the columns
        #print('red_col_bin: ' + str(red_col_bin))
        red_color = min(255, (red_col_bin << sh_red))
        #print('red color: ' + str(red_color))

        blue_color = blue_row_color + blue_col_color
        #print('blue color: ' + str(blue_color))
        np_img[row_i, col_i] = (red_color, green_color, blue_color)


#print(np_img)
iio.imwrite(filename, np_img)
  


