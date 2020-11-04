--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Triggers

-- primero

CREATE OR REPLACE FUNCTION valida_fecha_hora_inicio_agenda() RETURNS TRIGGER AS $$
DECLARE
    hora_inicio_correcta numeric(1, 0);
BEGIN
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE' ) THEN
        select count(*) into hora_inicio_correcta
        from Congreso 
        where congreso_id = new.congreso_id
        and new.hora_inicio > fecha_inicio;
        if hora_inicio_correcta = 0 then 
            RETURN NEW;
        end if;
        RETURN NULL;
    
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql;

create trigger trg_valida_fecha_hora_inicio_agenda
before insert or update of hora_inicio
on AgendaPonencia
for each row
EXECUTE PROCEDURE valida_fecha_hora_inicio_agenda();

-- segundo 

CREATE OR REPLACE FUNCTION valida_fecha_hora_fin_agenda() RETURNS TRIGGER AS $$
DECLARE
    hora_fin_correcta numeric(1, 0);
BEGIN
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE' ) THEN
        select count(*) into hora_fin_correcta
        from Congreso 
        where congreso_id = new.congreso_id
        and new.hora_fin < fecha_terminacion;
        if hora_fin_correcta = 0 then 
            RETURN NEW;
        end if;
        RETURN NULL;
    
    ELSEIF (TG_OP = 'DELETE') THEN
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql;

create trigger trg_valida_fecha_hora_fin_agenda
before insert or update of hora_fin
on AgendaPonencia
for each row
EXECUTE PROCEDURE valida_fecha_hora_fin_agenda();