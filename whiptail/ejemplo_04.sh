#!/bin/bash
whiptail --title "https://www.atareao.es" \
         --yesno "¿Quiere continuar?" 7 40 
ans=$?
echo $ans
if [ $ans -eq 0 ]
then
    echo "Respondió si"
else
    echo "Respondió no"
fi
