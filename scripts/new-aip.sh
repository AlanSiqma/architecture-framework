#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso: ./new-aip.sh <número>"
  exit 1
fi

NUMBER="$1"
TITLE="Título da Proposta"
TEMPLATE="../templates/aip-template.md"
DIR="../aip/AIP-$NUMBER"
FILE="$DIR/AIP-$NUMBER.md"
DRAWIO="$DIR/AIP-$NUMBER.drawio"

mkdir -p "$DIR"
sed "s/AIP-XXXX/AIP-$NUMBER/g" "$TEMPLATE" > "$FILE"
touch "$DRAWIO"

echo "✅ AIP-$NUMBER criado em $DIR"
