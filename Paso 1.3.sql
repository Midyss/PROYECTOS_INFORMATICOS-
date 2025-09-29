-- Insertar datos en tabla docente
INSERT INTO docente (Documento, Nombre, Direccion, Titulo, AnosExperiencia) VALUES
('12345678A', 'Dr. Carlos Mendoza', 'Av. Universidad 123', 'Doctor en Informática', 15),
('87654321B', 'Dra. Ana López', 'Calle Ciencias 456', 'Máster en Ingeniería de Software', 10),
('11223344C', 'Prof. Javier Ruiz', 'Plaza Tecnología 789', 'Ingeniero de Sistemas', 8);

-- Insertar datos en tabla proyecto
INSERT INTO proyecto (Nombre, Aliado, Descripcion, Presupuesto, HorasEstimadas, FechaInicio, FechaFin, DocenteJefe) VALUES
('Sistema Gestión Académica', 'Universidad Nacional', 'Desarrollo de plataforma para gestión estudiantil', 50000.00, 1200, '2024-01-15', '2024-12-15', 1),
('App Móvil Biblioteca', 'Municipalidad Local', 'Aplicación para préstamo de libros digitales', 25000.00, 800, '2024-03-01', '2024-09-30', 2),
('Portal Investigación Científica', 'Ministerio de Educación', 'Plataforma web para publicaciones académicas', 75000.00, 1500, '2024-02-01', '2025-01-31', 3);

-- Insertar datos en tabla fase
INSERT INTO fase (Nombre, FechaComienzo, FechaFin, Estado, ProyectoCodigo) VALUES
('Análisis Requisitos', '2024-01-15', '2024-02-28', 'Completada', 1),
('Diseño Sistema', '2024-03-01', '2024-04-15', 'En Progreso', 1),
('Implementación', '2024-04-16', '2024-08-31', 'Planificada', 1),
('Planificación', '2024-03-01', '2024-03-31', 'Completada', 2),
('Desarrollo', '2024-04-01', '2024-07-31', 'En Progreso', 2);

-- Insertar datos en tabla informatico
INSERT INTO informatico (Nombre, Tipo, Coste, Lenguajes) VALUES
('María González', 'Analista', 45.50, 'Python, SQL, UML'),
('Pedro Sánchez', 'Programador', 40.00, 'Java, JavaScript, PHP'),
('Laura Martínez', 'Diseñador', 38.00, 'Figma, Adobe XD, CSS'),
('Roberto Díaz', 'Tester', 35.50, 'Selenium, JUnit, Postman'),
('Sofía Herrera', 'Administrador', 42.00, 'MySQL, Linux, Docker');

-- Insertar datos en tabla gasto
INSERT INTO gasto (Descripcion, Fecha, Importe, TipoGasto, ProyectoCodigo) VALUES
('Licencias software', '2024-02-10', 5000.00, 'Licencias', 1),
('Equipos computo', '2024-01-20', 15000.00, 'Hardware', 1),
('Capacitación equipo', '2024-03-05', 3000.00, 'Formación', 2);

-- Insertar datos en tabla recurso
INSERT INTO recurso (Nombre, Descripcion, Tipo, PeriodoUtilizado, FaseNumero) VALUES
('Servidor Web', 'Servidor dedicado para desarrollo', 'Hardware', '6 meses', 1),
('Licencia IDE', 'Licencia IntelliJ IDEA', 'Software', '12 meses', 2),
('Analista Senior', 'Recurso humano especializado', 'Humano', '3 meses', 1);

-- Insertar datos en tabla producto
INSERT INTO producto (Nombre, Descripcion, Finalizado, FaseNumero, Responsable) VALUES
('Documento Requisitos', 'Especificación detallada de requisitos', 1, 1, 1),
('Diseño Arquitectura', 'Diagramas de arquitectura del sistema', 0, 2, 3),
('Prototipo Interfaz', 'Prototipo funcional de la interfaz', 0, 2, 3);