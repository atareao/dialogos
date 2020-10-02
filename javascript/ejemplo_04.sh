#!/bin/bash
nombre=$(gjs ejemplo_04.js)
ans=$?
if [ $ans -eq 0 ]
then
    echo "Tu nombre es ${nombre}"
else
    echo "No me ha querido decir el nombre"
fi
