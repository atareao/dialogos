#!/bin/bash
gjs ejemplo_03.js
ans=$?
if [ $ans -eq 0 ]
then
    echo "Si que quiere continuar"
else
    echo "No quiere continuar"
fi
