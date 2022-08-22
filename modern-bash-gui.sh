#!/bin/bash
# Ask the user for light amount

while true
do
	if zenity --question --title="Brightness Controller" --text="Are you sure you want to change brightness?" --no-wrap 
	    then
	    	light=$(zenity --entry --title="Input value" --text="Enter a number from range(0.1 , 1)")
			if [[ $light > 1 ]] || [[ $light < 0.1 ]]
		    then
		      zenity --warning --title="Incorrect Value" --text="Please Choose from range (0.1 , 1)" --no-wrap
		    else
		      # LVDS-1-1 is my display outpt name you must check it for your system with 'xrandr --query' command.
		      xrandr --output LVDS-1-1 --brightness $light
		      notify-send "Brightness Controller" "Successfully brightness changed."
		    fi
	else
		break
	fi
done