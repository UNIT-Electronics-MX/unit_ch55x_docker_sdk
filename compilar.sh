#!/bin/bash

# Directorio del script (base del proyecto)
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$BASE_DIR"

# Ruta del proyecto a compilar (argumento 1)
PROJECT_DIR="$1"

if [ -z "$PROJECT_DIR" ]; then
    echo "❌ Debes especificar la ruta del proyecto (ej. ./compilar.sh template)"
    exit 1
fi

# Ruta absoluta al proyecto
FULL_PATH="$(realpath "$PROJECT_DIR")"

# Verificación
if [ ! -f "$FULL_PATH/Makefile" ]; then
    echo "❌ No se encontró un Makefile en $FULL_PATH"
    exit 1
fi

echo "🚀 Compilando CH552 en: $FULL_PATH"

# Ejecutar docker compose con volumen dinámico
docker compose run --rm -v "$FULL_PATH":/project -w /project ch552_compiler make bin

# Verificar si la compilación fue exitosa
if [ -f "$FULL_PATH/build/main.bin" ]; then
    echo "✅ Compilación exitosa: $FULL_PATH/build/main.bin generado."
else
    echo "❌ Error durante la compilación."
fi
