#!/bin/bash

if [ "$#" -ne 2 ]; then

echo "Se necesitan únicamente dos parámetros para ejecutar este script"
exit 1

fi

URL="$1"
palabra="$2"

fichero="contenido_web.txt"

curl -s "$URL" > "$fichero"

contador=$(grep -o "$palabra" "$fichero" | wc -l)

if [ "$contador" -eq 0 ]; then

echo "No se ha encontrado la palabra \"$palabra\""

else

if [ "$contador" -eq 1 ]; then

primera_linea=$(grep -n "$palabra" "$fichero" | head -1 | cut -d: -f1)

echo "La palabra \"$palabra\" aparece 1 vez"
echo "Aparece únicamente en la linea $primera_linea"

else 


primera_linea=$(grep -n "$palabra" "$fichero" | head -1 | cut -d: -f1)

echo "La palabra \"$palabra\" aparece $contador veces"
echo "Aparece por primera vez en la linea $primera_linea"

fi

fi

rm "$fichero"
