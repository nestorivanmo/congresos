--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Procedimiento almacenado para el borrado de registros

DROP FUNCTION IF EXISTS sp_borrado(integer);

CREATE OR REPLACE FUNCTION sp_borrado(IN ponente_id_borrar int) RETURNS integer
AS $$
	DECLARE
		dom_id INTEGER := (SELECT domicilio_id FROM PONENTE where ponente_id = ponente_id_borrar);
	BEGIN
		IF dom_id NOT IN (SELECT domicilio_id FROM PONENTE WHERE ponente_id != ponente_id_borrar) THEN
			DELETE FROM Domicilio where domicilio_id = dom_id;
		END IF;
		DELETE FROM Ponente WHERE ponente_id = ponente_id_borrar;
        RETURN 1;
	END;
$$ LANGUAGE plpgsql;
