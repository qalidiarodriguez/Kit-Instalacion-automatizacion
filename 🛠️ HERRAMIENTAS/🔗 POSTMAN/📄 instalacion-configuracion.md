# 🧪 Postman: Instalación con Mentalidad QA
## No descargas una herramienta. Construyes un laboratorio.

> **"Postman no es la automatización, es el laboratorio donde la creas."**

---

## 🎯 ANTES DE DESCARGAR: EL CAMBIO MENTAL

### **La confusión común:**
- "Voy a descargar Postman para automatizar"
- "Voy a escribir scripts mágicos que prueben todo"
- "Si aprendo esta herramienta, ya soy QA automator"

### **La realidad (y tu ventaja):**
**Automatizar no empieza escribiendo código.**  
Empieza con el **100% pensamiento QA manual** que YA tienes:

1. **"¿Dónde quedó?"** → Rastreo de archivos instalados
2. **"¿Cómo sé que sí se instaló?"** → Verificación de existencia
3. **"¿Cómo verifico que funciona?"** → Prueba de operación básica

**Esa misma mentalidad que usas para rastrear un bug**  
**la usarás hoy para instalar y verificar Postman.**

---

## 📁 PASO 0: CREA TU ESPACIO MENTAL (antes del software)

### **Esta carpeta no es técnica. Es cognitiva.**

#### **En Windows:** 
Documentos/
└── clase_[tu_nombre]/ ← ¡Pónle TU nombre!
├── postman/
├── cypress/
└── apuntes/

#### **En Mac:**
Documents/
└── clase_[tu_nombre]/ ← Tu espacio sagrado de aprendizaje
├── postman/
├── cypress/
└── apuntes/


**¿Por qué hacer esto ANTES de instalar?**  
Porque el orden físico precede al orden mental.  
Si tu computadora está organizada, tu cerebro puede concentrarse en aprender, no en buscar.

---

## 🛠️ PASO 1: DESCARGAR POSTMAN (con ojos de QA)

### **📍 Dónde descargar (SOLO aquí):** https://www.postman.com/downloads/


**💡 Mentalidad QA aplicada:**  
No hagas clic en el primer enlace de Google.  
Ve DIRECTO a la fuente oficial.  
¿Por qué? Porque como QA, verificas las fuentes.

### **📥 El proceso de descarga:**
1. Visita la página
2. Selecciona tu sistema operativo (Windows/macOS)
3. Descarga el instalador
4. **NO lo abras todavía**

**📌 Pausa cognitiva:**  
Antes de instalar, pregúntate:  
"¿Cómo sabré después que esta descarga fue la correcta?"

---

## ⚙️ PASO 2: INSTALAR (y DOCUMENTAR la ubicación)

### **Para Windows:**
1. Ejecuta el instalador descargado
2. Sigue los pasos (acepta los defaults)
3. **Postman normalmente se instala en:**
C:\Users\TU_USUARIO\AppData\Local\Postman

### **Para Mac:**
1. Abre el archivo `.dmg` descargado
2. Arrastra Postman a la carpeta Applications
3. **Postman queda en:**
/Applications/Postman.app


---

## 🔍 PASO 3: VERIFICACIÓN QA (el paso que TODOS saltan)

### **No des por hecho que se instaló. COMPRUÉBALO.**

#### **Verificación para Windows:**
✅ **Check 1:** ¿Aparece en el Menú Inicio?  
✅ **Check 2:** ¿Hay ícono en el escritorio?  
✅ **Check 3:** ¿Puedes buscarlo en la barra de búsqueda?  

#### **Verificación para Mac:**
✅ **Check 1:** ¿Está en Finder → Applications?  
✅ **Check 2:** ¿Aparece en Launchpad?  
✅ **Check 3:** ¿Puedes buscarlo con Spotlight (Cmd+Espacio)?  

### **📝 Documenta tu verificación:**
En un papel o en un archivo `VERIFICACION.md` en tu carpeta de clase:
📅 [Fecha]
✅ Postman instalado
📍 Ubicación: [pega la ruta que encontraste]
🔍 Verificación: [qué checks pasaron]


**Frase clave que repetirás:**  
*"Si no sabes dónde se instaló algo, no está realmente instalado para ti."*

---

## 🚀 PASO 4: PRIMERA APERTURA (con propósito)

### **Cuando abras Postman por primera vez:**

**No hagas nada técnico todavía.**  
Solo observa:

1. **¿Cuánto tarda en abrir?** → Performance check
2. **¿Qué pantalla muestra primero?** → UX familiarización
3. **¿Pide crear cuenta?** → Configuración inicial

**Explicación mental que darás:**  
"Esta es la herramienta.  
Aquí probamos APIs.  
Aquí luego automatizamos.  
Pero primero, la conocemos."

---

## 🧪 PASO 5: TU PRIMER TEST (empezando por lo humano)

### **Paso 5.1: Crear un request simple**
1. Click en **New** → **HTTP Request**
2. Método: **GET**
3. URL (ejemplo seguro): https://jsonplaceholder.typicode.com/posts/1
4. Click en **Send**

### **Paso 5.2: Leer como QA (antes de automatizar)**
**Preguntas que harás ANTES de escribir scripts:**

🔍 **"¿Qué status code regresó?"** → 200 = éxito  
🔍 **"¿Veo datos?"** → Sí, un objeto JSON  
🔍 **"¿Tiene sentido lo que devuelve?"** → Post con id, title, body  

**Esto reafirma tu identidad QA:**  
Primero entiendes, luego automatizas.

### **Paso 5.3: El primer "script" (más simple imposible)**
1. Ve a la pestaña **Tests**
2. Pega esto (sí, copia y pega esta vez):
```javascript
pm.test("Status code es 200", function () {
    pm.response.to.have.status(200);
});
```
3.Click en Send otra vez

### **Paso 5.4: Verificación del test**
✅ Debe aparecer abajo: 1 test passed

¿Qué acaba de pasar?
No "aprendiste a automatizar".
Aprendiste que la automatización son reglas claras, no magia.

### 📚 PASO 6: ORGANIZACIÓN (portafolio desde el día 1)
Guarda tu trabajo como profesional:
Click en Save

Crea una Collection nueva

Nómbrala: Clase [tu nombre] - APIs

Guarda tu request ahí

Por qué importa esto HOY:
Mañana, cuando tengas 50 tests, sabrás dónde están.
La próxima semana, esto será parte de tu portafolio.
En una entrevista, podrás mostrar organización desde el inicio.

### 🧠 PASO 7: REFLEXIÓN COGNITIVA (lo más importante)
Responde mentalmente:
¿Dónde está Postman en mi computadora?
(Si no lo sabes, vuelve al Paso 3)
¿Cómo verifico que funciona?
(Si no lo sabes, vuelve al Paso 4)
¿Qué acabo de automatizar?
(Una sola regla: "el status debe ser 200")
La revelación:
Automatizar = decirle a la máquina qué revisar siempre.
Hoy le dijiste: "revisa que el status sea 200".
Mañana le dirás más cosas.

### **📁 ESTRUCTURA FINAL DE TU CARPETA (ahora sí completa)**
clase_[tu_nombre]/
├── postman/
│   ├── instalacion.md          # Tus notas de ESTE proceso
│   └── primer_test.png         # Captura de pantalla del test pasado
├── cypress/                    # (para después)
└── apuntes/
    └── mentalidad_qa.md        # Frases clave que aprendiste hoy

### **🔄 RESUMEN EN 5 FRASES CLAVE (para tu mapa mental)**
"Primero el espacio, luego la herramienta" → Organiza tu carpeta
"Si no sabes dónde está, no está instalado" → Verifica ubicación
"Primero entender, luego automatizar" → Lee como QA primero
"Automatizar son reglas, no magia" → Tests son instrucciones claras
"Guarda como profesional desde el día 1" → Portafolio comienza hoy

🆘 ¿ALGO SALIÓ MAL? (guía de troubleshooting con mentalidad QA)

Problema común 1: "Postman no abre"
✅ Solución QA:
Reinicia la computadora
Verifica que haya espacio en disco
Reinstala desde la página oficial

Problema común 2: "El test no pasa"
✅ Solución QA:
¿Copiaste exactamente el código?
¿La URL es correcta?
¿Tienes internet?

Problema común 3: "No sé dónde guardé el request"
✅ Solución QA:
¡Perfecto! Este es el MEJOR problema que podías tener.
Te fuerza a:
Buscar en Postman (Collections)
Aprender la interfaz
Crear un sistema de organización MEJOR

### **🌟 TU LOGRO HOY (reconócelo)**
No instalaste "solo Postman".
Instalaste:

✅ Una herramienta en tu computadora
✅ Una metodología en tu cerebro
✅ Un sistema de verificación QA
✅ Un primer proyecto para tu portafolio
✅ Confianza para instalar CUALQUIER herramienta después

### **📞 ¿NECESITAS MÁS AYUDA?**
Recuerda el flujo:
Intenta tú primero (15 min)
Pregunta a la IA con contexto completo
Si persiste, agéndame para una clase 1:1
Para preguntar a la IA (buen ejemplo):
"Instalé Postman en Windows 11. Se instaló en C:\Users\MiUsuario\AppData\Local\Postman. Cuando hago doble click en el ícono, se abre una ventana negra y se cierra solo. ¿Cómo lo soluciono?"

## ✨ **POR QUÉ ESTE ARCHIVO ES ESPECIAL:**

1. **No es un tutorial** → Es un **modelo mental** aplicado
2. **Incluye el "por qué"** detrás de cada "cómo"
3. **Prepara para la autonomía** → Enseña a verificar, no solo a seguir
4. **Es escalable** → La misma mentalidad servirá para Cypress, Playwright, etc.

**Mis alumnos no solo aprenderán Postman.**  
**Aprenderán MI FILOSOFÍA de enseñanza,** que es mi verdadero valor diferencial. 🌟

"Hoy no te enseñé Postman. Te enseñé a aprender cualquier herramienta con ojos de QA, método y calma."
— Qa Lidia Pamela Rodriguez Vigueras

Última actualización: Diciembre 2025
