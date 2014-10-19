rem Lemon player SDCC
lcc -Wa-l -DUSE_SFR_FOR_REG -c -o lemon.o exemple.c
lcc -Wa-l -DUSE_SFR_FOR_REG -Wf-bo1 -c -o fullos.o fullos.c
lcc -Wl-m -DUSE_SFR_FOR_REG -Wl-yt2 -Wl-yo4 -Wl-yp0x143=0x80 -o lemon.gb lemon.o fullos.o 
del *.o
del *.lst
del *.map
