import { authConstantes } from "../acciones/consantesAcc";

const estadoInicial = {
    token: null,
    cliente:{
        nombre: '',
        apellido: '',
        email: ''
    },
    authenticate: false,
    authenticating: false
};


export default (state = estadoInicial, action) =>{

    console.log(action)
    
    switch(action.type){//Switch para poder manejar los diferentes outcomes que puede tener ingresar
        case authConstantes.LOGIN_REQUEST:
            state = {
                ...state,
                authenticating: true
            }
            break;
        case authConstantes.LOGIN_SUCCESS:
            state = {
                ...state,
                cliente:  action.payload.cliente,
                token: action.payload.token,
                authenticate: true,
                authenticating: false
            }
            break;
    }

    return state;
}