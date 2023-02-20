const express = require('express');
const env = require('dotenv');
const app = express();
const mongoose = require('mongoose');
const cors = require('cors');

//Rutas que utiliza nuestro programa
const userRoutes = require('./routes/autenticarRoute');
const adminRoutes = require('./routes/routesAdmin/autenticarRoute');
const categoriasRoutes = require('./routes/categorias');
const productosRoutes = require('./routes/pructosR');
const carritoRoutes = require('./routes/carritoR');
const path = require('path');


env.config();


//Connect to our data base with our username, password, and the database we want to use
const CONNECTION_URL = "mongodb+srv://Rodbena:admin@cluster0.vvack.mongodb.net/Perrihijos?retryWrites=true&w=majority";//mongo al cual nos conectamos
mongoose.connect(CONNECTION_URL, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
    useCreateIndex: true
}).then(()=>{
    console.log('Database was connected');//Nos confirma que la conexión se logró
})
//********* */

app.use(cors())
app.use(express.json());
app.use('/public/', express.static(path.join(__dirname, 'uploads')));
app.use('/api', userRoutes);//asignamos rutas
app.use('/api', adminRoutes);
app.use('/api', categoriasRoutes);
app.use('/api', productosRoutes);
app.use('/api', carritoRoutes);



app.listen(process.env.PORT, () =>{//Servidor comienza a escuchar en el puerto especificado
    console.log(`Server is running on port ${process.env.PORT}`);
});