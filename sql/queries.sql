SET search_path TO educonnect; -- Lo uso para no tener que poner el 'sch' todo el rato.
-- QUERIES:

-- QUERY 1:
SELECT 
	p.nombre AS profesor,
	e.nombre AS estudiante,
	a.nombre AS asignatura,
	r.fecha,
	r.hora
	
FROM profesores p

INNER JOIN reservas r
ON p.id_profesor = r.fk_profesor

INNER JOIN asignaturas a
ON a.id_asignatura = r.fk_asignatura

INNER JOIN estudiantes e
ON e.id_estudiante = r.fk_estudiante
;

