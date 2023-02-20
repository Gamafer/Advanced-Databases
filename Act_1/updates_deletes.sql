/* ------- UPDATES elecciones -------- */
UPDATE elecciones FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' SET tipo_elec = 'electoral' WHERE Num_eleccion = 1;

UPDATE elecciones FOR PORTION OF BUSINESS_TIME FROM '2021-03-2' TO '2021-03-7' SET tipo_elec = 'federal' WHERE Num_eleccion = 2;

UPDATE elecciones FOR PORTION OF BUSINESS_TIME FROM '2021-04-15' TO '2021-04-26' SET tipo_elec = 'federal' WHERE Num_eleccion = 3;



/* ------- UPDATES colegio -------- */
UPDATE colegio FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' SET cant_electores = 150 WHERE Num_correlativo = 1;

UPDATE colegio FOR PORTION OF BUSINESS_TIME FROM '2021-03-2' TO '2021-03-7' SET cant_electores = 115 WHERE Num_correlativo = 4;

UPDATE colegio FOR PORTION OF BUSINESS_TIME FROM '2021-04-15' TO '2021-04-26' SET cant_electores = 112 WHERE  Num_correlativo = 8



/* ------- UPDATES mesa -------- */
UPDATE mesa SET Nombre_mesa = 'x' WHERE Id_mesa = 1;

UPDATE mesa SET Nombre_mesa = 'y' WHERE Id_mesa = 2;

UPDATE mesa SET Nombre_mesa = 'z' WHERE Id_mesa = 3;



/* ------- UPDATES partido -------- */
UPDATE partido FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27'  SET Siglas = 'PBC' WHERE Nombre_partido = 'Partido barcelona';

UPDATE partido FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27'  SET Siglas = 'PbI' WHERE Nombre_partido = 'Partido bimbo';

UPDATE partido FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27'  SET Siglas = 'PCC' WHERE Nombre_partido = 'Partido coca';




/* ------- UPDATES votantes -------- */
UPDATE votantes SET Nombre = 'Patricio' WHERE IFE_Pasaporte = 'IFE001';

UPDATE votantes SET Nombre = 'Elisa' WHERE IFE_Pasaporte = 'IFE003';

UPDATE votantes SET Nombre = 'Zack' WHERE IFE_Pasaporte = 'PAS050';



/* ------- UPDATES apoderado -------- */
UPDATE apoderados FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' SET Nombre_Ap = 'Camila' WHERE IFE_ap = 'IFE001';

UPDATE apoderados FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' SET Nombre_Ap = 'Gabriel' WHERE IFE_ap = 'IFE002';

UPDATE apoderados FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' SET Nombre_Ap = 'Jesus' WHERE IFE_ap = 'IFE003';



/* ------- UPDATES & DELETES federal -------- */
UPDATE federal SET votos_validos = 40 WHERE Id_mesa = 1;

UPDATE federal SET votos_validos = 25 WHERE Id_mesa = 2;

UPDATE federal SET votos_validos = 50 WHERE Id_mesa = 3;



/* ------- UPDATES & DELETES electoral -------- */
UPDATE electoral SET votos_validos = 40 WHERE Id_mesa = 1;

UPDATE electoral SET votos_validos = 25 WHERE Id_mesa = 3;

UPDATE electoral SET votos_validos = 20 WHERE Id_mesa = 2;


/* --------- DELETES --------- */


DELETE FROM federal WHERE Id_mesa = 2 AND nom_partido = 'Partido barcelona';

DELETE FROM federal WHERE Id_mesa = 2 AND nom_partido = 'Partido bimbo';

DELETE FROM federal WHERE Id_mesa = 3 AND nom_partido = 'Partido coca';

DELETE FROM federal WHERE Id_mesa = 1;

DELETE FROM federal WHERE Id_mesa = 2;

DELETE FROM federal WHERE Id_mesa = 3;

DELETE FROM electoral WHERE Id_mesa = 2 AND nom_partido = 'Partido barcelona';

DELETE FROM electoral WHERE Id_mesa = 3 AND nom_partido = 'Partido bimbo';

DELETE FROM electoral WHERE Id_mesa = 2 AND nom_partido = 'Partido rosa';

DELETE FROM electoral WHERE Id_mesa = 1;

DELETE FROM electoral WHERE Id_mesa = 2;

DELETE FROM electoral WHERE Id_mesa = 3;

DELETE FROM apoderados FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' where Nombre_Ap = 'Camila';

DELETE FROM apoderados FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' where Nombre_Ap = 'Gabriel';

DELETE FROM apoderados FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' where Nombre_Ap = 'Jesus';

DELETE FROM votantes WHERE IFE_Pasaporte = 'IFE015';

DELETE FROM votantes WHERE IFE_Pasaporte = 'IFE024';

DELETE FROM votantes WHERE IFE_Pasaporte = 'PAS050';

DELETE FROM votantes WHERE Id_mesa = 1;

DELETE FROM votantes WHERE Id_mesa = 2;

DELETE FROM votantes WHERE Id_mesa = 3;

DELETE FROM votantes WHERE Id_mesa = 4;

DELETE FROM votantes WHERE Id_mesa = 5;

DELETE FROM votantes WHERE Id_mesa = 6;

DELETE FROM votantes WHERE Id_mesa = 7;

DELETE FROM votantes WHERE Id_mesa = 8;

DELETE FROM votantes WHERE Id_mesa = 9;

DELETE FROM votantes WHERE Id_mesa = 10;

DELETE FROM votantes WHERE Id_mesa = 11;

DELETE FROM votantes WHERE Id_mesa = 12;

DELETE FROM votantes WHERE Id_mesa = 13;

DELETE FROM votantes WHERE Id_mesa = 14;

DELETE FROM votantes WHERE Id_mesa = 15;

DELETE FROM votantes WHERE Id_mesa = 16;

DELETE FROM votantes WHERE Id_mesa = 17;

DELETE FROM votantes WHERE Id_mesa = 18;

DELETE FROM votantes WHERE Id_mesa = 19;

DELETE FROM votantes WHERE Id_mesa = 20;

DELETE FROM votantes WHERE Id_mesa = 21;

DELETE FROM votantes WHERE Id_mesa = 22;

DELETE FROM partido FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' where Nombre_partido = 'Partido barcelona';

DELETE FROM partido FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' where Nombre_partido = 'Partido bimbo';

DELETE FROM partido FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' where Nombre_partido = 'Partido rosa';

DELETE FROM mesa WHERE Id_mesa = 1;

DELETE FROM mesa WHERE Id_mesa = 2;

DELETE FROM mesa WHERE Id_mesa = 3;

DELETE FROM mesa WHERE num_corr = 2;

DELETE FROM mesa WHERE num_corr = 5;

DELETE FROM mesa WHERE num_corr = 7;

DELETE FROM mesa WHERE num_corr = 1;

DELETE FROM mesa WHERE num_corr = 4;

DELETE FROM mesa WHERE num_corr = 3;

DELETE FROM mesa WHERE num_corr = 6;

DELETE FROM mesa WHERE num_corr = 8;

DELETE FROM mesa WHERE num_corr = 9;

DELETE FROM mesa WHERE num_corr = 10;

DELETE FROM colegio FOR PORTION OF BUSINESS_TIME FROM '2021-02-23' TO '2021-02-27' where Num_correlativo = 2;

DELETE FROM colegio FOR PORTION OF BUSINESS_TIME FROM '2021-03-2' TO '2021-03-7' where Num_correlativo = 5;

DELETE FROM colegio FOR PORTION OF BUSINESS_TIME FROM '2021-04-15' TO '2021-04-26' where Num_correlativo = 7;

DELETE FROM colegio  where Num_elec = 1;

DELETE FROM colegio  where Num_elec = 2;

DELETE FROM colegio  where Num_elec = 3;

DELETE FROM elecciones FOR PORTION OF BUSINESS_TIME FROM '2021-06-15' TO '2021-06-23' where Num_eleccion = 5;

DELETE FROM elecciones FOR PORTION OF BUSINESS_TIME FROM '2021-07-25' TO '2021-07-29' where Num_eleccion = 6;

DELETE FROM elecciones FOR PORTION OF BUSINESS_TIME FROM '2021-08-15' TO '2021-08-26' where Num_eleccion = 7;

