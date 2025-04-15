#!/bin/bash

VERSION="1.0.0"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Función compatible con Git Bash para rutas absolutas
realpath_cross() {
    if command -v realpath >/dev/null 2>&1; then
        realpath "$1"
    else
        python3 -c "import os; print(os.path.abspath('$1'))"
    fi
}

print_help() {
    echo "spkg - CH552 SDK CLI Tool (Git Bash Compatible)"
    echo ""
    echo "Uso:"
    echo "  spkg -p <ruta> [comando]    Ejecuta 'make <comando>' en la ruta"
    echo "  spkg compose                Ejecuta docker compose build"
    echo "  spkg --version              Muestra la versión"
    echo "  spkg --help                 Muestra esta ayuda"
    echo ""
    echo "Comandos make disponibles:"
    echo "  all      -> Compila y construye todo"
    echo "  bin      -> Genera binario"
    echo "  hex      -> Genera archivo HEX"
    echo "  clean    -> Limpia los archivos generados"
    echo ""
    echo "Ejemplos:"
    echo "  spkg -p ./template"
    echo "  spkg -p ./examples/Blink/ clean"
}

# Mostrar versión
if [[ "$1" == "--version" ]]; then
    echo "spkg version $VERSION"
    exit 0
fi

# Mostrar ayuda
if [[ "$1" == "--help" ]]; then
    print_help
    exit 0
fi

# Construcción de contenedor
if [[ "$1" == "compose" ]]; then
    echo "🔧 Construyendo imagen Docker..."
    docker compose -f "$SCRIPT_DIR/docker-compose.yml" build
    exit $?
fi

# Compilación por ruta
if [[ "$1" == "-p" && -n "$2" ]]; then
    PROJECT_DIR="$2"
    MAKE_CMD="${3:-bin}"
    FULL_PATH="$(realpath_cross "$PROJECT_DIR")"

    if [ ! -f "$FULL_PATH/Makefile" ]; then
        echo "❌ No se encontró un Makefile en $FULL_PATH"
        exit 1
    fi

    echo "🚀 Ejecutando 'make $MAKE_CMD' en: $FULL_PATH"
    docker compose -f "$SCRIPT_DIR/docker-compose.yml" run --rm \
        -v "$FULL_PATH":/project -w /project ch552_compiler make $MAKE_CMD

    # Verifica binario si se compila
    if [[ "$MAKE_CMD" == "bin" || "$MAKE_CMD" == "all" ]]; then
        if [ -f "$FULL_PATH/build/main.bin" ]; then
            echo "✅ Compilación exitosa: $FULL_PATH/build/main.bin generado."
        else
            echo "❌ Error durante la compilación."
        fi
    fi
    exit 0
fi

print_help
exit 1
