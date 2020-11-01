#!/bin/bash

xlimit=1366
yleft=768
yright=1920
sensitivity=15

while [ true ]
	do
		eval $(xdotool getmouselocation --shell);
		if [ $X -ge $((xlimit+1)) ] && [ $X -le $((xlimit+sensitivity+1)) ]
			then
				((NEWY=Y*yleft/yright+((yright-yleft))));
				xdotool mousemove $((xlimit-sensitivity-1)) $NEWY;
		fi

		if [ $X -le $((xlimit)) ] && [ $X -ge $((xlimit-sensitivity)) ]
			then
				((NEWY=((Y-yright+yleft))*yright/yleft));
				xdotool mousemove $((xlimit+sensitivity+2)) $NEWY;
		fi
	done
