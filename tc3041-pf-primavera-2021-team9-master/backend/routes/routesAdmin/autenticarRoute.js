const express = require('express');
const {signup, login} = require("../../controllers/controllersAdmin/autenticar");
const { validarSignupRequest, isRequestValidate, validarLoginRequest} = require('../../validators/auth');
const router = express.Router();



router.post('/admin/signup', validarSignupRequest, isRequestValidate, signup);//Todo lo que se llevara a cabo cuando se visite la ruta especificada
router.post('/admin/login', validarLoginRequest, isRequestValidate, login);//Todo lo que se llevara a cabo cuando se visite la ruta especificada


module.exports = router;