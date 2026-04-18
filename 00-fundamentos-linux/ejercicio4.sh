#!/bin/bash

palabra="$1"

if [ -z "$palabra" ]; then
    echo "No hay argumentos"
    exit 1
fi 

URL="https://baconipsum.com/api/?type=all-meat&paras=10&format=text"


fichero="contenido_web.txt"

curl -s "$URL" > "$fichero"

contador=$(grep -o "$palabra" "$fichero" | wc -l)



if [ "$contador" -eq 0 ]; then

echo "No se ha encontrado la palabra \"$palabra\""

else

primera_linea=$(grep -n "$palabra" "$fichero" | head -1 | cut -d: -f1)


echo "La palabra \"$palabra\" aparece $contador veces"
echo "Aparece por primera vez en la linea $primera_linea"

fi

rm "$fichero"
