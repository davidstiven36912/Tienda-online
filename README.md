# 🛒 Tienda Online — Full Stack E-commerce

Aplicación web **Full Stack de comercio electrónico** desarrollada de extremo a extremo, integrando frontend, backend, API REST, base de datos, pagos y despliegue en la nube.

El proyecto fue desarrollado como una aplicación práctica para demostrar competencias en **desarrollo web Full Stack, integración de sistemas, bases de datos, APIs y servicios externos**.

---

## 🚀 Demo

🌐 **Aplicación:**
https://tienda-online-frontend-sxrn.onrender.com/

💻 **Código fuente:**
https://github.com/davidstiven36912/Tienda-online

---

## 📋 Descripción

Tienda Online permite consultar un catálogo de productos y gestionar la información mediante una arquitectura separada de **Frontend, Backend y Base de Datos**.

La aplicación consume una **API REST** desarrollada con Node.js y Express, utiliza MySQL para la persistencia de información e integra PayPal como servicio externo para procesamiento de pagos.

El proyecto se encuentra desplegado en la nube, permitiendo acceder a la aplicación desde diferentes dispositivos.

---

## ✨ Características

* 🛍️ Catálogo de productos
* 📦 Gestión de información de productos
* 🔌 API REST
* 🗄️ Persistencia de datos con MySQL
* 💳 Integración con PayPal
* 🌐 Comunicación entre Frontend y Backend
* ☁️ Despliegue en la nube
* 🔐 Configuración mediante variables de entorno
* 📱 Interfaz web responsive
* 🔄 Arquitectura separada Frontend / Backend / Base de Datos

---

## 🏗️ Arquitectura

```text
                    ┌─────────────────────┐
                    │      Usuario        │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │ Angular Frontend    │
                    │                     │
                    │ HTML · CSS · TS     │
                    └──────────┬──────────┘
                               │
                         HTTP / REST
                               │
                               ▼
                    ┌─────────────────────┐
                    │ Node.js + Express   │
                    │                     │
                    │      REST API       │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │       MySQL         │
                    │                     │
                    │      Database       │
                    └─────────────────────┘

                               │
                               ▼
                    ┌─────────────────────┐
                    │       PayPal        │
                    │   Payment Service   │
                    └─────────────────────┘
```

---

## 🛠️ Tecnologías utilizadas

### Frontend

* Angular
* TypeScript
* HTML5
* CSS3
* Bootstrap

### Backend

* Node.js
* Express
* JavaScript
* REST API
* CORS
* dotenv
* Multer

### Base de datos

* MySQL
* mysql2

### Integraciones

* PayPal

### Herramientas y despliegue

* Git
* GitHub
* Postman
* Render
* Aiven

---

## 📁 Estructura del proyecto

```text
Tienda-online/
│
├── backend/
│   ├── src/
│   │   ├── controllers/
│   │   ├── routes/
│   │   ├── models/
│   │   ├── config/
│   │   └── app.js
│   │
│   ├── package.json
│   └── ...
│
├── Tienda-Online/
│   ├── src/
│   ├── assets/
│   ├── angular.json
│   ├── package.json
│   └── ...
│
└── README.md
```

---

## ⚙️ Instalación

### 1. Clonar el repositorio

```bash
git clone https://github.com/davidstiven36912/Tienda-online.git
```

Entrar al proyecto:

```bash
cd Tienda-online
```

---

### 2. Configurar Backend

Entrar a la carpeta:

```bash
cd backend
```

Instalar dependencias:

```bash
npm install
```

Crear un archivo `.env`:

```env
DB_HOST=tu_host
DB_USER=tu_usuario
DB_PASSWORD=tu_password
DB_NAME=tu_base_de_datos
```

> Las credenciales reales no deben almacenarse en GitHub.

---

### 3. Ejecutar Backend

```bash
npm start
```

El servidor estará disponible normalmente en:

```text
http://localhost:3000
```

---

### 4. Ejecutar Frontend

Abrir otra terminal y entrar en:

```bash
cd Tienda-Online
```

Instalar dependencias:

```bash
npm install
```

Ejecutar Angular:

```bash
ng serve
```

Abrir:

```text
http://localhost:4200
```

---

## 🔌 API

El backend proporciona endpoints REST para consultar y gestionar los productos.

Ejemplo:

```http
GET /api/products
```

Respuesta:

```json
[
  {
    "id": 1,
    "nombre": "Aceite de Lavanda",
    "descripcion": "Aceite de lavanda",
    "precio": 19,
    "imagen": "..."
  }
]
```

---

## ☁️ Despliegue

El proyecto utiliza servicios cloud para mantener separados sus componentes:

**Frontend**

Angular desplegado en Render.

**Backend**

Node.js + Express desplegado en Render.

**Base de datos**

MySQL alojado en Aiven.

Esta configuración permite mantener una arquitectura distribuida:

```text
Frontend
   ↓
Render
   ↓
Backend REST API
   ↓
Render
   ↓
MySQL
   ↓
Aiven
```

---

## 🔐 Seguridad y buenas prácticas

El proyecto utiliza variables de entorno para evitar almacenar credenciales de conexión directamente en el código fuente.

Se utiliza `.gitignore` para evitar subir archivos sensibles y dependencias innecesarias como:

```text
.env
node_modules/
.angular/
```

---

## 🎯 Objetivo del proyecto

Este proyecto forma parte de mi experiencia práctica en desarrollo Full Stack y demuestra competencias en:

* Desarrollo Frontend
* Desarrollo Backend
* Diseño y consumo de APIs REST
* Bases de datos relacionales
* Integración de servicios externos
* Integración de pagos
* Control de versiones
* Despliegue en la nube
* Arquitectura de aplicaciones web

---

## 👨‍💻 Autor

**David Stiven Moreno Muñoz**

Full Stack Web Developer

📍 Dosquebradas, Risaralda, Colombia

📧 [davidstiven36912@gmail.com](mailto:davidstiven36912@gmail.com)

**GitHub:**
https://github.com/davidstiven36912

---

## 📌 Estado del proyecto

**Proyecto funcional y desplegado en la nube.**

El sistema cuenta con Frontend, Backend, API REST, base de datos MySQL e integración de pagos.
