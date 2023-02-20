const Client = require('../models/client');
const jwt = require('jsonwebtoken');

exports.signup = (req,res) =>{

    Client.findOne({ email: req.body.email})
    .exec((error,client) =>{//Checa que el mail no este en mongo para que pueda ser agregado, de lo contrario regresa error
        if(client) return res.status(400).json({
            message: 'El mail ya fue registrado'
        })
        const{
            nombre,
            apellido,
            username,
            email,
            passw,
        } = req.body
        const cliente = new Client({
            nombre,
            apellido, 
            email,
            passw,
            username: Math.random().toString()
        });

        cliente.save((error, data)=>{
            if(error){
                return res.status(400).json({//No se pudo crear al cliente
                    message: 'Hubo un error'
                });
            }
            if(data){
                return res.status(201).json({//Se registro al cliente bien
                    client: 'Cliente se ha registrado exitosamente'
                })
            }
        })

    })
}

exports.login = (req,res)=>{//Iniciar sesion como usuario normal
    Client.findOne({ email: req.body.email})
    .exec((error,client)=>{
        if(error){
            return res.status(400).json({error});
        }if(client){//Si el usuario existe
            if(client.authenticate(req.body.password)){//Si el usuario y el password matchean 
                const token = jwt.sign({_id: client._id, nivel:client.nivel}, process.env.JSECRET, {expiresIn: "5h"})//Token expira despues de 5h
                
                const {_id, nombre, apellido, email, nivel, nombreCompleto} = client;
                res.status(200).json({
                    token,
                    client:{
                        _id, nombre, apellido, email, nivel, nombreCompleto
                    }
                });
            }else{//Si el password no matchea entonces se envía un mensaje
                return res.status(400).json({
                    message: 'Passd Incorrecto'
                })
            }
        }
    })
}

