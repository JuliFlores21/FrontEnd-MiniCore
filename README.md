# MiniCore Backend y Frontend

Este proyecto consiste en un sistema para gestionar y reportar los gastos relacionados con empleados y departamentos de una organización. Incluye un backend desarrollado en ASP.NET Core y un frontend en Vue.js.

---

## Características

### Backend
- **Framework:** ASP.NET Core Web API
- **Base de datos:** SQL Server
- **Funcionalidad principal:**
  - Filtrar y calcular los gastos por departamento en un rango de fechas.
  - Exponer datos de empleados, departamentos y gastos a través de endpoints REST.
- **Herramientas adicionales:**
  - Entity Framework Core para acceso a la base de datos.
  - CORS habilitado para permitir la comunicación con el frontend.

### Frontend
- **Framework:** Vue.js
- **Funcionalidad principal:**
  - Selección de un rango de fechas para filtrar los gastos.
  - Visualización de los resultados en una tabla.
  - Suma total de los gastos al final de la tabla.
  - Navegación fluida con Vue Router.

---

## Requisitos Previos

### Backend
- .NET SDK 7.0 o superior
- SQL Server (local o remoto)
- Visual Studio 2022 o superior

### Frontend
- Node.js v16 o superior
- Vue CLI 5 o superior

---

## Instalación

### Backend
1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/minicore-backend.git
   cd minicore-backend
