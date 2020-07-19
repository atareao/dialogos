#!/bin/bash
dialog --pause "Espera unos segundos" 0 0 5
ans=$?
if [ $ans -eq 0 ]
then
    echo "Si"
else
    echo "No"
fi

