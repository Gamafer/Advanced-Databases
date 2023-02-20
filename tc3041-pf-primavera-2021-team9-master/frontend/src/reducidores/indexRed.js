import { combineReducers } from 'redux';
import autReducidor from './aut.reducidor';


const rootReducer = combineReducers({

    auth: autReducidor

});

export default rootReducer;