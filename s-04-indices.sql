--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Creación de índices

-- individuales

CREATE INDEX PONENCIA_nombre_ponencia_ix
ON PONENCIA(nombre_ponencia);

CREATE INDEX CONGRESO_nombre_congreso_ix
ON congreso(nombre_congreso);

CREATE INDEX PONENTE_nombre_ponente_ix
ON ponente(primer_nombre_ponente);

-- COMPUESTOS

CREATE INDEX PONENTE_nombres_ix
ON ponente(primer_nombre_ponente, primer_apellido_ponente, 
           segundo_apellido_ponente, segundo_nombre_ponente);

CREATE INDEX DOMICILIO_domicilio_colonia_ix
ON domicilio(domicilio_id, colonia_id);

-- Basado en Funcion

CREATE INDEX CONGRESO_fecha_ano_ix
ON CONGRESO(extract(year FROM fecha_inicio));


