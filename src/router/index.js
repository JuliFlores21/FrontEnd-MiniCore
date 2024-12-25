import { createRouter, createWebHistory } from 'vue-router'
import ReporteView from '../views/ReporteView.vue'

const routes = [
  {
    path: '/',
    name: 'Reporte',
    component: ReporteView
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
