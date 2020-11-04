--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Script para la inserción de datos

-- Inserción Colonia

insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (31, 'LOMAS DE CHAPULTEPEC', '142672');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (85, 'VALENTIN GOMEZ FARIAS', '890');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (85, 'EL CARMEN', '5307');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (90, 'SAN JUAN TEPENAHUAC (PBLO)', '46900000');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (60, 'EX EJIDOS DE LA MAGDALENA MIXIHUCA', '43200');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (13, 'TAXQUEA', '69106');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (70, 'LORETO', '8901');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (51, 'GAMA GAVILAN (U HAB)', '7810');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (24, 'SAN MIGUEL TEOTONGO I', '9213');
insert into Colonia (colonia_id, nombre_colonia, codigo_postal) values (87, 'LOMAS QUEBRADAS', '6052');

-- Inserción Domicilio

insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (5, 'New Castle', '5906', null, 31);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (17, 'Bunting', '78951', '55', 85);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (91, 'Bultman', '3', '68899', 90);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (10, 'Roth', '5', '404', 60;
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (89, 'Farmco', '67335', null, 13);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (73, 'Hollow Ridge', '34', null, 70);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (37, 'Blaine', '21', '4914', 51);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (86, 'Mayer', '70', null, 24);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (17, 'Maryland', '64247', '2', 87);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (26, 'Pearson', '52', null, 24);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (919, 'Jackson', '37143', null, 13);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (855, 'Westport', '3', '595', 24);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (408, 'Ilene', '90522', null, 87);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (858, 'Dryden', '6', null, 31);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (853, 'Rusk', '99091', null, 13);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (78, 'Dennis', '7957', '2300', 87);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (393, 'Ilene', '444', '3907', 24);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (645, 'Holy Cross', '2303', null, 60);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (330, 'Autumn Leaf', '72', '09', 90);
insert into Domicilio (domicilio_id, calle, numero_exterior, numero_interior, colonia_id) values (486, 'Welch', '440', '3', 31);

-- Inserción Lugar

insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (57, 'Batz and Sons', 5);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (17, 'Romaguera and Sons', 17);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (91, 'Halvorson, Bailey and Ebert', 91);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (10, 'Bergstrom-Nikolaus', 10);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (89, 'VonRueden Inc', 89);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (73, 'Mohr, Kiehn and Denesik', 73);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (37, 'Fisher Group', 86);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (86, 'Boyle, Raynor and Hilll', 37);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (17, 'Green LLC', 17);
insert into  Lugar (lugar_id, nombre_lugar, domicilio_id) values (26, 'Rice-Brown', 26);

-- Inserción Congreso

insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (71, 'Finance', '2019-12-29 15:29:34', '2020-02-27 14:25:38', 57);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (26, 'Health Care', '2020-06-30 03:22:43', '2020-07-12 22:34:47', 17);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (12, 'Technology', '2020-10-18 01:26:37', '2020-10-24 19:21:35', 91);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (84, 'Technology', '2019-12-30 19:38:27', '2019-12-31 14:46:22', 10);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (71, 'Cars and Bikes', '2020-05-01 22:05:13', '2020-05-02 16:30:48', 73);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (64, 'Technology', '2019-12-03 15:38:53', '2020-03-10 15:35:35', 89);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (67, 'Health Care', '2020-06-02 23:09:47', '2020-07-29 09:46:18', 37);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (18, 'Health Care', '2020-05-22 18:05:34', '2020-06-29 13:21:39', 86);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (20, 'Capital Goods', '2020-05-06 14:08:43', '2020-05-10 13:45:40', 17);
insert into Congreso (congreso_id, nombre_congreso, fecha_inicio, fecha_terminacion, lugar_id) values (45, 'Public Utilities', '2020-03-11 10:57:32', '2020-03-21 12:47:58', 26);

-- Inserción Institución

insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (1, 'Wiza-Thompson', 5);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (22, 'Littel-Beahan', 17);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (42, 'Herman, Schmitt and Roberts', 91);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (6, 'Koepp Inc', 89);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (63, 'Becker, Satterfield and Thiel', 10);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (67, 'Balistreri LLC', 73);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (39, 'Wuckert, Macejkovic and Cormier', 37);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (3, 'Grady, Robel and Price', 37);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (16, 'King-Howe', 89);
insert into Institucion (institucion_id, nombre_institucion, domicilio_id) values (4, 'Romaguera-Greenholt', 17);

-- Inserción Ponente

insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (79, 'Lelia', null, 'Belding', 'Trinke', 1, 486);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (49, 'Arlana', 'Dew', 'Walmsley', 'Vorley', 22, 330);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (86, 'Nappy', null, 'Creus', 'Gludor', 42, 645);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (20, 'Giffy', 'Haven', 'Claw', 'Allatt', 6, 393);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (14, 'Judi', null, 'Pieters', 'Casterou', 4, 78);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (84, 'Truda', null, 'Brilleman', 'Mapston', 16, 853);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (62, 'Sibelle', 'Raddy', 'Mation', 'Letts', 3, 858);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (28, 'Tricia', null, 'Pettiford', 'Bothbie', 39, 408);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (32, 'Karlie', 'Godfree', 'Jobb', 'Klesse', 67, 855);
insert into Ponente (ponente_id, primer_nombre_ponente, segundo_nombre_ponente, primer_apellido_ponente, segundo_apellido_ponente, institucion_id, domicilio_id) values (17, 'Mahmud', 'Cy', 'Toffel', 'Alstead', 63, 919);

-- Inserción Ponencia

insert into  Ponencia (ponencia_id, nombre_ponencia) values (325, 'Schmeler, Renner and Reilly');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (319, 'Toy, Christiansen and Skiles');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (352, 'O''Kon-Jacobi');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (592, 'Blanda, Frami and Bogisich');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (103, 'Schumm, Cartwright and Corwin');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (992, 'Goodwin-Breitenberg');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (335, 'Lubowitz, Batz and Buckridge');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (781, 'Yundt Group');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (276, 'Buckridge Inc');
insert into  Ponencia (ponencia_id, nombre_ponencia) values (595, 'Bradtke, Jones and Franecki');

-- Inserción Agenda Ponencia

insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (71, 79, 60, '21:19:18', '21:23:09', 42);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (26, 49, 58, '05:30:43', '19:46:54', 30);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (12, 86, 1, '17:27:28', '23:43:39', 38);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (84, 20, 80, '08:11:21', '22:23:40', 6);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (71, 14, 94, '19:46:51', '15:16:44', 23);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (64, 17, 79, '06:39:47', '11:32:53', 37);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (67, 62, 92, '19:12:47', '22:59:55', 16);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (18, 28, 85, '00:45:40', '17:50:38', 6);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (20, 32, 40, '20:30:08', '09:47:37', 26);
insert into AgendaPonencia (congreso_id, ponente_id, ponencia_id, hora_inicio, hora_fin, num_cuartillas) values (45, 17, 48, '00:21:30', '17:24:39', 7);

-- Inserción País

insert into Pais (pais_id, nombre_pais) values (168, 'México');
insert into Pais (pais_id, nombre_pais) values (21, 'Honduras');
insert into Pais (pais_id, nombre_pais) values (64, 'United States');
insert into Pais (pais_id, nombre_pais) values (5, 'Chile');
insert into Pais (pais_id, nombre_pais) values (108, 'Brazil');
insert into Pais (pais_id, nombre_pais) values (80, 'China');
insert into Pais (pais_id, nombre_pais) values (182, 'Argentina');
insert into Pais (pais_id, nombre_pais) values (22, 'France');
insert into Pais (pais_id, nombre_pais) values (7, 'New Zealand');
insert into Pais (pais_id, nombre_pais) values (2, 'Austalia');
insert into Pais (pais_id, nombre_pais) values (44, 'Spain');

-- Inserción Empresa

insert into Empresa (empresa_id, nombre_empresa, pais_id) values (40, 'Baumbach-Cummings', 21);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (43, 'Pouros Inc', 64);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (21, 'Mayert and Sons', 5);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (32, 'Reinger, Harber and Ryan', 108);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (67, 'Cassin Inc', 80);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (47, 'Predovic, Murazik and McKenzie', 182);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (89, 'Koch, Hoeger and Ratke', 22);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (1, 'Kunze-Beier', 168);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (29, 'Rau-Schumm', 168);
insert into Empresa (empresa_id, nombre_empresa, pais_id) values (98, 'Dicki-Wilderman', 168);

-- Inserción Financiamiento

insert into Financiamiento (empresa_id, congreso_id, monto) values (40, 71, 912318242.46);
insert into Financiamiento (empresa_id, congreso_id, monto) values (43, 26, 80647116.95);
insert into Financiamiento (empresa_id, congreso_id, monto) values (21, 12, 229552975.41);
insert into Financiamiento (empresa_id, congreso_id, monto) values (32, 84, 113215714.63);
insert into Financiamiento (empresa_id, congreso_id, monto) values (67, 71, 978734032.23);
insert into Financiamiento (empresa_id, congreso_id, monto) values (47, 64, 613729021.89);
insert into Financiamiento (empresa_id, congreso_id, monto) values (89, 67, 426967095.42);
insert into Financiamiento (empresa_id, congreso_id, monto) values (1, 18, 149852892.1);
insert into Financiamiento (empresa_id, congreso_id, monto) values (29, 20, 47837046.5);
insert into Financiamiento (empresa_id, congreso_id, monto) values (89, 45, 650262211.35);


