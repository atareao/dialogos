#!/bin/bash
data=$(gjs ejemplo_05.js)
ans=$?
if [ $ans -eq 0 ]
then
    IFS='|' read -ra data <<<${data}
    nombre=${data[0]}
    password=${data[1]}
    echo "Tu nombre es ${nombre}"
    echo "Tu contraseña es ${password}"
else
    echo "No me ha querido responder"
fi
