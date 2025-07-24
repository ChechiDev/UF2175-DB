-- INSERT DATA:

INSERT INTO educonnect.profesores VALUES
	('PRF-0001', 'Laura', 'Gómez', 'Matemáticas', 'laura.gomez@educonnect.com'),
	('PRF-0002', 'Carlos', 'Martínez', 'Física', 'carlos.martinez@educonnect.com'),
	('PRF-0003', 'Elena', 'Sánchez', 'Programación', 'elena.sanchez@educonnect.com'),
	('PRF-0004', 'Marcos', 'Ruiz', 'Inglés', 'marcos.ruiz@educonnect.com'),
	('PRF-0005', 'Ana', 'López', 'Historia', 'ana.lopez@educonnect.com')
;

INSERT INTO educonnect.estudiantes VALUES
	('EST-0001', 'Diego', 'Fernández', 17, 'diego.fernandez@alumnos.com'),
	('EST-0002', 'Lucía', 'Sanz', 16, 'lucia.sanz@alumnos.com'),
	('EST-0003', 'Mario', 'Romero', 18, 'mario.romero@alumnos.com'),
	('EST-0004', 'Irene', 'Cabrera', 19, 'irene.cabrera@alumnos.com'),
	('EST-0005', 'Sara', 'Molina', 18, 'sara.molina@alumnos.com'),
	('EST-0006', 'Álex', 'Jiménez', 16, 'alex.jimenez@alumnos.com')
;

INSERT INTO educonnect.asignaturas VALUES
	('ASG-0001', 'Matemáticas I', 'Básico'),
	('ASG-0002', 'Física General', 'Intermedio'),
	('ASG-0003', 'Programación Web', 'Avanzado'),
	('ASG-0004', 'Historia Universal', 'Intermedio')
;

INSERT INTO educonnect.reservas VALUES
	('RES-0001', 'PRF-0001', 'EST-0001', 'ASG-0001', '2025-07-01', '10:00', 60),
	('RES-0002', 'PRF-0002', 'EST-0002', 'ASG-0002', '2025-07-02', '11:00', 90),
	('RES-0003', 'PRF-0003', 'EST-0003', 'ASG-0003', '2025-07-03', '12:00', 75),
	('RES-0004', 'PRF-0004', 'EST-0004', 'ASG-0004', '2025-07-04', '09:30', 60),
	('RES-0005', 'PRF-0005', 'EST-0005', 'ASG-0001', '2025-07-05', '10:00', 45),
	('RES-0006', 'PRF-0001', 'EST-0006', 'ASG-0002', '2025-07-06', '11:00', 60),
	('RES-0007', 'PRF-0002', 'EST-0003', 'ASG-0003', '2025-07-07', '12:30', 60),
	('RES-0008', 'PRF-0003', 'EST-0001', 'ASG-0004', '2025-07-08', '13:00', 60),
	('RES-0009', 'PRF-0004', 'EST-0002', 'ASG-0001', '2025-07-09', '14:00', 90),
	('RES-0010', 'PRF-0005', 'EST-0004', 'ASG-0002', '2025-07-10', '15:00', 60)
;

SELECT * FROM educonnect.profesores;
SELECT * FROM educonnect.estudiantes;
SELECT * FROM educonnect.asignaturas;
SELECT * FROM educonnect.reservas;