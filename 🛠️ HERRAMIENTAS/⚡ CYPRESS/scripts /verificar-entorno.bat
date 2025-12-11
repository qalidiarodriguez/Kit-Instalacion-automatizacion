---

## ⚡ **ARCHIVO: `scripts/verificar-entorno.bat` (PARA WINDOWS)**

```batch
@echo off
echo ========================================
echo 🧪 VERIFICADOR DE ENTORNO QA - WINDOWS
echo ========================================
echo.

echo 1. ✅ Verificando Sistema Operativo...
ver
echo.

echo 2. ✅ Verificando Node.js y npm...
where node >nul 2>&1
if %errorlevel% equ 0 (
    echo Node.js encontrado:
    node --version
) else (
    echo ❌ Node.js NO encontrado
    echo Visita: https://nodejs.org
)
echo.

where npm >nul 2>&1
if %errorlevel% equ 0 (
    echo npm encontrado:
    npm --version
) else (
    echo ❌ npm NO encontrado
)
echo.

echo 3. ✅ Verificando Git...
where git >nul 2>&1
if %errorlevel% equ 0 (
    echo Git encontrado:
    git --version
) else (
    echo ❌ Git NO encontrado
    echo Visita: https://git-scm.com
)
echo.

echo 4. ✅ Verificando configuración Git...
git config --global user.name >nul 2>&1
if %errorlevel% equ 0 (
    echo Git user.name configurado: 
    git config --global user.name
) else (
    echo ⚠️ Git user.name NO configurado
    echo Ejecuta: git config --global user.name "Tu Nombre"
)
echo.

git config --global user.email >nul 2>&1
if %errorlevel% equ 0 (
    echo Git user.email configurado:
    git config --global user.email
) else (
    echo ⚠️ Git user.email NO configurado
    echo Ejecuta: git config --global user.email "tu@email.com"
)
echo.

echo 5. ✅ Verificando espacio en disco...
wmic logicaldisk where "DeviceID='C:'" get Size,FreeSpace /value | find "FreeSpace"
echo.

echo ========================================
echo 📋 RESUMEN:
echo.
echo Instrucciones:
echo 1. Guarda este archivo como "verificar.bat"
echo 2. Haz doble click para ejecutar
echo 3. Si ves ❌, sigue las instrucciones
echo 4. Si todo está ✅, ¡estás listo/a!
echo ========================================

pause
