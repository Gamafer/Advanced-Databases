const mongoose = require('mongoose');
const bcrypt = require('bcrypt');
//Modelo de la base de datos de usuarios, administradores
const clientSchema = new mongoose.Schema({
    nombre:{
        type: String,
        required: true
    },
    apellido:{
        type: String,
        required: true
    },
    username:{
        type: String,
        required: true,
        unique: true,
        index : true
    },
    email:{
        type: String,
        required: true,
        unique: true,
    },
    passw:{
        type: String,
        required: true, 
    },
    nivel:{
        type: String,
        enum: ['normal', 'admin'],
        default: 'normal' 
    },
    pfp:{
        type: String
    }
})


clientSchema.virtual('password')
.set(function(password){
   this.passw = bcrypt.hashSync(password, 10);
});//Se crea un password encryptado

clientSchema.virtual('nombreCompleto')
.get(function(){
    return `${this.nombre} ${this.apellido}`;
})//Se crea una variable que contiene el nombre completo y el apellido

clientSchema.methods = {
    authenticate: async function (password) {
      return await bcrypt.compare(password, this.passw);
    },
};//Checa que los passwords coincidan

module.exports = mongoose.model('Client', clientSchema)//Exportamos al cliente (nombre collecion) para poder utilizarlo y también su esquema