# 🤖 De Probar a Automatizar: Tu Primer Framework de API Testing

## ❤️ El momento "ajá" de la automatización

**Imagina este escenario (que quizás ya viviste):**
- Lunes: Probaste 10 endpoints manualmente → 1 hora
- Martes: Los mismos 10 endpoints → otra hora
- Miércoles: Cambió la API → vuelves a probar todo → 1.5 horas
- **Viernes:** Te piden probar 50 endpoints → 😱

**La automatización nace aquí:**  
Cuando te das cuenta que **lo que haces repetidamente con tus manos** puede **hacerlo una máquina con tus reglas**.

---

## 🧠 CAMBIO MENTAL: De Ejecutor a Diseñador

### **Como QA Manual (ayer):**
- "Voy a probar este endpoint"
- "Hago click en Send"
- "Verifico que esté bien"
- "Sigo con el siguiente"

### **Como QA Automation (hoy):**
- "¿Qué reglas debe seguir ESTE endpoint?"
- "¿Cómo las escribo para que Postman las verifique AUTOMÁTICAMENTE?"
- "¿Cómo organizo estas reglas para que corran SOLAS mañana?"
- "¿Cómo sé si algo cambió sin tener que mirar?"

**La diferencia clave:**  
No pruebas. **Diseñas pruebas que se ejecutan solas.**

---

## 🚀 TU PRIMER FRAMEWORK (sí, framework, no "unos tests")

### **Nivel 1: Tests básicos (lo que ya sabes)**
```javascript
// ESTO ya lo sabes hacer:
pm.test("Status 200", function() {
    pm.response.to.have.status(200);
});
```
### **Nivel 2: Tests con lógica (el salto)**
// ESTO es automatización REAL:
pm.test("Response has correct structure", function() {
    const jsonData = pm.response.json();
    
    // Verificar que tenga los campos necesarios
    pm.expect(jsonData).to.have.property('id');
    pm.expect(jsonData).to.have.property('title');
    pm.expect(jsonData).to.have.property('body');
    
    // Verificar tipos de datos
    pm.expect(jsonData.id).to.be.a('number');
    pm.expect(jsonData.title).to.be.a('string');
    
    // Verificar reglas de negocio
    pm.expect(jsonData.title.length).to.be.above(0);
    pm.expect(jsonData.body.length).to.be.above(10);
});

### **Nivel 3: Tests que conversan entre sí (¡magia!)**
// Request 1: Crear usuario
// En el test guardamos el ID creado
const responseData = pm.response.json();
pm.collectionVariables.set("nuevoUsuarioId", responseData.id);

// Request 2: Obtener usuario (usa el ID anterior)
// La URL ahora es dinámica:
// GET https://api.ejemplo.com/users/{{nuevoUsuarioId}}

---

## 📁 LA ESTRUCTURA QUE TE CAMBIARÁ LA VIDA
Colección organizada como profesional:

📁 Mi API Framework/
│
├── 📁 01. CONFIGURACIÓN/
│   ├── 🔹 Environment (Variables globales)
│   └── 🔹 Pre-request Scripts (setup común)
│
├── 📁 02. SMOKE TESTS/
│   ├── 🔹 Health Check (¿La API está viva?)
│   └── 🔹 Auth Test (¿Puedo autenticarme?)
│
├── 📁 03. ENDPOINTS CRUD/
│   ├── 🔹 GET - Obtener recursos
│   ├── 🔹 POST - Crear recursos
│   ├── 🔹 PUT - Actualizar recursos
│   └── 🔹 DELETE - Eliminar recursos
│
├── 📁 04. INTEGRATION TESTS/
│   ├── 🔹 Flujo completo crear → leer → actualizar → eliminar
│   └── 🔹 Tests con datos dependientes
│
└── 📁 05. PERFORMANCE & SECURITY/
    ├── 🔹 Response time tests
    └── 🔹 Security header validation

---

## 🧪 EJEMPLO REAL: Automatizando una API de Usuarios

### **Paso 1: El test de smoke (¿está viva la API?)**
```javascript
pm.test("API is alive and returns 200", function() {
    pm.response.to.have.status(200);
});

pm.test("Response time is acceptable", function() {
    pm.expect(pm.response.responseTime).to.be.below(1000); // menos de 1 segundo
});
```
### **Paso 2: Crear usuario (con datos dinámicos)**
```javascript
// Pre-request Script (antes de enviar):
const timestamp = new Date().getTime();
pm.variables.set("emailUnico", `test${timestamp}@example.com`);
```
```javascript
// Test (después de recibir respuesta):
pm.test("User created successfully", function() {
    pm.response.to.have.status(201);
    
    const user = pm.response.json();
    pm.expect(user.email).to.eql(pm.variables.get("emailUnico"));
    
    // Guardar ID para tests futuros
    pm.collectionVariables.set("userId", user.id);
});
### **Paso 3: Obtener usuario recién creado (¡conexión automática!)**
```javascript
// La URL usa la variable que guardamos antes:
// GET https://api.ejemplo.com/users/{{userId}}

pm.test("Get user returns correct data", function() {
    pm.response.to.have.status(200);
    
    const user = pm.response.json();
    pm.expect(user.id).to.eql(pm.collectionVariables.get("userId"));
    pm.expect(user.email).to.include("@example.com");
});
```

---

## 🔄 EL FLUJO COMPLETO AUTOMATIZADO (lo que Postman puede hacer SOLO)
### **Usando Collection Runner:**
Seleccionas tu colección
Click en "Run"
Postman ejecuta todos los requests en orden
Verifica todos los tests automáticamente
Te da un reporte con: ✅ qué pasó / ❌ qué falló

Programarlo para que corra solo:
´´´bash
# Con Newman (el hermano CLI de Postman):
newman run mi-coleccion.json --reporters cli,json
´´´
Esto puedes ponerlo en:
Un script que corra cada mañana
GitHub Actions (cuando subas código)
Jenkins / GitLab CI
Tu computadora cuando prendas el café ☕

---

## 🎭 LOS 3 TIPOS DE AUTOMATIZACIÓN QUE DOMINARÁS

