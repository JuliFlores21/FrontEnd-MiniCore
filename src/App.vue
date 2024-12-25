<template>
  <div id="app">
    <header>
      <h1>Reporte de Gastos por Departamento</h1>
    </header>
    <router-view />
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 20px;
}

header {
  background-color: #3498db;
  color: white;
  padding: 20px;
  font-size: 1.5rem;
  text-align: center;
}
</style>
