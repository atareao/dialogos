#!/bin/bash
nombre=$(python3 ejemplo_04.py)
ans=$?
if [ $ans -eq 0 ]
then
    echo "Tu nombre es ${nombre}"
else
    echo "No me ha querido decir el nombre"
fi
