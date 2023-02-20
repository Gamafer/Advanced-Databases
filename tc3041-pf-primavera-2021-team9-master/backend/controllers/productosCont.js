const Producto = require('../models/productosM');
const shortid = require('shortid')
const slugify = require('slugify')

exports.crearProducto = (req,res)=>{


    //res.status(200).json({file: req.files, body: req.body})//Consigue la imagen que estmos subiendo

    const {
        nombre, precio, descripcion, categoria, cantidad, agregadoPor
    } = req.body;

    let fotosP = [] //Arreglo de las fotos del producto

    if(req.files.length > 0){
        fotosP = req.files.map( file =>{
            return { img: file.filename}
        });
    }

    const producto = new Producto({
        nombre: nombre,
        slug: slugify(nombre),
        precio,
        cantidad,
        descripcion,
        fotosP,
        categoria,
        agregadoPor: req.client._id //toma el id del cliente para poder asociarlo luego
    });


    producto.save(((error, producto) => {

        if(error){//no se pudo guardar 
            return res.status(400).json({error});
        }if(producto){// se gurado sin problemas
            res.status(201).json({ producto});
        }

    }));


};