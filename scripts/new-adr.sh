#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso: ./new-adr.sh <número> [aip-relacionado]"
  exit 1
fi

NUMBER="$1"
AIP=${2:-XXXX}
TEMPLATE="../templates/adr-template.md"
OUTPUT="../adr/ADR-$NUMBER.md"

sed -e "s/ADR-XXXX/ADR-$NUMBER/g" -e "s/AIP-XXXX/AIP-$AIP/g" "$TEMPLATE" > "$OUTPUT"

echo "✅ ADR-$NUMBER criado em $OUTPUT"
