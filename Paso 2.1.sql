-- Crear usuario con contraseña segura
CREATE USER 'usuario_evidencia'@'localhost' IDENTIFIED BY 'Evidencia2024!';

-- Asignar base de datos por defecto
ALTER USER 'usuario_evidencia'@'localhost' DEFAULT DATABASE proyectos_informaticos;

-- Conceder permiso SELECT en todas las tablas
GRANT SELECT ON proyectos_informaticos.* TO 'usuario_evidencia'@'localhost';

-- Denegar permisos INSERT, UPDATE, DELETE explícitamente
REVOKE INSERT, UPDATE, DELETE ON proyectos_informaticos.* FROM 'usuario_evidencia'@'localhost';

-- Aplicar cambios
FLUSH PRIVILEGES;