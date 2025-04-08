#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "🚀 Compilando CH552 con Docker Compose..."
docker compose run --rm ch552_compiler

if [ -f "$SCRIPT_DIR/project/main.bin" ]; then
    echo "✅ Compilación exitosa: project/main.bin generado."
else
    echo "❌ Error durante la compilación."
fi
