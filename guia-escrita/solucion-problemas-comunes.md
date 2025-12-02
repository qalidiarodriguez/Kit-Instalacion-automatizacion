# 🚨 Guía de Troubleshooting: Problemas Comunes y Soluciones

> ⚠️ **IMPORTANTE:** El 90% de los problemas tienen solución en menos de 5 minutos. Respira y sigue estos pasos.

## 🔧 **CATEGORÍA 1: PROBLEMAS CON NODE.JS/NPM**

### ❌ **Problema:** `'node' no se reconoce como un comando...`
**Síntomas:** Escribes `node --version` y Windows dice que no existe.

**✅ Soluciones (prueba en orden):**

#### **Opción A (Windows): Reiniciar la computadora**
1. Cierra TODAS las ventanas
2. Reinicia tu computadora
3. Abre terminal nueva y prueba otra vez

#### **Opción B (Windows): Verificar instalación manual**
1. Ve a `C:\Program Files\nodejs\`
2. ¿Existe la carpeta? Si SÍ:
   - Copia esa ruta
   - Busca "Variables de entorno" en Windows
   - En "Path" agrega: `C:\Program Files\nodejs\`
3. Si NO existe:
   - **Reinstala Node.js** desde nodejs.org

#### **Opción C (para todos):**

# En terminal prueba:
where node  # Windows
which node  # Mac/Linux
❌ Problema: Error de permisos EPERM o EACCESS
Ejemplo: Error: EPERM: operation not permitted

✅ Solución RÁPIDA:

Cierra VS Code COMPLETAMENTE

Ábrelo como administrador (click derecho → "Run as administrator")

Intenta de nuevo

✅ Solución COMPLETA:
# Limpia cache de npm
npm cache clean --force

# Elimina node_modules y package-lock.json
rm -rf node_modules package-lock.json

# Reinstala
npm install

## 🖥️ **CATEGORÍA 2: PROBLEMAS CON VS CODE**
❌ Problema: La terminal no se abre o no funciona
✅ Soluciones:

Menú: Terminal → New Terminal (o Ctrl+Ñ)

Si no aparece: Reinicia VS Code

Si persiste: Verifica que no haya actualizaciones pendientes
❌ Problema: Las extensiones no se instalan
✅ Verifica:

Tienes conexión a internet

Estás en la pestaña correcta (Extensions, no Marketplace)

Reinicia VS Code después de instalar

## 🐙 **CATEGORÍA 3: PROBLEMAS CON GIT/GITHUB**
❌ Problema: Git pide usuario y contraseña CADA VEZ
✅ Solución (Windows):

Abre GitHub Desktop

File → Options → Git

Verifica que tu usuario y email estén correctos

O usa SSH (más avanzado pero más seguro)

❌ Problema: git push falla con error de autenticación
✅ Solución RÁPIDA:
# Reconfigura credenciales
git config --global credential.helper manager-core

# Luego intenta push de nuevo
git push

## 🎯 **CATEGORÍA 4: PROBLEMAS CON CYPRESS**
❌ Problema: npx cypress open no hace nada/se cuelga
✅ Pasos para diagnosticar:
# 1. Verifica instalación
npx cypress verify

# 2. Si hay error, reinstala
npm uninstall cypress
npm install cypress@latest --save-dev

# 3. Si sigue, prueba versión específica
npm install cypress@12.0.0 --save-dev

❌ Problema: Cypress no encuentra los tests
Síntomas: La ventana se abre pero dice "No specs found"

✅ Solución:

1.Asegúrate que tus archivos de test están en:
cypress/e2e/  # Para Cypress 10+
cypress/integration/  # Para versiones antiguas
2.Los archivos deben terminar en:
.cy.js
.spec.js
.test.js
❌ Problema: Tests pasan local pero fallan en CI/CD
✅ Causas comunes:

Tiempos de espera: Añade { timeout: 10000 } a tus gets

Datos diferentes: Usa fixtures para datos consistentes

Variables de entorno: Configura .env files

## 🌐 **CATEGORÍA 5: PROBLEMAS DE CONEXIÓN/RED**
❌ Problema: No puedo instalar nada (timeout)
✅ Soluciones:

# Cambia registry de npm
npm config set registry https://registry.npmjs.org/

# O prueba con yarn
npm install -g yarn
yarn install
❌ Problema: GitHub no carga/está lento
✅ Solución temporal:

Usa GitHub Desktop en lugar de la web

O trabaja offline y sube después


##🧪 **MÉTODO DE DIAGNÓSTICO PASO A PASO**

Cuando NO SABES qué pasa, haz esto:

# PASO 1: COPIA EL ERROR EXACTO

Selecciona TODO el texto rojo en la terminal

Copia (Ctrl+C)
Pega en un documento

# PASO 2: BUSCA PATRONES
¿El error contiene?

EACCES → Problema de permisos

ENOENT → Archivo no existe

ETIMEDOUT → Problema de red

404 → No encontrado

#PASO 3: GOOGLEA INTELIGENTEMENTE

Busca: "cypress EPERM operation not permitted mkdir Windows 11"
NO busques: "cypress no funciona"

# PASO 4: PRUEBA SOLUCIONES EN ORDEN

Reinicia (computadora/VS Code)

Actualiza (npm update, actualiza software)

Reinstala (npm uninstall + install)

Busca ayuda (con toda la info del error)

## 📞 **¿CUÁNDO PEDIR AYUDA HUMANA?**

# ✅ Pide ayuda DESPUÉS de:
Intentaste al menos 2 soluciones de esta guía

Copiaste el error COMPLETO

Googleaste el error específico

La IA no pudo ayudarte

# ⚠️ NO pidas ayuda:

Sin haber leído esta guía primero

Sin el error completo copiado

Sin decir qué soluciones intentaste

## 🎓 **FRASES QUE TE SALVARÁN:**

"Reiniciar es el primer paso, no el último."

"Un error es solo un mensaje que no entiendo todavía."

"Google no juzga. Pregunta exactamente lo que ves."

"Cada problema resuelto es una habilidad ganada."

## 🔗 **RECURSOS EXTRA**

Foros oficiales: https://stackoverflow.com/questions/tagged/cypress

Comunidad Cypress (Discord): https://discord.com/invite/cypress

GitHub Issues: Busca tu error en los issues de Cypress

## ✨ **Recuerda: Los mejores QA Engineers son expertos en resolver problemas, no en evitarlos. Cada error que superas te hace más valiosa. 💪**

Última actualización: [Diciembre 2025]

