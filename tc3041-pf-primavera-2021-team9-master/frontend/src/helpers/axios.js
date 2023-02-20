import axios from 'axios';
import {api} from '../urlConfig'


const instanciaAxios = axios.create({
    baseURL: api,
    //headers:{
        
    //}
})

export default instanciaAxios;