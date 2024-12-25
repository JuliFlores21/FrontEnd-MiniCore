import axios from 'axios';

const apiClient = axios.create({
  baseURL: 'https://www.corefinal.somee.com/api', // Cambia el puerto según tu backend
  headers: {
    'Content-Type': 'application/json',
  },
});

export default apiClient;
