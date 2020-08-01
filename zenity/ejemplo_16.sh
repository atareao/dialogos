#!/bin/bash
datos=$(zenity --forms \
               --title="https://www.atareao.es" \
               --text="Introduce los siguientes datos" \
               --add-entry="Nombre" \
               --add-entry="Apellido" \
               --add-password="Contraseña" \
               --add-calendar="Fecha de nacimiento")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has introducido los siguientes datos:"
    IFS="|" read -r -a array <<< "$datos"
    echo Nombre: "${array[0]}"
    echo Apellido: "${array[1]}"
    echo Contraseña: "${array[2]}"
    echo Fecha de nacimiento: "${array[3]}"
else
    echo "Has cancelando"
fi

