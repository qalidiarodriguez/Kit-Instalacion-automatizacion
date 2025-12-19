# 🤖 Uso de GitHub Copilot con Playwright (QA Automation)

Este documento explica cómo usar **GitHub Copilot dentro de Visual Studio Code**
como apoyo para crear y entender pruebas automatizadas con **Playwright**.

Está pensado para personas que **están aprendiendo Playwright** y necesitan
una guía clara, práctica y sin comparaciones con otras herramientas.

Copilot acompaña.
El criterio QA manda.

---

## 🎯 Objetivo como QA

Usar Copilot para:
- escribir tests más rápido
- entender la sintaxis de Playwright
- crear escenarios positivos y negativos
- comprender errores comunes
- mantener foco en la lógica de pruebas

No se busca:
- memorizar toda la API
- copiar código sin entenderlo
- depender completamente de la IA

---

## ✅ ¿Qué es GitHub Copilot en VS Code?

GitHub Copilot es una IA que:
1. sugiere código mientras escribes
2. genera tests a partir de comentarios
3. ayuda a entender errores

Ejemplo:
Copilot puede sugerir:
```js
await page.goto('https://example.com')
```

---

## 🚀 ¿Por qué es útil para QA con Playwright?

Playwright trabaja con:

-funciones asíncronas (async / await)
-navegación y eventos del navegador
-esperas automáticas
-Copilot ayuda a:
-recordar la estructura correcta
-evitar errores de sintaxis
-avanzar sin bloquearse

El QA decide qué probar.
Copilot ayuda con cómo escribirlo.

---

## ⭐ Uso 1 — Generar un test a partir de un comentario

Ejemplo de comentario:
```js
// Test positivo: visitar la página principal y verificar el título
```
Copilot puede generar:
```js
import { test, expect } from '@playwright/test';

test('Página principal carga correctamente', async ({ page }) => {
  await page.goto('https://example.com');
  await expect(page.getByText('Example Domain')).toBeVisible();
});
```
👉 Revisa siempre:

-la URL
-el texto esperado
-los selectores

---

## ⭐ Uso 2 — Crear flujos paso a paso

Comentario:
```js
// Test de login: ingresar usuario y contraseña válidos y verificar acceso
```
Copilot puede proponer:
```js
test('Login exitoso', async ({ page }) => {
  await page.goto('/login');
  await page.fill('#username', 'usuario');
  await page.fill('#password', 'password');
  await page.click('#submit');
  await expect(page.getByText('Bienvenido')).toBeVisible();
});
```
👉 Ajusta selectores y datos según la aplicación real.

---

## ⭐ Uso 3 — Escenarios negativos

Comentario:
```js
// Test negativo: intentar login con contraseña incorrecta
```

Copilot suele generar:

-validaciones de error
-mensajes esperados
-flujos alternativos

Esto es clave para el trabajo real de QA.

---

## ⭐ Uso 4 — Ayuda con selectores

Al escribir:
```js
await page.locator(
```

Copilot puede sugerir:

-selectores por texto
-selectores por id
-selectores básicos

Como QA:
-prioriza selectores claros y estables
-evita selectores demasiado frágiles
-valida siempre en el DOM real

---

## 🛠️ Uso 5 — Entender errores comunes

Si un test falla, por ejemplo:
```js
Timeout 30000ms exceeded
```

Puedes escribir un comentario:
```js
// Explica por qué este test falla y cómo solucionarlo
```

Copilot suele sugerir:
-revisar selector
-verificar navegación
-asegurar que el elemento exista

👉 Lee la sugerencia y valida si aplica a tu escenario.

---

## 🧠 Buenas prácticas usando Copilot con Playwright

✅ Lee y entiende el código generado
✅ Verifica cada await
✅ Ajusta selectores manualmente
✅ Ejecuta el test después de cada cambio

❌ No copies sin comprender
❌ No ignores fallos intermitentes
❌ No confíes ciegamente en la IA

## 💬 Prompts útiles para usar con Copilot
```js
// Genera un test Playwright para verificar el header
// Explica este error de Playwright
// Reescribe este test usando selectores más claros
// Crea un escenario negativo para este flujo
```

## 🌱 Conclusión

GitHub Copilot no reemplaza el aprendizaje.
Lo acompaña.

Un buen QA:

-entiende el flujo
-valida el resultado
-analiza los errores
-mejora el test

Copilot acelera, pero el criterio es humano.

