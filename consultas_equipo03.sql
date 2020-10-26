--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     26/10/2020
--@Descripción:           Lista de consultas del proyecto CONGRESOS
--@Materia:               Bases de Datos Estructuradas

-- Hacer funcion que permita trabajar con domicilio
create function texto_domicilio(domicilio_deseado_id int, nombre VARCHAR)
returns varchar
language plpgsql
as
$$
declare
    texto_domicilio varchar;
begin
    SELECT "calle "||to_char(calle)||" #"||to_char(numero_exterior)||" col: "||col.nombre as nombre
    INTO texto_domicilio
    FROM domicilio 
    INNER JOIN colonia col
    USING(colonia_id)
    WHERE domicilio_id = domicilio_deseado_id;
    
    return texto_domicilio;
end;
$$;

--- Consulta 1
--- Dado el nombre de un ponente, obtener su domicilio particular, así como el 
--- nombre y lugar de cada uno de los congresos en que se presenta.

--agregar ciudad y domiclio
SELECT texto_domicilio(domicilio_id, "Domicilio Particular"),
l.nombre as Lugar
FROM ponente p
INNER JOIN domicilio d
USING(domicilio_id)
INNER JOIN colonia col
USING(colonia_id)
INNER JOIN cuartilla cuar
USING(ponente_id)
INNER JOIN Congreso con
USING(congreso_id)
INNER JOIN lugar l
USING(lugar_id)
WHERE p.nombre = 'FULANO';

--- Consulta 2
--- Dado el nombre de una ponencia, obtener el nombre lugar, fecha de inicio y 
--- fecha de terminación de cada uno de los congresos en que se presenta dicha 
--- ponencia, así como el horario en que se presenta esta ponencia en cada uno 
--- de estos congresos.

SELECT
  fecha_inicio,
	fecha_terminacion,
	Lugar.nombre
FROM
	Congreso
WHERE
	congreso_id IN (
		SELECT
			congreso_id
		FROM
			Cuartilla
		WHERE
			ponencia_id IN (
				SELECT
					ponencia_id
				FROM
					Ponencia
				WHERE
					nombre = 'Getting started with PowerDesigner'
			)
	)
	INNER JOIN Lugar
WHERE
	Congreso.lugar_id = Lugar.lugar_id;

--- Consulta 3
--- Dado el nombre de un congreso, obtener el nombre el país de origen de cada 
--- una de las empresas que están financiando este congreso, así como el monto 
--- que aporta cada una de estas empresas para financiar este congreso.

SELECT
   	empresa_id,
	nombre,
	Pais.nombre
FROM
	Empresa
WHERE
	empresa_id IN (
		SELECT
			empresa_id
		FROM
			EmpresaCongreso
		WHERE
			congreso_id IN(
				SELECT
					congreso_id
				FROM
					Congreso
				WHERE
					nombre = 'Congreso de mi software favorito'
			)
	)
	INNER JOIN Pais
WHERE
	Empresa.pais_id = Pais.pais_id;

--- Consulta 4
--- Dado el nombre de un congreso, obtener el nombre y número de cuartillas de 
--- cada una de las ponencias presentadas en este congreso.
select p.nombre, p.num_cuartillas
from ponencia p
join cuartilla cu
on p.ponencia_id = cu.ponencia_id
join congreso co
on co.congreso_id = cu.congreso_id
where co.nombre = '<ALGUN-NOMBRE-CONGRESO<'


--- Consulta 5
--- Dado el nombre de un congreso, obtener el nombre y domicilio de las 
--- instituciones a las que pertenecen los ponentes de este congreso
select i.nombre, d.calle, d.numero_exterior, d.numero_interior, col.nombre, 
  col.codigo_postal
from institucion i
inner join domicilio d
on d.domicilio_id = i.domicilio_id
inner join colonia col
on col.colonia_id = d.domicilio_id
inner join ponente p
on i.institucion_id = p.institucion_id
where p.ponente_id in (
  select p.ponente_id 
  from ponente p
  join cuartilla cu 
  on p.ponente_id = cu.ponente_id
  join congreso co
  on co.congreso_id = cu.congreso_id
  where co.nombre = '<ALGUN-NOMBRE-CONGRESO>'
)
  