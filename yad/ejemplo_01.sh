#!/bin/bash
yad --title="https://www.atareao.es" \
    --image="stop" \
    --window-icon="stop" \
    --center \
    --width=350 \
    --timeout=5 \
    --no-buttons \
    --timeout-indicator=bottom \
    --text="Este es el <b>mensaje</b> que se muestra" \
    --text-align=center

