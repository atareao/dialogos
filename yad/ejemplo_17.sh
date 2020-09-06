#!/bin/bash
datos=$(yad --form \
            --title="https://www.atareao.es" \
            --text="Introduce los siguientes datos" \
            --center \
            --field="Nombre" \
            --field="Apellido" \
            --field="Contraseña":H \
            --field="Edad":NUM \
            --field="Fecha de nacimiento":DT)
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has introducido los siguientes datos:"
    IFS="|" read -r -a array <<< "$datos"
    echo Nombre: "${array[0]}"
    echo Apellido: "${array[1]}"
    echo Contraseña: "${array[2]}"
    echo Edad: "${array[3]}"
    echo Fecha de nacimiento: "${array[4]}"
else
    echo "Has cancelando"
fi

