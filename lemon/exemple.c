/*
	GB Lemon tracker
 code by Lemon on 06 July 2000
 
(this time it will work with SDCC GBDK 2.94)

 this exemple just launch the music player.
 you just need to add your code in this file et voila :)


 if you use this source (or part) in your code just put me in the greetings... ^_^
 
 lemon@urbanet.ch

*/ 


#include "gb\gb.h"

#include "LP1.297a.c"

/****************************************************************************/

void main()
{

clock01=0;
step=0;
patern=0;
stopmusic();
patern_definition();

while (1)
{
	if (clock01>=7){clock01=0;}      // set the speed of your music

	wait_vbl_done();

	if (!clock01) {music();}

	clock01+=1;

	}
}
