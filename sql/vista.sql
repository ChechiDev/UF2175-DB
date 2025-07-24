SET search_path TO educonnect;

-- VISTAS

CREATE VIEW vista_resumen_reservas AS
SELECT 
	CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
	CONCAT(p.nombre, ' ', p.apellido) AS profesor,
	a.nombre AS asignatura,
	a.nivel,
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


SELECT * FROM vista_resumen_reservas;