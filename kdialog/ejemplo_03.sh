#!/bin/bash
kdialog --title "https://www.atareao.es" \
        --warningyesno "¿Quiere continuar?" 0 0 
ans=$?
if [ $ans -eq 0 ]
then
    echo "Quiere continuar"
else
    echo "No quiere continuar"
fi
