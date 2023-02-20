const Client = require('../../models/client');
const jwt = require('jsonwebtoken');

exports.signup = (req,res) =>{
    Client.findOne({ email: req.body.email})
    .exec((error,client) =>{//Checa que el mail no este en mongo para que pueda ser agregado, de lo contrario regresa error
        if(client) return res.status(400).json({
            message: 'Admin ya fue registrado'
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
            username: Math.random().toString(),
            nivel: 'admin' //le asigna el nivel admin al usuario creado con este modelo
        });

        cliente.save((error, data)=>{
            if(error){
                return res.status(400).json({//No se pudo crear al admin
                    message: 'Hubo un error creando al admin'
                });
            }
            if(data){
                return res.status(201).json({//regresa mensaje que nos muestra que el admin fue creado
                    client: 'Se a creado un Admin'
                })
            }
        })

    })
}

exports.login = (req,res)=>{//Nos permite iniciar sesión como un admin
    Client.findOne({ email: req.body.email})
    .exec((error,client)=>{
        if(error){
            return res.status(400).json({error});
        }if(client){//Si el usuario existe
            if(client.authenticate(req.body.password) && client.nivel == 'admin'){//Si el usuario y el password matchean 
                const token = jwt.sign({_id: client._id, nivel:client.nivel}, process.env.JSECRET, {expiresIn: "5h"})//Token expira despues de 5h, el token nos da info del id y si es admin o cliente
                
                const {_id, nombre, apellido, email, nivel, nombreCompleto} = client;
                res.status(200).json({
                    token,
                    client:{
                        _id, nombre, apellido, email, nivel, nombreCompleto
                    }
                });
            }else{//Si el password no matchea entonces se envía un mensaje
                return res.status(400).json({
                    message: 'Password Incorrecto'
                })
            }
        }
    })
}

