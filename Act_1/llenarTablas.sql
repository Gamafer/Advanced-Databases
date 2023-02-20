
/* ------- Insert elecciones 4 -------- */
INSERT INTO elecciones (Num_eleccion, EInicio, EFin, tipo_elec) VALUES (1, '2021-02-23', '2021-02-27', 'federal');

INSERT INTO elecciones (Num_eleccion, EInicio, EFin, tipo_elec) VALUES (2, '2021-03-2', '2021-03-7', 'electoral');

INSERT INTO elecciones (Num_eleccion, EInicio, EFin, tipo_elec) VALUES (3, '2021-04-15', '2021-04-26', 'electoral');

INSERT INTO elecciones (Num_eleccion, EInicio, EFin, tipo_elec) VALUES (4, '2021-05-25', '2021-05-29', 'federal');

INSERT INTO elecciones (Num_eleccion, EInicio, EFin, tipo_elec) VALUES (5, '2021-06-15', '2021-06-26', 'electoral');

INSERT INTO elecciones (Num_eleccion, EInicio, EFin, tipo_elec) VALUES (6, '2021-07-25', '2021-07-29', 'federal');

INSERT INTO elecciones (Num_eleccion, EInicio, EFin, tipo_elec) VALUES (7, '2021-08-15', '2021-08-26', 'electoral');




/* ------- Insert colegio 10 -------- */

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (1, 100, '2021-02-23', '2021-02-27', 1); -- primera eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (2, 100, '2021-02-23', '2021-02-27', 1); -- Prim eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (3, 100, '2021-02-23', '2021-02-27', 1); -- prim eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (4, 100, '2021-03-2', '2021-03-7', 2); -- segunda eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (5, 100, '2021-03-2', '2021-03-7', 2); -- segunda eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (6, 100, '2021-03-2', '2021-03-7', 2); -- segunda eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (7, 100, '2021-04-15', '2021-04-26', 3); -- tercera eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (8, 100, '2021-04-15', '2021-04-26', 3); -- tercera eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (9, 100, '2021-04-15', '2021-04-26', 3); -- tercera eleccion

INSERT INTO colegio (Num_correlativo, cant_electores, CInicio, CFin, Num_elec ) VALUES (10, 100, '2021-05-25', '2021-05-29', 4); -- cuarta eleccion


/* ------- Insert mesa 30 -------- */
INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 1); -- Colegio 1 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 1); -- Colegio 1 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 1); -- Colegio 1 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 2); -- Colegio 2 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 2); -- Colegio 2 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 2); -- Colegio 2 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 3); -- Colegio 3 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 3); -- Colegio 3 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 3); -- Colegio 3 -- primera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 4); -- Colegio 4 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 4); -- Colegio 4 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 4); -- Colegio 4 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 5); -- Colegio 5 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 5); -- Colegio 5 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 5); -- Colegio 5 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 6); -- Colegio 6 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 6); -- Colegio 6 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 6); -- Colegio 6 -- segunda eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 7); -- Colegio 7 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 7); -- Colegio 7 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 7); -- Colegio 7 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 8); -- Colegio 8 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 8); -- Colegio 8 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 8); -- Colegio 8 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 9); -- Colegio 9 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 9); -- Colegio 9 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 9); -- Colegio 9 -- tercera eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('A', 10); -- Colegio 10 -- cuarta eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('B', 10); -- Colegio 10 -- cuarta eleccion

INSERT INTO mesa (Nombre_mesa, num_corr) VALUES ('C', 10); -- Colegio 10 -- cuarta eleccion 








/* ------- Insert partidos 5 -------- */

INSERT INTO partido (Nombre_partido, Nombre_pres, Apellidos_pres, Siglas, PStart, PEnd) VALUES ('Partido barcelona', 'Raul', 'Gonzalez', 'FCB', '2021-02-23', '2021-02-27' ); -- Primer partido

INSERT INTO partido (Nombre_partido, Nombre_pres, Apellidos_pres, Siglas, PStart, PEnd) VALUES ('Partido bimbo', 'Ignacio', 'Garcia', 'PBB', '2021-02-23', '2021-02-27' ); -- Segundo partido -- Primera eleccion

INSERT INTO partido (Nombre_partido, Nombre_pres, Apellidos_pres, Siglas, PStart, PEnd) VALUES ('Partido coca', 'Pepe', 'Sanchez', 'PCC', '2021-02-23', '2021-02-27' ); -- Tercer partido

INSERT INTO partido (Nombre_partido, Nombre_pres, Apellidos_pres, Siglas, PStart, PEnd) VALUES ('Partido rosa', 'Lionel', 'Messi', 'PRS', '2021-02-23', '2021-02-27' ); -- Cuarto partido

INSERT INTO partido (Nombre_partido, Nombre_pres, Apellidos_pres, Siglas, PStart, PEnd) VALUES ('Partido guadalupe', 'Juan', 'Paco', 'RDG', '2021-02-23', '2021-02-27' ); -- Quinto partido


/* ------- Insert votantes 100 -------- */


INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE000','Elvira','Valentín','Circunvalación Granado 720 Edif. 497 , Depto. 304','2009-01-19','S', null, 8);

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE001','Tomás','Feliciano','Periférico Norte Hidalgo 721 Edif. 007 , Depto. 394','1996-06-01','S', null, 23);

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE002','Israel','Mascareñas','Callejón Sur Mireles 306 787','2002-11-09','null', null, 17);

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE003','Luis Miguel','Ramírez','Boulevard Mongolia 008 954','2004-06-23','S', null, 18);

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE004','Amelia','Monroy','Ampliación Sur Mejía 838 Edif. 424 , Depto. 418','1972-08-02','M','V', 23); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE005','Iván','Fierro','Eje vial Bahamas 934 Interior 555','2006-12-01','null', null, 5);

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE006','Roberto','Serrato','Ampliación Sur Galindo 340 Edif. 404 , Depto. 624','2007-03-05','M','V', 12); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE007','Genaro','Aponte','Continuación Guinea Bissau 568 174','1974-10-02','M','V', 0); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE008','Leticia','Muro','Calle Bulgaria 003 Edif. 494 , Depto. 496','2001-07-29','S', null, 0);

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE009','Jacinto','Casares','Privada República Federal Democrática de Nepal 250 948','1997-04-07','null', null, 23);

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE010','Antonio','Bustos','Cerrada Sur Moreno 037 330','2014-11-23','M', null, 14); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE011','Sergio','González','Ampliación Sur Véliz 272 Edif. 889 , Depto. 334','1994-09-07','S', null, 3); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE012','Socorro','Zaragoza','Pasaje Sur Osorio 929 Edif. 902 , Depto. 666','1999-07-05','M','V', 10); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE013','Araceli','Botello','Calle Melgar 785 Edif. 623 , Depto. 053','1990-01-09','null', null, 23); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE014','Teresa','Hurtado','Retorno República Democrática del Congo 429 689','1994-03-04','M', null, 4); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE015','Martha','Valle','Diagonal Lituania 389 Edif. 050 , Depto. 279','2001-07-11','M', null, 2); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE016','Francisco','Salcedo','Ampliación Carvajal 285 Edif. 188 , Depto. 967','2011-02-10','null', null, 23); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE017','Porfirio','Roybal','Privada Orta 618 Interior 167','2016-09-04','M','V', 24); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE018','Vicente','Orosco','Privada Reséndez 310 Interior 006','2018-03-14','M', null, 27); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE019','Esperanza','Toro','Ampliación Gaytán 652 Edif. 337 , Depto. 422','2019-02-17','M','P', 10); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE020','Dolores','Hernandes','Peatonal Myanmar 327 Edif. 059 , Depto. 952','1970-03-12','S', null, 30); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE021','Hilda','Aragón','Callejón Norte Melgar 863 989','1984-12-14','M', null, 11); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE022','Isabel','Anguiano','Retorno Colombia 057 193','1989-08-31','null', null, 16); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE023','Alejandra','Castillo','Privada Norte Pichardo 394 Edif. 606 , Depto. 286','1981-11-02','null', null, 5); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE024','Pablo','Serrato','Continuación Haití 821 Interior 994','1971-07-02','M', null, 9); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE025','Sandra','Gallardo','Avenida Ramón 724 946','2020-09-27','null', null, 14); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE026','Itzel','Lara','Corredor Sur Amador 957 890','2000-06-02','null', null, 26); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE027','Ricardo','Alva','Calzada Tamayo 632 757','1977-09-11','M','P', 20); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE028','Hugo','Garza','Circuito Mónaco 591 Edif. 846 , Depto. 430','1998-05-25','M','V', 0); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE029','Irene','Lovato','Ampliación Oquendo 663 Interior 829','2003-02-16','M','V', 27); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE030','Graciela','Caraballo','Circuito Aguascalientes 290 Interior 188','1977-11-01','S', null, 1); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE031','Alejandra','Ceja','Viaducto Sur Laureano 887 Edif. 177 , Depto. 368','2003-01-25','M','P', 20); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE032','Elsa','Lozada','Viaducto Estados Unidos de América 151 769','2013-07-07','M','V', 23); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE033','Zeferino','Cantú','Calle México 366 Edif. 736 , Depto. 638','2005-10-21','S', null, 6); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE034','Leonor','Barrera','Calle Hidalgo 930 Interior 754','2015-03-02','S', null, 9); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE035','Benjamín','Fierro','Periférico Guanajuato 204 731','2005-04-11','S', null, 22); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE036','Clemente','Bétancourt','Periférico Elizondo 588 447','1981-01-20','null', null, 1); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE037','Paola','Fernández','Circunvalación Sur Gutiérrez 041 Edif. 930 , Depto. 124','1992-02-10','M', null, 23); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE038','Mónica','Montoya','Calzada Sur Montemayor 541 122','2017-08-21','M','P', 12); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE039','Leonor','Vallejo','Avenida México 329 Interior 678','2006-04-09','M','V', 30); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE040','Angélica','González','Boulevard Nuevo León 704 Interior 910','1990-12-02','M','P', 25); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE041','Nicolás','Ocampo','Continuación Vietman 747 Interior 263','2017-08-06','S', null, 9); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE042','María Teresa','Murillo','Periférico Nueva Zelandia 514 094','1998-05-19','null', null, 3); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE043','Rubén','Contreras','Prolongación Miramontes 281 Interior 813','1984-11-24','M','V', 22); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE044','Fabiola','Niño','Corredor Norte Granados 922 Interior 702','1993-10-06','M', null, 24); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE045','Carlos','Gallardo','Diagonal Esquivel 816 Edif. 057 , Depto. 111','2001-01-03','M', null, 20); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE046','Daniela','Carrasco','Corredor Sandoval 985 Edif. 967 , Depto. 692','1976-04-28','M','V', 5); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE047','Patricio','Sierra','Pasaje Campeche 068 Edif. 515 , Depto. 975','1976-08-21','S', null, 18); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE048','Hilda','Canales','Calle Sinaloa 631 598','2020-06-23','M','P', 19); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('IFE049','Alonso','Orellana','Circunvalación Durango 165 033','2016-02-03','M', null, 16); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS050','Nicholas','Townsend','7720 Kaylee Orchard Suite 703','1993-08-31', null, null, 29); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS051','Fernanda','Pascarella','8047 Castillo Light','2005-01-13', null, null, 8); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS052','Ruggero','Richmond','4414 Gutierrez Coves Apt. 550','1996-03-14', null, null, 3); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS053','Justin','Rodriguez','Rotonda Nino 4','1986-10-07', null, null, 5); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS054','Michael','Delacruz','14960 Stewart Groves Suite 134','1999-10-27', null, null, 0); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS055','Roberto','Mcmahon','707 Michael Springs','1993-04-07', null, null, 15); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS056','Ida','Sauli','Rotonda Vivaldi 2','2014-08-30', null, null, 11); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS057','Daniele','Martinez','92404 Page Branch Suite 410','2013-09-20', null, null, 28); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS058','Darius','Panicucci','5209 Janice Wall','1999-12-02', null, null, 3); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS059','Jessica','Wilson','67133 David Drive Suite 834','2009-01-11', null, null, 18); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS060','Veronica','Parker','Strada Bruno 8','1986-08-24', null, null, 14); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS061','Lucio','Mckinney','8368 Erin Loop Suite 388','1980-12-15', null, null, 20); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS062','Elisa','Coleman','Viale Bertoli 307 Piano 8','2014-06-21', null, null, 30); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS063','Cheyenne','Lopez','Borgo Viridiana 8 Piano 4','1983-03-21', null, null, 26); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS064','Arnulfo','Orengo','Borgo Gabriele 32','1979-07-26', null, null, 22); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS065','Laureano','Grant','689 Hunter Cliffs Apt. 764','1973-06-16', null, null, 30); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS066','Brian','Jackson','6953 Austin Island Suite 584','2003-09-20', null, null, 28); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS067','Timothy','Agnesi','606 Harmon Hill','1995-05-01', null, null, 29); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS068','Becky','Smith','Incrocio Nicolini 830 Appartamento 85','2006-03-17', null, null, 2); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS069','Thomas','Cheda','71890 Wright Fields','2013-11-21', null, null, 24); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS070','Kayla','Strickland','9594 Carolyn Court Apt. 045','2005-06-23', null, null, 2); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS071','Albert','Bompiani','008 Norman Manors','1975-05-18', null, null, 18); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS072','Steve','Bajardi','8521 Joseph Trafficway','1990-02-19', null, null, 7); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS073','Jacob','Versace','Vicolo Rosario 29','1999-05-16', null, null, 6); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS074','Arnaldo','Reed','Incrocio Ornella 4 Piano 8','1990-07-14', null, null, 9); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS075','Brett','Belletini','0555 Lance Trace','1998-06-26', null, null, 18); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS076','Jerry','Lopez','23528 Delgado Plain Apt. 483','1973-04-11', null, null, 26); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS077','Paulina','Tanzini','Rotonda Sibilia 87 Piano 1','2019-12-05', null, null, 0); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS078','Kristen','Agostini','34824 Williams Wall','1996-07-08', null, null, 29); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS079','Monica','Farina','4341 Melissa Drive','1994-03-31', null, null, 5); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS080','Virgilio','Fo','93524 White Mission','1982-06-04', null, null, 1); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS081','Lisa','Wiley','Rotonda Margherita 53','2000-08-14', null, null, 18); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS082','Isabella','Ellis','Vicolo Gasperi 3 Appartamento 10','1985-07-19', null, null, 30); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS083','Charles','Fallaci','Incrocio Mondaini 0 Piano 8','2011-02-03', null, null, 23); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS084','Sante','Parker','Piazza Elena 92 Appartamento 39','1986-03-18', null, null, 30); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS085','Kimberly','Armstrong','5117 Laura Gateway','1981-04-13', null, null, 11); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS086','Nedda','Castiglione','67910 Thomas Rapids','1989-06-05', null, null, 7); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS087','Antonietta','Adams','0414 Marks Valley Suite 487','1975-04-06', null, null, 30); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS088','Kevin','Morris','25299 Kim Extension','1981-05-08', null, null, 8); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS089','Amy','Green','654 Joseph Ramp','2000-05-02', null, null, 4); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS090','Gioffre','Taylor','478 Jimenez Valley','1980-06-22', null, null, 30); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS091','Mallory','Farnese','Via Bartolomeo 8','2009-10-03', null, null, 0); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS092','Ugo','Munoz','Viale Fo 02','1980-02-22', null, null, 16); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS093','Ubaldo','Huang','Contrada Pincherle 21','1978-01-11', null, null, 18); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS094','Robert','Boyer','3706 Tammy Forge','1996-01-23', null, null, 8); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS095','Ugo','Asmundo','Incrocio Loredana 678 Appartamento 54','1989-07-18', null, null, 4); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS096','Pompeo','Sagese','1408 Shaw Meadow','2015-11-03', null, null, 24); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS097','Rembrandt','Pascarella','Contrada Molesini 408','2020-12-05', null, null, 2); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS098','Jessica','Patton','Via Alfio 328','1990-05-31', null, null, 17); 

INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES ('PAS099','Ludovico','Turner','Borgo Matteo 6 Appartamento 13','1996-04-23', null, null, 29); 


/* ------- Insert apooderados 4 -------- */

INSERT INTO apoderados (IFE_ap, Nombre_Ap, Apellido_Ap, AInicio, AFin, nom_partido) VALUES ('IFE001', 'Ximena', 'Barrientos', '2021-02-23', '2021-02-27', 'Partido barcelona');

INSERT INTO apoderados (IFE_ap, Nombre_Ap, Apellido_Ap, AInicio, AFin, nom_partido) VALUES ('IFE002', 'Paola', 'Garcia', '2021-02-23', '2021-02-27', 'Partido bimbo');

INSERT INTO apoderados (IFE_ap, Nombre_Ap, Apellido_Ap, AInicio, AFin, nom_partido) VALUES ('IFE003', 'Francisco', 'Gomez', '2021-02-23', '2021-02-27', 'Partido coca');

INSERT INTO apoderados (IFE_ap, Nombre_Ap, Apellido_Ap, AInicio, AFin, nom_partido) VALUES ('IFE004', 'Rodrigo', 'Benavides', '2021-02-23', '2021-02-27', 'Partido guadalupe');

/* ------- Insert federal y electoral -------- */
INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (1, 'Partido barcelona', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (1, 'Partido barcelona', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (2, 'Partido barcelona', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (2, 'Partido barcelona', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (3, 'Partido barcelona', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (3, 'Partido barcelona', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (1, 'Partido bimbo', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (1, 'Partido bimbo', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (2, 'Partido bimbo', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (2, 'Partido bimbo', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (3, 'Partido bimbo', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (3, 'Partido bimbo', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (1, 'Partido coca', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (1, 'Partido coca', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (2, 'Partido coca', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (2, 'Partido coca', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (3, 'Partido coca', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (3, 'Partido coca', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (1, 'Partido rosa', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (1, 'Partido rosa', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (2, 'Partido rosa', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (2, 'Partido rosa', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (3, 'Partido rosa', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (3, 'Partido rosa', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (1, 'Partido guadalupe', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (1, 'Partido guadalupe', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (2, 'Partido guadalupe', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (2, 'Partido guadalupe', 17, 8, 15, '2021-02-23', '2021-02-27' );

INSERT INTO federal (Id_mesa, nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES   (3, 'Partido guadalupe', 32, 15, 5, '2021-02-23', '2021-02-27' );

INSERT INTO electoral (Id_mesa , nom_partido, votos_validos, votos_nulos, votos_blancos, FIP, FFP) VALUES (3, 'Partido guadalupe', 17, 8, 15, '2021-02-23', '2021-02-27' );





/* ------- Updates -------- */
/*
select Num_eleccion as Eleccion, Nombre_mesa as Nombre_Mesa, nom_partido as Partido, votos_validos, votos_blancos, votos_nulos from electoral join mesa ON mesa.Id_mesa = electoral.Id_mesa join colegio on mesa.num_corr = colegio.Num_correlativo join elecciones On colegio.Num_elec = elecciones.Num_eleccion

UPDATE elecciones FOR PORTION OF BUSINESS_TIME FROM '2021-02-24' TO '2021-02-26' SET tipo_elec = 'municipal' WHERE Num_eleccion = 1;

UPDATE colegio FOR PORTION OF BUSINESS_TIME FROM '2021-03-2' TO '2021-03-7' SET cant_electores = 200 where Num_correlativo = 1;

UPDATE votantes SET Nombre = 'Pedro' WHERE IFE_Pasaporte = 'IFE001';

UPDATE mesa FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' SET num_corr = 2 WHERE Nombre_mesa = 'A';
UPDATE mesa FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' SET num_corr = 2 WHERE Nombre_mesa = 'B';
UPDATE mesa FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' SET num_corr = 2 WHERE Nombre_mesa = 'C'; */