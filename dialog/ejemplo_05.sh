#!/bin/bash
dialog --title "https://www.atareao.es" \
       --yesno "¿Quiere continuar?" 0 0 
ans=$?
echo $ans
if [ $ans -eq 0 ]
then
    echo "Respondió si"
else
    echo "Respondió no"
fi
