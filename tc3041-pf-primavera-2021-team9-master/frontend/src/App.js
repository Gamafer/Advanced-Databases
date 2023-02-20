import React from 'react'
import './App.css';
import { BrowserRouter as Router, Route, Switch} from 'react-router-dom';
import Home from './containers/Home/homePg';
import Login from './containers/Login/loginPg'
import Signup from './containers/Signup/signupPg';
import RutaPrivada from './components/HOC/rutaPrivada';

function App() {
  return (
    <div className="App">
      <Router>
        <Switch>
          <RutaPrivada path = "/" exact component = {Home} />
          <Route path = "/signup" exact component = {Signup} />
          <Route path = "/login" exact component = {Login} />

        </Switch>
      </Router>
    </div>
  );
}

export default App;
