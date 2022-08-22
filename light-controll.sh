#!/bin/bash
# Ask the user for light amount


while true
do

  echo "Do you want to change brightness value?(y/n)"
  read answer

  if [ "$answer" == "y" ]; 
  then

    echo Choose Number 0.1 to 1:
    read light

    if [[ $light > 1 ]] || [[ $light < 0.1 ]]
    then
      echo "Incorrect number !!!"
    else
      echo "great ;) I'm doing it now."

      # LVDS-1-1 is my display outpt name you must check it for your system with 'xrandr --query' command.
      xrandr --output LVDS-1-1 --brightness $light
    fi

  elif [ "$answer" == "n" ]; 
  then
    echo "Nice to meet you siktirr now :)))"
    break
  else
    echo "Choose correct option (y or n)."
  fi

done

