#!/bin/sh
# Regenera index.html (página completa) a partir de deck.html.
cd "$(dirname "$0")" || exit 1
{
  printf '<!doctype html>\n<html lang="es">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  cat deck.html
  printf '\n</html>\n'
} > index.html
echo "index.html actualizado"
