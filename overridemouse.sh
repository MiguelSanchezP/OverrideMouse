#!/bin/bash

while [ true ]
	do
		eval $(xdotool getmouselocation --shell);
		if [ $X -ge 1367 ] && [ $X -le 1377 ]
			then
				((NEWY=Y*768/1920+1151));
				xdotool mousemove 1355 $NEWY;
		fi

		if [ $X -le 1366 ] && [ $X -ge 1356 ]
			then
				((NEWY=((Y-1151))*1920/768));
				xdotool mousemove 1378 $NEWY;
		fi
	done
