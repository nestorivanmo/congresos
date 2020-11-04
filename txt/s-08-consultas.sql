--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     26/10/2020
--@Descripción:           Algunos ejemplos de consultas hacía la base de datos

-- Hacer funcion que permita trabajar con domicilio
drop function if exists texto_domicilio(numeric(10, 0));

create function texto_domicilio(domicilio_deseado_id numeric(10, 0))
returns varchar
language plpgsql
as
$$
declare
    texto_domicilio varchar;
begin
    SELECT 'calle '||calle||' #'||numero_exterior||' col: '||
        col.nombre_colonia as nombre
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

SELECT texto_domicilio(p.domicilio_id) as domicilio_particular,
l.nombre_lugar as Lugar
FROM ponente p
INNER JOIN AgendaPonencia ap
USING(ponente_id)
INNER JOIN Congreso con
USING(congreso_id)
RiGHT JOIN lugar l
USING(lugar_id)
WHERE p.primer_nombre_ponente = 'Lelia' and p.primer_apellido_ponente = 'Belding';


--- Consulta 2
--- Dado el nombre de una ponencia, obtener el nombre, lugar, fecha de inicio y 
--- fecha de terminación de cada uno de los congresos en que se presenta dicha 
--- ponencia, así como el horario en que se presenta esta ponencia en cada uno 
--- de estos congresos.
select P.nombre_ponencia, C.nombre_congreso, L.nombre_lugar, C.fecha_inicio, C.fecha_terminacion, 
	to_char(AP.hora_inicio, 'HH24:MI:SS')||' hrs' as hora_inicial, to_char(AP.hora_fin, 'HH24:MI:SS')||' hrs' as hora_final
from Congreso C
join Lugar L
on L.lugar_id = C.lugar_id
join AgendaPonencia AP
on AP.congreso_id = C.congreso_id
join Ponencia P 
on P.ponencia_id = AP.ponencia_id
where P.nombre_ponencia = 'Buckridge Inc';

--

select P.nombre_ponencia, C.nombre_congreso, L.nombre_lugar, C.fecha_inicio, C.fecha_terminacion, 
extract(hour from AP.hora_inicio) as hora_inicial, extract(hour from AP.hora_fin) as hora_final
from Congreso C
join Lugar L
on L.lugar_id = C.lugar_id
join AgendaPonencia AP
on AP.congreso_id = C.congreso_id
join Ponencia P 
on P.ponencia_id = AP.ponencia_id
where P.nombre_ponencia = 'Buckridge Inc';

--- Consulta 3
--- Dado el nombre de un congreso, obtener el nombre el país de origen de cada 
--- una de las empresas que están financiando este congreso, así como el monto 
--- que aporta cada una de estas empresas para financiar este congreso.

select P.nombre_pais, E.nombre_empresa, C.nombre_congreso, F.monto_financiamiento
from Congreso C
join Financiamiento F
on C.congreso_id = F.congreso_id
join Empresa E
on E.empresa_id = F.empresa_id
join Pais P
on P.pais_id = E.pais_id
where C.nombre_congreso = 'Finance';

--- Consulta 4
--- Dado el nombre de un congreso, obtener el nombre y número de cuartillas de 
--- cada una de las ponencias presentadas en este congreso.
SELECT p.nombre_ponencia, ap.num_cuartillas
FROM Ponencia p
JOIN AgendaPonencia ap
ON p.ponencia_id = ap.ponencia_id
JOIN Congreso co
ON co.congreso_id = ap.congreso_id
WHERE co.nombre_congreso = 'Technology';


--- Consulta 5
--- Dado el nombre de un congreso, obtener el nombre y domicilio de las 
--- instituciones a las que pertenecen los ponentes de este congreso
SELECT i.nombre_institucion, texto_domicilio(i.domicilio_id) as 
	domicilio_institucion
FROM Institucion i
inner JOIN Ponente p
ON i.institucion_id = p.institucion_id
WHERE p.ponente_id in (
  SELECT p.ponente_id 
  FROM Ponente p
  JOIN AgendaPonencia ap
  ON p.ponente_id = ap.ponente_id
  JOIN Congreso co
  ON co.congreso_id = ap.congreso_id
  WHERE co.nombre_congreso = 'Health Care'
);