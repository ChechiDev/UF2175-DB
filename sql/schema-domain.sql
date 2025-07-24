CREATE SCHEMA educonnect AUTHORIZATION admin;

DROP SCHEMA public;

CREATE DOMAIN educonnect.id_profesor as VARCHAR(8) NOT NULL
	CHECK (VALUE ~ '^[PRF]{3}-{1}\d{4}$')

CREATE DOMAIN educonnect.id_estudiante as VARCHAR(8) NOT NULL
	CHECK (VALUE ~ '^[EST]{3}-{1}\d{4}$')

CREATE DOMAIN educonnect.id_reserva as VARCHAR(8) NOT NULL
	CHECK (VALUE ~ '^[RES]{3}-{1}\d{4}$')

CREATE DOMAIN educonnect.id_asignatura as VARCHAR(8) NOT NULL
	CHECK (VALUE ~ '^[ASG]{3}-{1}\d{4}$')