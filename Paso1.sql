-- Primero eliminar la base de datos existente (opcional)
DROP DATABASE IF EXISTS proyectos_informáticos;

-- Crear nuevamente la base de datos
CREATE DATABASE proyectos_informáticos;

-- Usar la base de datos
USE proyectos_informáticos;

-- Ejecutar el script de backup
SOURCE C:\Users\Mile\Documents\backup_proyectos_informaticos.sql;