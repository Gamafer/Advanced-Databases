
CREATE DATABASE eleccdb

connect to eleccdb;

-- CREATE TABLE elecciones ( Num_eleccion INT NOT NULL GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1), EInicio DATE NOT NULL, EFin DATE NOT NULL, tipo_elec VARCHAR(15), sys_ei TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_ef TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tse_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_ei, sys_ef), PERIOD BUSINESS_TIME (Einicio, EFin), PRIMARY KEY(Num_eleccion) );
/* ------------ Crear tabla elecciones --------- */
CREATE TABLE elecciones ( Num_eleccion INT NOT NULL, EInicio DATE NOT NULL, EFin DATE NOT NULL, tipo_elec VARCHAR(15), sys_ei TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_ef TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tse_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_ei, sys_ef), PERIOD BUSINESS_TIME (Einicio, EFin), PRIMARY KEY(Num_eleccion, EInicio, EFin) );

CREATE TABLE hist_elecciones LIKE elecciones;

ALTER TABLE elecciones ADD VERSIONING USE HISTORY TABLE hist_elecciones;

 /* ------------ Crear tabla colegio --------------------- */

--CREATE TABLE colegio ( Num_correlativo INT NOT NULL, cant_electores INT NOT NULL, CInicio DATE NOT NULL, CFin DATE NOT NULL, Num_elec INT NOT NULL, sys_ci TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_cf TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsc_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_ci, sys_cf), PERIOD BUSINESS_TIME (CInicio, CFin), PRIMARY KEY(Num_correlativo, CInicio, CFin), FOREIGN KEY(Num_elec) REFERENCES elecciones(Num_eleccion) );
CREATE TABLE colegio ( Num_correlativo INT NOT NULL, cant_electores INT NOT NULL, CInicio DATE NOT NULL, CFin DATE NOT NULL, Num_elec INT NOT NULL, sys_ci TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_cf TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsc_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_ci, sys_cf), PERIOD BUSINESS_TIME (CInicio, CFin), PRIMARY KEY(Num_correlativo), FOREIGN KEY(Num_elec, CInicio, CFin) REFERENCES elecciones(Num_eleccion, EInicio, EFin) );

CREATE TABLE hist_colegio LIKE colegio;

ALTER TABLE colegio ADD VERSIONING USE HISTORY TABLE hist_colegio;

/* ------------ Crear tabla mesa --------------------- */

-- CREATE TABLE mesa ( Id_mesa INT NOT NULL GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1), Nombre_mesa VARCHAR(1) NOT NULL, MInicio DATE NOT NULL, MFin DATE NOT NULL, num_corr INT NOT NULL, sys_mi TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_mf TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsm_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_mi, sys_mf), PERIOD BUSINESS_TIME (MInicio, MFin), PRIMARY KEY(Id_mesa), FOREIGN KEY(num_corr) REFERENCES colegio(Num_correlativo) );
CREATE TABLE mesa ( Id_mesa INT NOT NULL GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1), Nombre_mesa VARCHAR(1) NOT NULL, num_corr INT NOT NULL, sys_mi TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_mf TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsm_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_mi, sys_mf), PRIMARY KEY(Id_mesa), FOREIGN KEY(num_corr) REFERENCES colegio(Num_correlativo) );
 
CREATE TABLE hist_mesa LIKE mesa;

ALTER TABLE mesa ADD VERSIONING USE HISTORY TABLE hist_mesa;


/* ------------ Crear tabla Partido --------------------- */

CREATE TABLE partido ( Nombre_partido VARCHAR(20) NOT NULL, Nombre_pres VARCHAR(20) NOT NULL, Apellidos_pres VARCHAR(50) NOT NULL, Siglas VARCHAR(3) NOT NULL, PStart DATE NOT NULL, PEnd DATE NOT NULL, sys_pi TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_pf TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsp_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_pi, sys_pf), PERIOD BUSINESS_TIME (PStart, PEnd), PRIMARY KEY(Nombre_partido, PStart, PEnd) ); 

CREATE TABLE hist_partido LIKE partido;

ALTER TABLE partido ADD VERSIONING USE HISTORY TABLE hist_partido;


/* ------------ Crear tabla Votantes --------------------- */

CREATE TABLE votantes ( IFE_Pasaporte VARCHAR(10) NOT NULL, Nombre VARCHAR(40) NOT NULL, Apellidos VARCHAR(100) NOT NULL, Direccion VARCHAR(200), Fecha_nac DATE NOT NULL, sys_vi TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_vf TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsv_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME (sys_vi, sys_vf), Miembro_Suplente VARCHAR(1), pres_voc VARCHAR(1), Id_mesa INT NOT NULL, PRIMARY KEY(IFE_Pasaporte), FOREIGN KEY( Id_mesa) REFERENCES mesa(Id_mesa) );

CREATE TABLE hist_votantes LIKE votantes;

ALTER TABLE votantes ADD VERSIONING USE HISTORY TABLE hist_votantes;


/* ------------ Crear tabla Apoderado --------------------- */

CREATE TABLE apoderados ( IFE_ap VARCHAR(10) NOT NULL, Nombre_Ap VARCHAR(40) NOT NULL, Apellido_Ap VARCHAR(100) NOT NULL, AInicio DATE NOT NULL, AFin DATE NOT NULL, sys_ai TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_af TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsa_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_ai, sys_af), PERIOD BUSINESS_TIME (AInicio, AFin),nom_partido VARCHAR(20) NOT NULL, PRIMARY KEY(IFE_ap, AInicio, AFin), FOREIGN KEY(nom_partido, AInicio, AFin) REFERENCES partido(Nombre_partido, PStart, PEnd) );

CREATE TABLE hist_apoderados LIKE apoderados;

ALTER TABLE apoderados ADD VERSIONING USE HISTORY TABLE hist_apoderados;

/* ------------ Crear tabla Federal --------------------- */
CREATE TABLE federal ( Id_mesa INT NOT NULL, nom_partido VARCHAR(20) NOT NULL, votos_validos INT NOT NULL, votos_nulos INT NOT NULL, votos_blancos INT NOT NULL, FIP DATE NOT NULL, FFP DATE NOT NULL, sys_fi TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_ff TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsf_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_fi, sys_ff), PRIMARY KEY(Id_mesa, nom_partido, FIP, FFP), FOREIGN KEY (Id_mesa) REFERENCES mesa(Id_mesa), FOREIGN KEY(nom_partido, FIP, FFP ) REFERENCES partido(Nombre_partido, PStart, PEnd) );

CREATE TABLE hist_federal LIKE federal;

ALTER TABLE federal ADD VERSIONING USE HISTORY TABLE hist_federal;


/* ------------ Crear tabla Electoral --------------------- */

CREATE TABLE electoral ( Id_mesa INT NOT NULL, nom_partido VARCHAR(20) NOT NULL, votos_validos INT NOT NULL, votos_nulos INT NOT NULL, votos_blancos INT NOT NULL, FIP DATE NOT NULL, FFP DATE NOT NULL, sys_fi TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW BEGIN, sys_ff TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS ROW END, tsf_id TIMESTAMP(12) NOT NULL GENERATED ALWAYS AS TRANSACTION START ID, PERIOD SYSTEM_TIME(sys_fi, sys_ff), PRIMARY KEY(Id_mesa, nom_partido, FIP, FFP), FOREIGN KEY (Id_mesa) REFERENCES mesa(Id_mesa), FOREIGN KEY(nom_partido, FIP, FFP ) REFERENCES partido(Nombre_partido, PStart, PEnd) );

CREATE TABLE hist_electoral LIKE electoral;

ALTER TABLE electoral ADD VERSIONING USE HISTORY TABLE hist_electoral;






/* -------------- Crear unique indexes ------------------------ */


CREATE UNIQUE INDEX index_period_elecciones ON ELECCIONES(Num_eleccion, BUSINESS_TIME WITHOUT OVERLAPS); 

CREATE UNIQUE INDEX index_period_colegio ON colegio(Num_correlativo, BUSINESS_TIME WITHOUT OVERLAPS);

-- CREATE UNIQUE INDEX index_period_mesa ON mesa(Id_mesa, BUSINESS_TIME WITHOUT OVERLAPS); 

CREATE UNIQUE INDEX index_period_partido ON partido(Nombre_partido, BUSINESS_TIME WITHOUT OVERLAPS);

CREATE UNIQUE INDEX index_period_apoderados ON apoderados(IFE_ap, BUSINESS_TIME WITHOUT OVERLAPS); 

-- CREATE UNIQUE INDEX index_period_votantes ON votantes(IFE_Pasaporte, BUSINESS_TIME WITHOUT OVERLAPS); 




/* Para conectarse al docker
docker run -itd --name testAct1 --privileged=true -p 50000:50000 -e LICENSE=accept -e DB2INST1_PASSWORD=password -e DBNAME=testdb ibmcom/db2 bash

docker exec -ti testAct1 bash -c "su - db2inst1" */
