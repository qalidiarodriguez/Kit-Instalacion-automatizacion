# 🧠 Instalando Playwright con MENTE (no solo con comandos)

## ❤️ Primero, respira. Esto es normal.

Si estás leyendo esto, probablemente:
- Has visto tutoriales que dicen "es fácil, solo copia esto"
- Has copiado comandos sin entender qué hacían
- Te has encontrado con un error inesperado
- Te sientes frustrada/o y piensas "¿por qué a mí me pasa esto?"

**Te tengo buenas noticias:**
1. **Todos** pasamos por esto (sí, yo también)
2. **No es sobre "saber código"**, es sobre "aprender a seguir patrones"
3. **Hoy aprenderás** a instalar Playwright **Y** a desarrollar la mentalidad para resolver cualquier problema de instalación futura

---

## 🎯 NUESTRO OBJETIVO REAL (el secreto)

No es solo "tener Playwright instalado".  
Es **crear un sistema mental** para:

1. **Entender** qué está pasando en cada paso
2. **Documentar** tus propios errores y soluciones
3. **Desarrollar confianza** para enfrentar problemas técnicos
4. **Crear un mapa mental** que te sirva para siempre

---

## 📝 CÓMO LEER ESTA GUÍA (IMPORTANTE)

### **Primera lectura (HOY):**
- Solo lee, no hagas nada
- Familiarízate con los conceptos
- Subraya lo que no entiendas

### **Segunda lectura (MAÑANA o más tarde):**
- Con tu laptop abierta
- Sigue los pasos UNO por UNO
- Si hay error, DETENTE y documenta

### **Tercera lectura (CUANDO TODO FUNCIONE):**
- Con tu cuaderno o Canva abierto
- Crea tu PROPIO mapa mental
- Conecta cada paso con "¿por qué?" no solo "¿cómo?"

---

## 🛠️ INSTALACIÓN PASO A PASO (CON EXPLICACIÓN COGNITIVA)

### **PASO 0: El MindMap antes del código**
Antes de tocar la terminal, dibuja en tu mente (o en papel):
CENTRO: "Instalar Playwright"
RAMAS:
├── ¿Para qué lo necesito?
├── ¿Qué necesito tener antes?
├── ¿Qué podría salir mal?
└── ¿Cómo sabré que funcionó?

**Por qué esto importa:** Tu cerebro necesita contexto antes de detalles.

### **PASO 1: Verifica Node.js (el fundamento)**
```bash
node --version
```

No es solo un comando. Es:

Preguntarle a tu computadora: "¿Tienes Node.js?"

Si dice v18.0.0 o similar → ✅ Sigue al paso 2
Si dice comando no encontido → ⚠️ Necesitas instalarlo primero

📌 Prompt para IA si hay error:

"Estoy en Windows 11. Cuando escribo node --version en la terminal, dice 'node no se reconoce como comando interno o externo'. ¿Cómo instalo Node.js correctamente?"
PASO 2: Crea tu carpeta de proyectos (tu espacio sagrado)
No instales Playwright en cualquier lado. Crea un hogar para tus proyectos:

# En terminal:
```bash
mkdir mis-proyectos-playwright
cd mis-proyectos-playwright
mkdir mi-primer-test
cd mi-primer-test
```
Por qué importa: El orden mental comienza con orden físico.

PASO 3: Inicializa npm (el administrador de paquetes)
```bash
npm init -y
```
¿Qué acaba de pasar? Creaste un archivo package.json.
Piensa en él como el ÍNDICE de tu proyecto.
Allí se listará TODO lo que instales.

PASO 4: Instala Playwright (el momento clave)
```bash
npm install playwright
```
No cierres la terminal mientras se instala. Observa:

Las líneas que van apareciendo

Los porcentajes

Los nombres de los paquetes

Si se queda pegado o da error:

NO entres en pánico

Copia TODO el mensaje de error

Pregunta a la IA CON EL CONTEXTO COMPLETO

📌 Prompt para IA:
"Estoy instalando Playwright en Windows 11. Ejecuté npm install playwright y después de 2 minutos salió este error: [PEGA EL ERROR COMPLETO]. ¿Cómo lo soluciono?"

PASO 5: Verifica la instalación (la prueba de fuego)
```bash
npx playwright --version
```
Deberías ver algo como: Version 1.40.0

Si no ves esto:

Respira

Vuelve al paso 1

Revisa tu mapa mental inicial: ¿qué paso podría haber saltado?

🤖 CÓMO USAR IA DURANTE ESTE PROCESO (ÉTICAMENTE)
❌ Lo que NO debes pedirle a la IA:

"Instala Playwright por mí"

✅ Lo que SÍ debes pedirle:
"Explícame qué hace exactamente el comando npm init -y en términos simples"

"Tengo este error [ERROR]. ¿Cuáles son las 3 causas más comunes?"

"¿Cómo puedo verificar si Playwright se instaló correctamente además de --version?"

🧩 TU PRIMER MAPA MENTAL (ejemplo visual)
Mira mi mapa mental que ya compartí contigo.

Ahora crea el TUYO con tu propia estructura, pero si te está costando te ayudo con esta idea:
´´´bash
📌 CENTRO: Playwright Instalado
│
├── 🔍 PRE-REQUISITOS
│   ├── Node.js ≥ v18
│   ├── npm funcionando
│   └── Carpeta organizada
│
├── 🛠️ PASOS DE INSTALACIÓN
│   ├── npm init -y (crea package.json)
│   ├── npm install playwright (descarga todo)
│   └── npx playwright --version (verifica)
│
├── 🚨 POSIBLES ERRORES
│   ├── "node no encontrado"
│   ├── "npm timeout"
│   └── "permisos denegados"
│
├── 🆘 CÓMO PEDIR AYUDA
│   ├── Copiar error COMPLETO
│   ├── Decir mi SO y versión
│   └── Explicar qué ya intenté
│
└── ✅ VERIFICACIÓN FINAL
    ├── Versión muestra
    ├── Script de test corre
    └── Puedo crear primer test
´´´
💡 Consejo: Usa COLORES DIFERENTES para:

Éxitos (verde)
Advertencias (amarillo)
Errores (rojo)
Comandos (azul)
Conceptos (morado)

🎭 ESCENARIO: "TODO SALE MAL" (y está bien) Imagina esto:

Node.js no se instala

npm da un error raro

Playwright se queda pegado al 80%

Tu laptop se reinicia sola

Tu nueva mentalidad:

"Esto es material de aprendizaje, no de fracaso"
"Cada error me enseña algo nuevo sobre mi sistema"
"Puedo documentar esto y ayudar a otros después"
"Mi valor no está en que todo salga perfecto a la primera"

📚 RECURSOS EXTRA PARA EL CAMINO
Documentación oficial: https://playwright.dev/docs/intro

Playwright en Español: https://playwright.tech/es/

Mi repositorio con ejemplos: [enlace a tu GitHub]

Comunidad Discord Playwright: https://aka.ms/playwright/discord

## 💡 **POR QUÉ ESTE ENFOQUE FUNCIONA:**

1. **Anticipa la frustración** → La nombra, la valida, la normaliza
2. **Da estructura cognitiva** → "3 lecturas" es un método, no solo instrucciones
3. **Integra IA éticamente** → Prompts específicos, no "hazlo por mí"
4. **Prioriza el mapa mental** → La herramienta técnica es secundaria a la mental

✨ RECUERDA SIEMPRE:
La instalación perfecta no existe.
La instalación que aprendes SÍ existe.

Cada error resuelto es una habilidad ganada.
Cada comando entendido es confianza construida.
Cada mapa mental creado es patrón internalizado.

🤝 ¿NECESITAS AYUDA PERSONALIZADA? Si después de:

Leer esto 3 veces
Seguir los pasos
Preguntar a la IA con buenos prompts
Crear tu mapa mental

... aún tienes problemas, agéndame para una clase 1:1.
Juntos no solo instalaremos Playwright, sino que construiremos tu confianza técnica desde cero.

Lidia Pamela Rodriguez Vigueras
QA Engineer, PamStem

