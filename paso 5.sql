
-- Script de verificación final
-- Conectar como root primero

-- 1. Verificar estructura de tablas
SHOW TABLES FROM proyectos_informáticos;

-- 2. Verificar privilegios de usuarios
SELECT user, host, authentication_string FROM mysql.user 
WHERE user LIKE 'usuario_%';

-- 3. Verificar datos después de restauración
SELECT 
    (SELECT COUNT(*) FROM proyecto) as total_proyectos,
    (SELECT COUNT(*) FROM docente) as total_docentes,
    (SELECT COUNT(*) FROM gasto) as total_gastos,
    (SELECT COUNT(*) FROM informatico) as total_informaticos;

-- 4. Probar consultas complejas para verificar integridad
SELECT 
    p.Nombre as Proyecto,
    p.Presupuesto,
    d.Nombre as Director,
    COUNT(f.NumeroFase) as Total_Fases
FROM proyecto p
LEFT JOIN docente d ON p.DocenteJefe = d.Codigo
LEFT JOIN fase f ON p.Codigo = f.ProyectoCodigo
GROUP BY p.Codigo;
