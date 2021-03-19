#!/bin/bash
ans=$(whiptail --title "https://www.atareao.es" \
               --menu "Elige una opción" 10 80 2 \
               "Añadir" "Añadir un usuario" \
               "Modificar" "Modificar un usuario" \
               "Eliminar" "Eliminar un usuario" \
               "Listar" "Listar los usuarios" \
               3>&1 1<&2 2>&3)
salida=$?
if [ $salida -eq 0 ]
then
    echo "Has seleccionado la opción ${ans}"
else
    echo "No has seleccionado ninguna opción"
fi

