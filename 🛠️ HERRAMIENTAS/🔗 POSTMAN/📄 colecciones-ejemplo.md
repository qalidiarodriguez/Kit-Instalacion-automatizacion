# 📚 Colecciones de Ejemplo para QA
## Aprende explorando, no solo leyendo

> **"El mejor modo de aprender Postman es teniendo algo CONCRETO que abrir, modificar y entender."**

---

## 🚀 ¿CÓMO USAR ESTAS COLECCIONES?

### **Paso 1: Descargar**
1. Haz clic en el enlace de cada colección
2. Guarda el archivo `.json` en tu carpeta `postman/`

### **Paso 2: Importar a Postman**
1. Abre Postman
2. Click en **Import** (esquina superior izquierda)
3. Arrastra el archivo `.json`
4. ¡Listo! La colección aparecerá en tu sidebar

### **Paso 3: Explorar con mentalidad QA**
NO ejecutes todo de una vez. En cambio:
1. **Abre** el primer request
2. **Lee** los tests en la pestaña Tests
3. **Pregúntate:** "¿Qué está verificando esto?"
4. **Modifica** algo pequeño (ej: cambia el URL)
5. **Observa** qué pasa

---

## 📦 COLECCIÓN 1: API Testing Básico (para principiantes)

**Descargar:** [api-testing-basico.json](./colecciones/api-testing-basico.json)

### **Qué incluye:**

✅ 5 requests progresivos
✅ Tests desde lo más simple a lo complejo
✅ Variables de entorno de ejemplo
✅ Comentarios en cada test explicando "por qué"


### **Requests incluidos:**
1. **GET - Verificar status básico**  
   `GET https://jsonplaceholder.typicode.com/posts/1`  
   *Test:* Verifica que el status sea 200

2. **GET - Verificar estructura de respuesta**  
   `GET https://jsonplaceholder.typicode.com/posts`  
   *Test:* Verifica que sea un array y tenga al menos 1 item

3. **POST - Crear recurso**  
   `POST https://jsonplaceholder.typicode.com/posts`  
   *Test:* Verifica que se creó correctamente (status 201)

4. **PUT - Actualizar recurso**  
   `PUT https://jsonplaceholder.typicode.com/posts/1`  
   *Test:* Verifica que los datos se actualizaron

5. **DELETE - Eliminar recurso**  
   `DELETE https://jsonplaceholder.typicode.com/posts/1`  
   *Test:* Verifica que se eliminó (status 200)

### **📝 Qué aprenderás con esta colección:**
- Cómo estructurar tests progresivos
- Cómo verificar diferentes tipos de respuestas
- Cómo usar `pm.response` y `pm.expect`
- Patrones básicos de testing de APIs

---

## 🏗️ COLECCIÓN 2: Testing de APIs Reales (nivel intermedio)

**Descargar:** [api-testing-real.json](./colecciones/api-testing-real.json)

### **Qué incluye:**

✅ Testing de APIs públicas reales
✅ Manejo de autenticación básica
✅ Variables dinámicas entre requests
✅ Pre-request scripts
✅ Tests de performance básicos


### **APIs incluidas:**
1. **OpenWeatherMap API**  
   - Obtener clima por ciudad
   - Verificar estructura de respuesta
   - Validar rangos de temperatura

2. **GitHub API**  
   - Obtener información de usuario
   - Verificar repositorios públicos
   - Tests de rate limiting

3. **REST Countries API**  
   - Buscar países por nombre
   - Verificar datos de capital, población
   - Tests de respuesta en diferentes formatos

### **✨ Características avanzadas incluidas:**
```javascript
// Ejemplo de test que verifica tiempo de respuesta
pm.test("Response time is less than 500ms", function () {
    pm.expect(pm.response.responseTime).to.be.below(500);
});
```
// Ejemplo de variable dinámica
const responseData = pm.response.json();
pm.collectionVariables.set("lastUserId", responseData.id);

---

## 🔐 COLECCIÓN 3: Autenticación y Seguridad (nivel avanzado)

**Descargar:** auth-testing.json

## **Qué incluye:**
✅ OAuth 2.0 flow completo
✅ JWT token handling
✅ API Key authentication
✅ Tests de seguridad básicos

## **Flujos cubiertos:**
1. **API Key Auth**
Cómo enviar API keys
Tests para verificar keys válidas/inválidas
Manejo de errores de autenticación

2. **Bearer Token (JWT)**
Login para obtener token
Uso de token en requests subsiguientes
Verificación de token expirado

3. **OAuth 2.0 Mock**
Flujo authorization code
Refresh tokens
Scope validation

🛡️ Tests de seguridad incluidos:
// Verificar que no se filtre información sensible
pm.test("No sensitive data in response", function () {
    const responseBody = pm.response.text();
    pm.expect(responseBody).to.not.include("password");
    pm.expect(responseBody).to.not.include("token");
});

// Verificar headers de seguridad
pm.test("Security headers present", function () {
    pm.response.to.have.header("X-Content-Type-Options");
    pm.response.to.have.header("X-Frame-Options");
});

---

## **🧪 COLECCIÓN 4: Plantilla Vacía para Tus Proyectos**

**Descargar:** plantilla-vacia.json

Qué incluye:
✅ Estructura organizada para nuevos proyectos
✅ Variables de entorno pre-configuradas
✅ Folder structure recomendada
✅ Tests de ejemplo comentados

Estructura de folders:
Mi Proyecto API/
├── 01. Smoke Tests/
│   ├── Health Check
│   └── Basic Connectivity
├── 02. Functional Tests/
│   ├── GET Endpoints
│   ├── POST/PUT/DELETE
│   └── Error Cases
└── 03. Integration Tests/
    ├── Full Flows
    └── Data Consistency

**📁 Cómo usar esta plantilla:**
Importa a Postman
Renombra la colección con tu nombre de proyecto
Modifica los URLs base en las variables
Comienza a agregar tus requests
Usa los tests de ejemplo como guía

---

## 🎮 DESAFÍOS PRÁCTICOS (para aprender haciendo)

## **Desafío 1: Extiende la colección básica**
Agrega un test para verificar que el userId siempre sea un número
Crea un request que falle a propósito y escribe tests para el error
Agrega un pre-request script que genere datos dinámicos

## **Desafío 2: Crea tu propia colección**
Usando la plantilla vacía:
Elige una API pública (ej: SpaceX API, Pokémon API)
Crea 5 requests con tests significativos
Implementa al menos 2 variables de entorno
Exporta y comparte con un compañero

## **Desafío 3: Debug una colección "rota"**
Descargar colección con bugs
Encuentra los 3 bugs en los tests
Corrígelos
Documenta qué aprendiste de cada error

---

## 📚 RECURSOS ADICIONALES
Para profundizar:
Postman Learning Center
API Testing Best Practices
Public Workspaces - Miles de colecciones públicas

Comunidades:
Postman Community Forum
r/Postman en Reddit

---

## 💡 CONSEJOS DE QA AL USAR ESTAS COLECCIONES

1. No copies ciegamente
Modifica cada test para entender:
¿Qué está verificando?
¿Por qué se escribió así?
¿Cómo podría fallar?

2. Crea tu "lab notes"
En un archivo aprendizajes.md:
📅 [Fecha] - Colección Básica
✅ Aprendí: pm.test estructura
✅ Descubrí: pm.response.json() obtiene la respuesta
❌ Error cometido: Olvidé hacer click en Save

3. Enseña a otros
La mejor forma de aprender es explicar. Comparte:
Una colección que creaste
Un test particularmente útil
Un error que resolviste y cómo

🚨 IMPORTANTE: CREDENCIALES SENSIBLES
NUNCA subas a GitHub colecciones que contengan:

API keys reales
Passwords
Tokens de acceso
URLs internas de compañías

Siempre usa:
Variables de entorno para datos sensibles
.env files (y agrégalos a .gitignore)
APIs públicas para ejemplos

---

"Estas colecciones no son para copiar, sino para COMPRENDER. Abrelas, modifícalas, rómpelas, arréglalas.
Así es como realmente aprenderás."
— Qalidia Rodríguez

Última actualización: Diciembre 2025
