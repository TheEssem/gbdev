..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o mypaint.o mypaint.c
..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o mypaint.gb mypaint.o


rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o galaxy.o galaxy.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o galaxy.gb galaxy.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o space.o space.s
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o space.gb space.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o paint.o paint.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o paint.gb paint.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o rpn.o rpn.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o rpn.gb rpn.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o rand.o rand.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o rand.gb rand.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o comm.o comm.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o comm.gb comm.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o irq.o irq.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o irq.gb irq.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o filltest.o filltest.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o filltest.gb filltest.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o ram_fn.o ram_fn.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wl-g_inc_ram=0xD000 -Wl-g_inc_hiram=0xFFA0 -o ram_fn.gb ram_fn.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o fonts.o fonts.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o fonts.gb fonts.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o samptest.o samptest.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o samptest.gb samptest.o
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o banks.o banks.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wf-ba0 -c -o bank_0.o bank_0.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wf-bo1 -Wf-ba1 -c -o bank_1.o bank_1.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wf-bo2 -Wf-ba2 -c -o bank_2.o bank_2.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wf-bo3 -Wf-ba3 -c -o bank_3.o bank_3.c
rem ..\..\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wl-yt2 -Wl-yo4 -Wl-ya4 -o banks.gb banks.o bank_0.o bank_1.o bank_2.o bank_3.o
