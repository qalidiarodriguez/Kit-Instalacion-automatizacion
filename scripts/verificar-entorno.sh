## 🐧 **ARCHIVO: scripts/verificar-entorno.sh (PARA MAC/LINUX)**

#!/bin/bash

echo "========================================"
echo "🧪 VERIFICADOR DE ENTORNO QA - MAC/LINUX"
echo "========================================"
echo ""

echo "1. ✅ Verificando Sistema Operativo..."
uname -a
echo ""

echo "2. ✅ Verificando Node.js y npm..."
if command -v node &> /dev/null; then
    echo "Node.js encontrado:"
    node --version
else
    echo "❌ Node.js NO encontrado"
    echo "Visita: https://nodejs.org"
fi
echo ""

if command -v npm &> /dev/null; then
    echo "npm encontrado:"
    npm --version
else
    echo "❌ npm NO encontrado"
fi
echo ""

echo "3. ✅ Verificando Git..."
if command -v git &> /dev/null; then
    echo "Git encontrado:"
    git --version
else
    echo "❌ Git NO encontrado"
    echo "Visita: https://git-scm.com"
fi
echo ""

echo "4. ✅ Verificando configuración Git..."
if git config --global user.name &> /dev/null; then
    echo "Git user.name configurado:"
    git config --global user.name
else
    echo "⚠️ Git user.name NO configurado"
    echo "Ejecuta: git config --global user.name 'Tu Nombre'"
fi
echo ""

if git config --global user.email &> /dev/null; then
    echo "Git user.email configurado:"
    git config --global user.email
else
    echo "⚠️ Git user.email NO configurado"
    echo "Ejecuta: git config --global user.email 'tu@email.com'"
fi
echo ""

echo "5. ✅ Verificando espacio en disco..."
df -h / | tail -1
echo ""

echo "========================================"
echo "📋 RESUMEN:"
echo ""
echo "Instrucciones:"
echo "1. Guarda este archivo como 'verificar.sh'"
echo "2. Ejecuta: chmod +x verificar.sh"
echo "3. Ejecuta: ./verificar.sh"
echo "4. Si ves ❌, sigue las instrucciones"
echo "5. Si todo está ✅, ¡estás listo/a!"
echo "========================================"

read -p "Presiona Enter para continuar..."
