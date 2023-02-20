const express = require('express');
const router = express.Router();
const { agregarProductoC } = require('../controllers/carritoCont');
const { requireLogin, clientMiddleware } = require('../middleware/middle');

router.post('/usuario/carrito/agregar', requireLogin, clientMiddleware ,agregarProductoC);//Todo lo que se llevara a cabo cuando se visite la ruta especificada



module.exports = router; 