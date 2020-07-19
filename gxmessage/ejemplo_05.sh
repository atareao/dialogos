#!/bin/bash
gxmessage --title "https://www.atareao.es" \
          --center \
          --buttons "Personal:1,Profesional:2,Otro:3" \
          "Elige una opción"
ans=$?
if [ $ans -eq 1 ]
then
    echo "Personal"
elif [ $ans -eq 2 ]
then
    echo "Profesional"
elif [ $ans -eq 3 ]
then
    echo "Otro"
else
    echo "No ha respondido"
fi
