# 🧩 Checklist de Instalación PASO A PASO (Para Principiantes)

## 🎯 ANTES DE COMENZAR: Tu actitud correcta
**✅ Esto es normal:** Si te sientes abrumada(o), es parte del proceso.  
**✅ Pide ayuda a la IA:** En cada paso te muestro CÓMO preguntarle.  
**✅ Tómate tu tiempo:** Esto puede llevar 1-2 horas la primera vez.

---

## 🔍 **PASO 1: Verifica tu computadora**

### ¿Qué necesitas?
Sistema Operativo: Windows 10/11, macOS 10.15+, o Linux Ubuntu 20.04+
Memoria RAM: Mínimo 8GB (recomendado 16GB)
Espacio en disco: 10GB libre

### ¿Cómo verificarlo?
**En Windows:**
1. Haz clic derecho en "Este equipo" → "Propiedades"
2. Verifica "RAM instalada" y "Tipo de sistema"

**En Mac:**
1. Click en logo Apple (☿) → "Acerca de esta Mac"
2. Verifica "Memoria" y "macOS"

### 🆘 **Si tienes dudas, pregúntale a la IA así:**
> "Tengo Windows 10. ¿Cómo verifico cuánta RAM tengo y si es suficiente para programar?"

---

## 📥 **PASO 2: Instalar Node.js (Lo más importante)**

### **¿Qué es Node.js?**
Es un programa que permite ejecutar JavaScript fuera del navegador. **TODAS las herramientas de automatización lo necesitan.**

### **Instalación SEGURA:**
1. **Ve al sitio oficial:** https://nodejs.org
2. **Descarga la versión LTS** (dice "Recommended for Most Users")
3. **Ejecuta el instalador:**
   - Windows: Sigue todos los pasos (click Next)
   - Mac: Arrastra Node.js a la carpeta Applications

### ✅ **Verificación (en terminal):** 
1. Abre la terminal:
Windows: Busca "CMD" o "PowerShell"
Mac: Busca "Terminal"
2. Escribe esto y presiona Enter:
node --version

Debe salir algo como: v18.17.0
(Si sale error, no se instaló correctamente)

### 🆘 **Si tienes problemas, pregúntale a la IA:**
> "Instalé Node.js pero cuando escribo 'node --version' dice 'no se reconoce'. ¿Cómo lo soluciono en Windows 11?"

---

## 🖥️ **PASO 3: Instalar Visual Studio Code (VS Code)**

### **¿Qué es VS Code?**
Es donde escribirás tu código. Es GRATIS y muy amigable.

### **Instalación:**
1. **Ve a:** https://code.visualstudio.com
2. **Descarga para tu sistema**
3. **Instala** (sigue los pasos por defecto)

### **Extensiones IMPORTANTES (son como "apps" dentro de VS Code):**
1. Abre VS Code
2. Haz clic en el ícono de extensiones (cuadritos en la izquierda)
3. Busca y instala **UNA POR UNA**:
   - `ES7+ React/Redux snippets`
   - `Prettier - Code formatter`
   - `GitLens`
   - `Cypress Snippets`

### 🆘 **Pregúntale a la IA si:**
> "No encuentro el ícono de extensiones en VS Code, ¿dónde está?"

---

## 🗂️ **PASO 4: Instalar Git y GitHub Desktop**

### **¿Qué son?**
- **Git:** Controla las versiones de tu código (como "historial" de cambios)
- **GitHub Desktop:** Una aplicación para usar Git fácilmente

### **Instalación DOBLE:**
1. **Git:** https://git-scm.com → Descarga → Instala (todo por defecto)
2. **GitHub Desktop:** https://desktop.github.com → Descarga → Instala

### ✅ **Verificación:**
En terminal escribe:
git --version

Debe salir: git version 2.40.1 (o similar)

### **Configuración OBLIGATORIA:**
En terminal, escribe ESTAS 2 líneas (cambia los datos):
git config --global user.name "Tu Nombre Real"
git config --global user.email "tuemail@ejemplo.com"

### 🆘 **Para la IA:**
> "¿Cómo configuro mi nombre y email en Git desde la terminal de Windows?"

---

## ⚙️ **PASO 5: Preparar tu primer proyecto de Cypress**

### **1. Crea una carpeta para tus proyectos:**
- En tu Escritorio, crea una carpeta llamada `mis-proyectos-qa`
- Dentro, crea otra llamada `mi-primer-automatizacion`

### **2. Abre esa carpeta en VS Code:**
- Abre VS Code
- Menú "File" → "Open Folder"
- Selecciona `mi-primer-automatizacion`

### **3. Abre la terminal EN VS Code:**
- Menú "Terminal" → "New Terminal"
- **IMPORTANTE:** La terminal debe mostrar la ruta de tu carpeta

### **4. Instala Cypress:**
En la terminal de VS Code, escribe UNA POR UNA:
npm init -y
npm install cypress --save-dev
npx cypress verify

### ✅ **Verificación FINAL:**
Si todo salió bien, al escribir:
npx cypress open

Se abrirá una ventana morada de Cypress 🎉

### 🆘 **El comando más útil para IA cuando Cypress falla:**
> "Estoy en VS Code en la carpeta 'mi-primer-automatizacion'. Cuando escribo 'npx cypress open' sale el error: [PEGA EL ERROR COMPLETO]. ¿Cómo lo soluciono?"

---

## 🎯 **RESUMEN: Lo que DEBES poder hacer antes de tu clase**

| Tarea | Cómo verificarlo | ✅/❌ |
|-------|------------------|------|
| **Node.js instalado** | `node --version` en terminal | |
| **VS Code con extensiones** | Ver cuadritos en barra izquierda | |
| **Git configurado** | `git --version` y nombre/email | |
| **Carpeta de proyecto creada** | Ver en VS Code la ruta | |
| **Cypress se abre** | `npx cypress open` abre ventana morada | |

---

## 🤖 **GUÍA DEFINITIVA: Cómo pedir ayuda a la IA (ChatGPT/Copilot)**

### **REGLA DE ORO:** La IA es como un médico - necesita síntomas exactos.

### ❌ **Pregunta MALA:**
> "No me funciona Cypress"

### ✅ **Pregunta EXCELENTE:**
> "**Contexto:** Estoy instalando Cypress por primera vez en Windows 11.  
> **Pasos que seguí:**  
> 1. Instalé Node.js v18.17.0  
> 2. Creé carpeta 'mi-proyecto' y la abrí en VS Code  
> 3. En terminal ejecuté: `npm init -y` y `npm install cypress --save-dev`  
> **Error exacto:** Cuando ejecuto `npx cypress open` sale:  
> `Error: EPERM: operation not permitted, mkdir 'C:\Users\...\node_modules`  
> **Ya intenté:** Reiniciar VS Code y la computadora"

### 📸 **SIEMPRE INCLUYE (si puedes):**
1. **Sistema operativo** (Windows/Mac/Linux)
2. **Comando exacto** que escribiste
3. **Error completo** (copia y pega TODO)
4. **Lo que ya intentaste**

---

## 🧠 **TU NUEVO MINDSET PARA INSTALAR SOFTWARE**

**✅ En lugar de:** "No sé hacer esto"  
**💡 Piensa:** "Voy a seguir los pasos y si me atoro, pregunto a la IA con detalles"

**✅ En lugar de:** "Todo está mal"  
**💡 Piensa:** "Solo un paso no funciona, voy a solucionarlo específicamente"

**✅ En lugar de:** "Soy mala para esto"  
**💡 Piensa:** "Es mi primera vez, es normal que tome tiempo"

---

## 📞 **¿AÚN CON PROBLEMAS?**

**Antes de contactarme, asegúrate de tener:**
1. 📋 Esta checklist COMPLETA frente a ti
2. 🤖 Una pregunta para la IA CON TODOS LOS DETALLES
3. 📸 Captura de pantalla DEL ERROR EXACTO

**Si después de esto sigues atorada:**
1. Envíame la captura del error
2. Dime qué pasos seguiste de esta lista
3. Muéstrame lo que la IA te respondió

---

✨ **Recuerda:** Cada error que resuelves por tu cuenta te hace MÁS fuerte como QA.  
Un buen QA no es el que nunca tiene problemas, sino el que sabe SOLUCIONARLOS. 💪 🌈
