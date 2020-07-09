#!/bin/bash
respuesta=$(dialog --stdout \
                   --title "https://www.atareao.es" \
                   --yesno "¿Te gusta este tutorial?" 0 0)
ans=$?
if [ $ans -eq 0 ]
then
    echo Si
else
    echo No
fi
