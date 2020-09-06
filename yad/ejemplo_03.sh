#!/bin/bash
yad --title="https://www.atareao.es" \
    --center \
    --width=250 \
    --height=80 \
    --text-align=center \
    --text="¿Quieres continuar?" \
    --button=Si:0 \
    --button=No:1
ans=$?
if [ $ans -eq 0 ]
then
    echo "Si que quiere continuar"
else
    echo "No quiere continuar"
fi
