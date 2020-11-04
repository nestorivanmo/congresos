--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Procedimiento almacenado para la actualización

--Nota: Se usa, en lugar de procedimiento almacenado, una función pues la versión
-- del servidor no soporta procedimientos. 


create or replace function actualiza_horario (
    congreso_id numeric,
    ponente_id numeric,
    ponencia_id numeric,
    horario_inicio date,
    horario_fin date
)
returns numeric
language plpgsql 
as 
$$
declare
--todo
begin
    update AgendaPonencia
    set (hora_inicio, hora_fin) = (horario_inicio, horario_fin)
    where congreso_id = congreso_id and ponente_id = ponente_id
        and ponencia_id = ponencia_id;
    commit;
    return congreso_id;
end;
$$

