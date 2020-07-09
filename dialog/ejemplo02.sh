#!/bin/bash
respuesta=$(dialog --stdout \
                   --title "https://www.atareao.es" \
                   --checklist "Elige una opción" 0 0 0 \
                   1 tutoriales on\
                   2 artículos off\
                   3 podcast on)
echo $respuesta
ans=$?
if [ $ans -eq 0 ]
then
    echo Si
else
    echo No
fi
