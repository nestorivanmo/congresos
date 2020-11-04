--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Script para la inserción de datos

-- Inserción Colonia

insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'LOMAS DE CHAPULTEPEC', 12458);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'VALENTIN GOMEZ FARIAS', 5482);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'EL CARMEN', 8763);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'SAN JUAN TEPENAHUAC (PBLO)', 46900);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'EX EJIDOS DE LA MAGDALENA MIXIHUCA', 43200);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'TAXQUEA', 69106);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'LORETO', 98765);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'GAMA GAVILAN (U HAB)', 78210);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'SAN MIGUEL TEOTONGO I', 9213);
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (nextval('Colonia_seq'), 'LOMAS QUEBRADAS', 6052);

-- Inserción Domicilio

insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'New Castle', '5906', null, 1);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Bunting', '78951', '55', 2);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Bultman', '3', '68899', 3);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Roth', '5', '404', 4);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Farmco', '67335', null, 5);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Hollow Ridge', '34', null, 6);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Blaine', '21', '4914', 7);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Mayer', '70', null, 8);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Maryland', '64247', '2', 9);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Pearson', '52', null, 10);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Jackson', '3', null, 1);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Westport', '3', '595', 2);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Ilene', '90522', null, 3);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Dryden', '6', null, 4);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Rusk', '99091', null, 5);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Dennis', '7957', '2300', 6);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Ilene', '444', '3907', 7);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Holy Cross', '2303', null, 8);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Autumn Leaf', '72', '09', 9);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (nextval('Domicilio_seq'), 'Welch', '440', '3', 10);

-- Inserción Lugar
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Batz and Sons', 5);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Romaguera and Sons', 1);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Halvorson, Bailey and Ebert', 9);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Bergstrom-Nikolaus', 2);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'VonRueden Inc', 7);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Mohr, Kiehn and Denesik', 4);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Fisher Group', 5);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Boyle, Raynor and Hilll', 2);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Green LLC', 7);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (nextval('Lugar_seq'), 'Rice-Brown', 6);

-- Inserción Congreso
<<<<<<< HEAD
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Finance', timestamp '2019-12-29 15:29:34', timestamp '2021-02-27 14:25:38', 7);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Health Care', timestamp '2019-06-30 03:22:43', timestamp '2021-07-12 22:34:47', 1);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Technology', timestamp '2019-10-18 01:26:37', timestamp '2021-10-24 19:21:35', 2);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Technology', timestamp '2019-12-30 19:38:27', timestamp '2021-12-31 14:46:22', 3);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Cars and Bikes', timestamp '2019-05-01 22:05:13', timestamp '2021-05-02 16:30:48', 4);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Technology', timestamp '2019-12-03 15:38:53', timestamp '2021-03-10 15:35:35', 5);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Health Care', timestamp '2019-06-02 23:09:47', timestamp '2021-07-29 09:46:18', 6);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Health Care', timestamp '2019-05-22 18:05:34', timestamp '2021-06-29 13:21:39', 10);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Capital Goods', timestamp '2019-05-06 14:08:43', timestamp '2021-05-10 13:45:40', 8);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Public Utilities', timestamp '2019-03-11 10:57:32', timestamp '2021-03-21 12:47:58', 9);
=======
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Finance', '2019-12-29 15:29:34', '2020-02-27 14:25:38', 7);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Health Care', '2020-06-30 03:22:43', '2020-07-12 22:34:47', 1);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Technology', '2020-10-18 01:26:37', '2020-10-24 19:21:35', 2);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Technology', '2019-12-30 19:38:27', '2019-12-31 14:46:22', 3);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Cars and Bikes', '2020-05-01 22:05:13', '2020-05-02 16:30:48', 4);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Technology', '2019-12-03 15:38:53', '2020-03-10 15:35:35', 5);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Health Care', '2020-06-02 23:09:47', '2020-07-29 09:46:18', 6);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Health Care', '2020-05-22 18:05:34', '2020-06-29 13:21:39', 10);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Capital Goods', '2020-05-06 14:08:43', '2020-05-10 13:45:40', 8);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (nextval('Congreso_seq'), 'Public Utilities', '2020-03-11 10:57:32', '2020-03-21 12:47:58', 9);
>>>>>>> 0e9b91117b90896c6b1881aec9ab39f9b768be4a

-- Inserción Institución
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Wiza-Thompson', 5);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Littel-Beahan', 7);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Herman, Schmitt and Roberts', 1);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Koepp Inc', 9);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Becker, Satterfield and Thiel', 1);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Balistreri LLC', 3);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Wuckert, Macejkovic and Cormier', 7);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Grady, Robel and Price', 3);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'King-Howe', 9);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (nextval('Institucion_seq'), 'Romaguera-Greenholt', 7);

-- Inserción Ponente
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Lelia', null, 'Belding', 'Trinke', 1, 6);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Arlana', 'Dew', 'Walmsley', 'Vorley', 2, 3);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Nappy', null, 'Creus', 'Gludor', 4, 6);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Giffy', 'Haven', 'Claw', 'Allatt', 6, 3);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Judi', null, 'Pieters', 'Casterou', 4, 7);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Truda', null, 'Brilleman', 'Mapston', 1, 3);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Sibelle', 'Raddy', 'Mation', 'Letts', 3, 8);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Tricia', null, 'Pettiford', 'Bothbie', 3, 4);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Karlie', 'Godfree', 'Jobb', 'Klesse', 7, 8);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (nextval('Ponente_seq'), 'Mahmud', 'Cy', 'Toffel', 'Alstead', 6, 9);

-- Inserción Ponencia
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Schmeler, Renner and Reilly');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Toy, Christiansen and Skiles');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'O''Kon-Jacobi');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Blanda, Frami and Bogisich');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Schumm, Cartwright and Corwin');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Goodwin-Breitenberg');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Lubowitz, Batz and Buckridge');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Yundt Group');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Buckridge Inc');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (nextval('Ponencia_seq'), 'Bradtke, Jones and Franecki');

-- Inserción Agenda Ponencia

insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (1, 10, 1, timestamp '2020-01-01 21:19:18', timestamp '2020-01-02 21:23:09', 4);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (2, 9, 2, timestamp '2020-02-10 05:30:43', timestamp '2020-02-11 19:46:54', 30);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (3, 8, 3, timestamp '2020-03-01 17:27:28', timestamp '2020-03-02 23:43:39', 38);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (4, 7, 4, timestamp '2020-03-01 08:11:21', timestamp '2020-03-03 22:23:40', 6);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (5, 6, 5, timestamp '2020-04-01 12:46:51', timestamp '2020-04-02 15:16:44', 23);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (9, 2, 9, timestamp '2020-07-01 20:30:08', timestamp '2020-07-02 09:47:37', 26);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (10, 1, 10, timestamp '2020-07-01 20:30:08', timestamp '2020-08-01 21:24:39', 7);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (8, 5, 1, timestamp '2020-07-01 20:30:08', timestamp '2020-08-01 21:24:39', 7);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (7, 8, 9, timestamp '2020-07-01 20:30:08', timestamp '2020-08-01 21:24:39', 7);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (6, 9, 7, timestamp '2020-07-01 20:30:08', timestamp '2020-08-01 21:24:39', 7);

-- Inserción País
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'México');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'Honduras');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'United States');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'Chile');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'Brazil');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'China');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'Argentina');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'France');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'New Zealand');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'Austalia');
insert into Pais (pais_id, nombre_pais) values (nextval('Pais_seq'), 'Spain');

-- Inserción Empresa
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Baumbach-Cummings', 1);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Pouros Inc', 4);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Mayert and Sons', 5);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Reinger, Harber and Ryan', 8);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Cassin Inc', 8);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Predovic, Murazik and McKenzie', 2);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Koch, Hoeger and Ratke', 2);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Kunze-Beier', 8);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Rau-Schumm', 8);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (nextval('Empresa_seq'), 'Dicki-Wilderman', 8);

-- Inserción Financiamiento
<<<<<<< HEAD
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (1, 10, 912342.46);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (2, 9, 806416.95);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (3, 8, 2295975.41);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (4, 7, 113214.63);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (5, 6, 9787032.23);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (6, 5, 6137021.89);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (7, 4, 426095.42);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (8, 3, 14892.1);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (9, 2, 47046.5);
insert into Financiamiento (empresa_id, congreso_id, monto_financiamiento) values (10, 1, 650211.35);
=======
insert into Financiamiento (empresa_id, congreso_id, monto) values (1, 10, 912342.46);
insert into Financiamiento (empresa_id, congreso_id, monto) values (2, 9, 806416.95);
insert into Financiamiento (empresa_id, congreso_id, monto) values (3, 8, 2295975.41);
insert into Financiamiento (empresa_id, congreso_id, monto) values (4, 7, 113214.63);
insert into Financiamiento (empresa_id, congreso_id, monto) values (5, 6, 9787032.23);
insert into Financiamiento (empresa_id, congreso_id, monto) values (6, 5, 6137021.89);
insert into Financiamiento (empresa_id, congreso_id, monto) values (7, 4, 426095.42);
insert into Financiamiento (empresa_id, congreso_id, monto) values (8, 3, 14892.1);
insert into Financiamiento (empresa_id, congreso_id, monto) values (9, 2, 47046.5);
insert into Financiamiento (empresa_id, congreso_id, monto) values (10, 1, 650211.35);
>>>>>>> 0e9b91117b90896c6b1881aec9ab39f9b768be4a
