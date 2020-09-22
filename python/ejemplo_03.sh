#!/bin/bash
python3 ejemplo_03.py
ans=$?
if [ $ans -eq 0 ]
then
    echo "Si que quiere continuar"
else
    echo "No quiere continuar"
fi
