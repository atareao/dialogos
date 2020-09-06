#!/bin/bash
edad=$(yad --entry \
           --title="https://www.atareao.es" \
           --image=gtk-info \
           --width=250 \
           --height=80 \
           --width=250 \
           --button=Aceptar:0 \
           --button="No te lo quiero decir":1 \
           --center \
           --numeric \
           --text-align=center \
           --text="Dime tu edad")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Tu edad es: ${edad}"
else
    echo "No me quiere decir su edad"
fi
