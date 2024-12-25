import axios from 'axios';

const apiClient = axios.create({
  baseURL: 'http://localhost:5062/api', // Cambia el puerto según tu backend
  headers: {
    'Content-Type': 'application/json',
  },
});

export default apiClient;
