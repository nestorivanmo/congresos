--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Procedimiento almacenado para la inserción de registros

DROP FUNCTION IF EXISTS sp_inserta(integer, character varying, date, date, integer);

CREATE OR REPLACE FUNCTION sp_inserta(IN congreso_id int, IN nombre_congreso varchar, IN fecha_inicio_congreso DATE, IN fecha_fin_congreso DATE, IN lugar_id_ins int) RETURNS integer
AS $$
	BEGIN
		IF lugar_id_ins NOT IN (select lugar_id FROM Lugar) THEN
			RAISE EXCEPTION 'No existe registro con ese lugar_id. Mensaje de error %.', now();
		END IF; 
		INSERT INTO Congreso VALUES (congreso_id, nombre_congreso, fecha_inicio_congreso, fecha_fin_congreso, lugar_id_ins);
		RETURN 1;
	END;
$$ LANGUAGE plpgsql;

select sp_inserta(101, 'Perspectivas elecciones en EE.UU.', '2020-11-15', '2020-11-17', 86);