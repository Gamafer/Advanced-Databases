import React from 'react'
import { Container, Form, Row, Col, Button } from 'react-bootstrap'
import Layout from '../../components/Layout'
import Input from '../../components/UI/Input/Botton';

/**
* @author
* @function Signup
**/

const Signup = (props) => {
  return(
    <Layout>
      <Container>
        <Row style={{ marginTop: '100px' }}>
          <Col md={{span: 6, offset: 3}}>
            <Form>
              <Row>
                <Col md={6}>
                  <Input
                    label = "Nombre"
                    placeholder = "Nombre"
                    value = ""
                    type = "text"
                    onChange = {() => {}}
                  />
                </Col>
                <Col md={6}>
                  <Input
                    label = "Apellido"
                    placeholder = "Apellido"
                    value = ""
                    type = "text"
                    onChange = {() => {}}
                  />
                </Col>
              </Row>

              <Input
                label = "Email"
                placeholder = "Email"
                value = ""
                type = "email"
                onChange = {() => {}}
              />

              <Input
                label = "Password"
                placeholder = "Password"
                value = ""
                type = "password"
                onChange = {() => {}}
              />

              <Form.Group controlId="formBasicCheckbox">
                <Form.Check type="checkbox" label="Based" />
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

export default Signup