#!/bin/bash
kdialog --title "https://www.atareao.es" \
        --warningyesnocancel "¿Quiere continuar?" 0 0 
ans=$?
echo $ans
if [ $ans -eq 0 ]
then
    echo "Ha pulsado el botón Si"
elif [ $ans -eq 1 ]
then
    echo "Ha pulsado el botón No"
else
    echo "Ha pulsado el botón cancelar"
fi
