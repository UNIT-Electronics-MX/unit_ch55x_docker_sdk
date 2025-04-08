@echo off
echo 🚀 Compilando CH552 con Docker Compose (Windows)...

docker compose run --rm ch552_compiler

if exist project\main.bin (
    echo ✅ Compilación exitosa: project\main.bin generado.
) else (
    echo ❌ Error durante la compilación.
)

pause
