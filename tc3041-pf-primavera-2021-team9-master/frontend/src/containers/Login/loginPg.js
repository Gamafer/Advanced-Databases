import React, {useEffect, useState} from 'react'
import { Container, Form, Row, Col, Button } from 'react-bootstrap'
import Layout from '../../components/Layout'
import Input from '../../components/UI/Input/Botton';
import {login, sesionIniciada} from '../../acciones/aut.acciones'
import { useDispatch, useSelector } from 'react-redux';
import { Redirect } from 'react-router';

/**
* @author
* @function Login
**/

const Login = (props) => {

  const[email, setEmail] = useState('');
  const[password, setPassword] = useState('');
  const [error, setError] = useState('');
  const auth = useSelector(state => state.auth);
  const dispatch = useDispatch();

  useEffect(() =>{
    if(!auth.authenticate){
      dispatch(sesionIniciada());
    }
    
  }, [])

  const clienteLogin = (e) =>{
    
    e.preventDefault();

    const cliente = {
        email, password
    }

    dispatch(login(cliente));
  }

  if(auth.authenticate){
    return <Redirect to ={'/'}/>
  }

  return (
    <Layout>
      <Container>
        <Row style={{ marginTop: '100px' }}>
          <Col md={{span: 5, offset: 3}}>
            <Form onSubmit= {clienteLogin}>
              <Input
                label = "Email"
                placeholder = "Email"
                value = {email}
                type = "email"
                onChange = {(e) => {setEmail(e.target.value)}}
              />

              <Input
                label = "Password"
                placeholder = "Password"
                value = {password}
                type = "password"
                onChange = {(e) => {setPassword(e.target.value)}}
              />

              <Form.Group controlId="formBasicCheckbox">
                <Form.Check type="checkbox" label="Based?" />
              </Form.Group>
              <Button variant="primary" type="submit">
                Submit
              </Button>
            </Form>
          </Col>
        </Row>
      </Container>
    </Layout>
  )

}

export default Login