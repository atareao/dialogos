#!/bin/bash
respuesta=$(kdialog --slider "Selecciona un valor entre 1 y 10" \
                    1 10 2)
ans=$?
if [ $ans -eq 0 ]
then
    echo "No ha elegido ninguna opción"
else
    echo "La opción seleccionada ha sido $respuesta"
fi
