<template>
    <div class="reporte-container">
      <h2>Reporte de Gastos por Departamento</h2>
      <div class="filtros">
        <label for="fechaInicio">Fecha Inicio:</label>
        <input type="date" v-model="fechaInicio" id="fechaInicio" />
        
        <label for="fechaFin">Fecha Fin:</label>
        <input type="date" v-model="fechaFin" id="fechaFin" />
        
        <button @click="generarReporte">Generar Reporte</button>
      </div>
  
      <table v-if="reporte.length > 0">
        <thead>
          <tr>
            <th>Departamento</th>
            <th>Total Gastos</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="item in reporte" :key="item.idDepartamento">
            <td>{{ item.departamento }}</td>
            <td>{{ item.totalGastos.toLocaleString('es-ES', { style: 'currency', currency: 'USD' }) }}</td>
          </tr>
          <!-- Fila para mostrar el total -->
          <tr class="total-row">
            <td><strong>Total:</strong></td>
            <td>
              <strong>
                {{ totalMonto.toLocaleString('es-ES', { style: 'currency', currency: 'USD' }) }}
              </strong>
            </td>
          </tr>
        </tbody>
      </table>
  
      <p v-else>No se encontraron datos para el rango de fechas seleccionado.</p>
    </div>
  </template>
  
  <script>
  import apiClient from "@/axios";
  
  export default {
    data() {
      return {
        fechaInicio: "",
        fechaFin: "",
        reporte: [],
      };
    },
    computed: {
      totalMonto() {
        // Calcula la suma de los gastos totales de todos los departamentos
        return this.reporte.reduce((total, item) => total + item.totalGastos, 0);
      },
    },
    methods: {
      async generarReporte() {
        if (!this.fechaInicio || !this.fechaFin) {
          alert("Por favor, selecciona un rango de fechas.");
          return;
        }
  
        try {
          const response = await apiClient.get(`/Gastos/reporte`, {
            params: {
              fechaInicio: this.fechaInicio,
              fechaFin: this.fechaFin,
            },
          });
          console.log(response.data);
          this.reporte = response.data;
        } catch (error) {
          console.error("Error al generar el reporte:", error);
          alert("Ocurrió un error al generar el reporte.");
        }
      },
    },
  };
  </script>
  
  <style scoped>
  .reporte-container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: #ecf0f1;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }
  h2 {
    text-align: center;
    color: #2c3e50;
  }
  .filtros {
    margin-bottom: 20px;
    display: flex;
    gap: 10px;
    align-items: center;
    justify-content: space-between;
  }
  table {
    width: 100%;
    border-collapse: collapse;
  }
  th, td {
    text-align: left;
    padding: 8px;
    border: 1px solid #ddd;
  }
  th {
    background-color: #3498db;
    color: white;
  }
  .total-row {
    background-color: #dff0d8;
  }
  .total-row td {
    font-weight: bold;
  }
  </style>
  