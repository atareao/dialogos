#!/bin/bash
respuesta=$(kdialog --calendar "Elige una fecha señalada")
ans=$?
if [ $ans -eq 0 ]
then
    echo "No ha elegido ninguna fecha"
else
    echo "La fecha seleccionada ha sido $respuesta"
fi
