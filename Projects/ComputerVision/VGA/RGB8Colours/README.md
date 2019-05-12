This IceStudio project for IceZum Alhambra I reads binary data from a RGB(24 bits per pixel) 32x32 hex image and displays through VGA an 3 bit per pixel(8 colours) version of it.
Applying a colour filter where pixels exceeding a 50% threshold on its RGB 8 bit values will be displayed as 1 or otherwise as 0, effectively translating from 16,777,216 colors to 8.
this is necessary for the icezum HW limitations. 
