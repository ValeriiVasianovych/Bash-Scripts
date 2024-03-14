#!/bin/bash

function showFiglet() {
  echo "This script will display colorful text using figlet"
  read -p "Enter the text to display in figlet: " text

  duration=30
  for (( i=0; i < duration; i++ )); do
    clear
    figlet "$text" | lolcat
    sleep 0.5
  done
}

if ! [ -x "$(command -v figlet)" ] && ! [ -x "$(command -v lolcat)" ]; then
  read -p "Do you want to install figlet and lolcat? (y/n): " response
  if [ $response == "y" ]; then
    sudo apt-get install figlet lolcat -y
    figlet "figlet installed" | lolcat
    showFiglet
  else
    echo "figlet is required to run this script"
    exit 1
  fi
else 
  showFiglet
fi
