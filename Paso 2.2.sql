-- Crear usuario con contraseña segura
CREATE USER 'usuario_prueba'@'localhost' IDENTIFIED BY 'Prueba2024!';

-- Conceder permisos SELECT, INSERT, UPDATE
GRANT SELECT, INSERT, UPDATE ON proyectos_informáticos.* TO 'usuario_prueba'@'localhost';

-- Denegar específicamente el permiso DELETE
REVOKE DELETE ON proyectos_informáticos.* FROM 'usuario_prueba'@'localhost';

-- Aplicar cambios
FLUSH PRIVILEGES;