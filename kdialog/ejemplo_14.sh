#!/bin/bash
respuesta=$(kdialog --combobox "https://www.atareao.es" \
                    azul amarillo rojo "rosa palo")
ans=$?
if [ $ans -eq 0 ]
then
    echo "La opción seleccionada ha sido $respuesta"
else
    echo "No ha elegido ninguna opción"
fi
