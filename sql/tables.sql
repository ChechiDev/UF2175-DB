-- TABLES:

CREATE TABLE educonnect.profesores (
	id_profesor EDUCONNECT.ID_PROFESOR,
	nombre VARCHAR(50) NOT NULL, 
	apellido VARCHAR(50) NOT NULL, 
	espcialidad VARCHAR(100) NOT NULL, 
	email VARCHAR(100) UNIQUE,
	
	PRIMARY KEY (id_profesor)
);

CREATE TABLE educonnect.estudiantes (
	id_estudiante EDUCONNECT.ID_ESTUDIANTE,
	nombre VARCHAR(50) NOT NULL, 
	apellido VARCHAR(50) NOT NULL,
	edad INT NOT NULL,
	email VARCHAR(100) UNIQUE,
	
	PRIMARY KEY (id_estudiante)
);

CREATE TABLE educonnect.asignaturas (
    id_asignatura EDUCONNECT.ID_ASIGNATURA,
    nombre VARCHAR(100) NOT NULL,
    nivel VARCHAR(30) NOT NULL,
	
    PRIMARY KEY (id_asignatura)
);

CREATE TABLE educonnect.reservas (
    id_reserva EDUCONNECT.ID_RESERVA,
    fk_profesor EDUCONNECT.ID_PROFESOR,
    fk_estudiante EDUCONNECT.ID_ESTUDIANTE,
    fk_asignatura EDUCONNECT.ID_ASIGNATURA,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    duracion_minutos INT,
	
    PRIMARY KEY (id_reserva),
    
	FOREIGN KEY (fk_profesor) REFERENCES educonnect.profesores(id_profesor)
        ON UPDATE CASCADE ON DELETE CASCADE,
    
	FOREIGN KEY (fk_estudiante) REFERENCES educonnect.estudiantes(id_estudiante)
        ON UPDATE CASCADE ON DELETE CASCADE,
    
	FOREIGN KEY (fk_asignatura) REFERENCES educonnect.asignaturas(id_asignatura)
        ON UPDATE CASCADE ON DELETE CASCADE
);