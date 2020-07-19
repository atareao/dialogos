#!/bin/bash
for i in $(seq 0 10 100)
do
    sleep 1
    echo $i | dialog --gauge "Espera hasta que termine\n por favor" 0 0 0
done
