const Carro = require('../models/carritoM');


exports.agregarProductoC = (req, res) =>{
    
    Carro.findOne({ cliente: req.client._id})//Checar si ya existe un carro o no
    .exec((error,carro)=>{

        if(error){//hay un error
            return res.status(400).json({error})

        }if(carro){//Si el carro ya existe solo se tiene que agregar el producto nuevo

            const producto = req.body.productosAgregados.productos;
            const existe = carro.productosAgregados.find(c => c.productos == producto);//Checar si el item ya esta en el carro para solo agregar cantidad
            
            let condition, actualizar;

            if(existe){//Si ya está en el carro
                condition = { cliente: req.client._id, "productosAgregados.productos": producto};
                actualizar = {"$set":{  
                    "productosAgregados.$": {
                        ...req.body.productosAgregados,
                        cantidad: existe.cantidad + req.body.productosAgregados.cantidad //Agrega la cantidad de productos agregados al carro
                        }
                    }
                };

            }else{//Si no está en el carro
                condition = { cliente: req.client._id};
                actualizar = {"$push":{
                    "productosAgregados": req.body.productosAgregados
                    }
                };
            }

            Carro.findOneAndUpdate(condition, actualizar)
            .exec((error, _carro) =>{
                if(error){
                    return res.status(400).json({error});
                }if(carro){
                    return res.status(201).json({carro: _carro})
                }
            }) 
        }else{//Carro no existe entonces se tiene que crear nuevo carro
            const carrito = new Carro({
                cliente: req.client._id,
                productosAgregados: [req.body.productosAgregados]
            });
        
            carrito.save((error, carro)=>{
        
                if(error){
                    return res.status(400).json({error});
                }if(carro){
                    return res.status(201).json({carro})
                }
        
        
            });
        }

    })
};