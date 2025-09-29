-- Verificar que estamos en la base de datos correcta
USE proyectos_informáticos;

-- Crear datos adicionales POST-backup para demostrar la restauración
INSERT INTO proyecto (Nombre, Presupuesto, FechaInicio) 
VALUES ('Proyecto Post-Backup', 40000.00, '2024-05-01');

INSERT INTO gasto (Descripcion, Importe, ProyectoCodigo)
VALUES ('Gasto post-backup', 1000.00, 4);

-- Verificar datos insertados
SELECT * FROM proyecto;
SELECT * FROM gasto;