import React from 'react'
import { Navbar, Nav, NavDropdown, Container } from 'react-bootstrap'
import { NavLink, Link } from 'react-router-dom';

/**
* @author
* @function Header
**/

const Header = (props) => {
    return (
        <Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
            <Container>
                {/*<Navbar.Brand href="#home"></Navbar.Brand>*/}
                <Link to = "/" className = "navbar-brand">Soy Admin</Link>
                <Navbar.Toggle aria-controls="responsive-navbar-nav" />
                <Navbar.Collapse id="responsive-navbar-nav">
                    <Nav className="mr-auto">
                        {/*<NavDropdown title="Dropdown" id="collasible-nav-dropdown">
                            <NavDropdown.Item href="#action/3.1">Action</NavDropdown.Item>
                            <NavDropdown.Item href="#action/3.2">Another action</NavDropdown.Item>
                            <NavDropdown.Item href="#action/3.3">Something</NavDropdown.Item>
                            <NavDropdown.Divider />
                            <NavDropdown.Item href="#action/3.4">Separated link</NavDropdown.Item>
                            </NavDropdown>*/}
                    </Nav>
                    <Nav>
                        <li className="nav-item">
                            <NavLink to="/login" className ="nav-link">Ingresar</NavLink>
                        </li>
                        <li>
                            <NavLink to="/signup" className ="nav-link">Unirse</NavLink>
                        </li>
                    </Nav>
                </Navbar.Collapse>
            </Container>
        </Navbar>
    )

}

export default Header