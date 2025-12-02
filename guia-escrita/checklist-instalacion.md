# ✅ Checklist de Instalación - Entorno QA Automation

## 🔧 PREREQUISITOS

### 1. Sistema Operativo
- [ ] Windows 10/11, macOS 10.15+, o Linux Ubuntu 20.04+
- [ ] 8GB RAM mínimo (16GB recomendado)
- [ ] 10GB espacio libre en disco

### 2. Node.js y npm
node --version # Debe mostrar v16 o superior
npm --version # Debe mostrar v8 o superior
### 3. Visual Studio Code
**Extensiones ESSENCIALES:**
- [ ] **ES7+ React/Redux snippets**
- [ ] **Prettier - Code formatter**
- [ ] **GitLens**
- [ ] **Cypress Snippets**
- [ ] **Postman Code Generator**

### 4. Git y GitHub Desktop
git --version

Configurar usuario:
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"

### 5. Cypress (ejemplo)
En tu carpeta de proyecto:
npm init -y
npm install cypress --save-dev
npx cypress verify # Verificar que funciona


## 🎬 VERIFICACIÓN FINAL

Antes de tu primera clase, debes poder:
- [ ] Abrir VS Code y crear un archivo `.js`
- [ ] Ejecutar `node --version` en la terminal
- [ ] Abrir GitHub Desktop y ver tu perfil
- [ ] Ejecutar `npx cypress open` (se debe abrir la interfaz)
