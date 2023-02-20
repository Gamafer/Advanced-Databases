import { applyMiddleware, createStore } from "redux";
import rootReducer from "../reducidores/indexRed";
import thunk from "redux-thunk";

const store = createStore(rootReducer, applyMiddleware(thunk));//Creamos una tienda utilizando rootReducer

export default store;