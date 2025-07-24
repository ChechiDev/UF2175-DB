SET search_path TO educonnect; -- Lo uso para no tener que poner el 'sch' todo el rato.
-- QUERIES:

-- QUERY-1
SELECT 
	CONCAT(p.nombre, ' ', p.apellido) AS profesor,
	CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
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

-- QUERY-2:
SELECT
	CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
	COUNT(id_estudiante) AS total_reservas

FROM reservas as r

INNER JOIN estudiantes e
ON r.fk_estudiante = e.id_estudiante

GROUP BY estudiante
;

-- QUERY-3:
SELECT 
	CONCAT(p.nombre, ' ', p.apellido) AS profesor,
	a.nombre

FROM profesores p

INNER JOIN reservas r
ON p.id_profesor = r.fk_profesor

INNER JOIN asignaturas a
ON r.fk_asignatura = a.id_asignatura

GROUP BY
	profesor,
	a.nombre

ORDER BY profesor ASC
;

-- QUERY-4:
SELECT
	CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
	a.nivel AS nivel_asignatura

FROM reservas r

INNER JOIN estudiantes e
ON r.fk_estudiante = e.id_estudiante

INNER JOIN asignaturas a
ON r.fk_asignatura = a.id_asignatura

WHERE a.nivel = 'Avanzado'

GROUP BY 
	estudiante,
	nivel_asignatura
;