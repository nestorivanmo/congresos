--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Procedimiento almacenado para la inserción de registros

DROP FUNCTION IF EXISTS sp_inserta(character varying,date,date,integer);

CREATE OR REPLACE FUNCTION sp_inserta(IN nombre_congreso varchar, IN fecha_inicio_congreso DATE, IN fecha_fin_congreso DATE, IN lugar_id_ins int) RETURNS integer
AS $$
	BEGIN
		IF lugar_id_ins NOT IN (select lugar_id FROM Lugar) THEN
			RAISE EXCEPTION 'No existe registro con ese lugar_id. Mensaje de error %.', now();
		END IF; 
		INSERT INTO Congreso VALUES (nombre_congreso, fecha_inicio_congreso, fecha_fin_congreso, lugar_id_ins);
		RETURN 1;
	END;
$$ LANGUAGE plpgsql;
