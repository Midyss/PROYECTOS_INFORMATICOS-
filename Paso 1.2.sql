-- Tabla proyecto
CREATE TABLE proyecto (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Aliado VARCHAR(100),
    Descripcion TEXT,
    Presupuesto DECIMAL(10,2),
    HorasEstimadas INT,
    FechaInicio DATE,
    FechaFin DATE,
    DocenteJefe INT
);

-- Tabla fase
CREATE TABLE fase (
    NumeroFase INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    FechaComienzo DATE,
    FechaFin DATE,
    Estado ENUM('Planificada', 'En Progreso', 'Completada', 'Cancelada'),
    ProyectoCodigo INT,
    FOREIGN KEY (ProyectoCodigo) REFERENCES proyecto(Codigo)
);

-- Tabla gasto
CREATE TABLE gasto (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Descripcion TEXT NOT NULL,
    Fecha DATE,
    Importe DECIMAL(10,2) NOT NULL,
    TipoGasto VARCHAR(100),
    ProyectoCodigo INT,
    FOREIGN KEY (ProyectoCodigo) REFERENCES proyecto(Codigo)
);

-- Tabla docente
CREATE TABLE docente (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Documento VARCHAR(20) UNIQUE NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255),
    Titulo VARCHAR(100),
    AnosExperiencia INT
);

-- Tabla informatico
CREATE TABLE informatico (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Tipo ENUM('Analista', 'Programador', 'Diseñador', 'Tester', 'Administrador'),
    Coste DECIMAL(10,2),
    Lenguajes VARCHAR(255)
);

-- Tabla recurso
CREATE TABLE recurso (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Tipo ENUM('Hardware', 'Software', 'Humano', 'Material'),
    PeriodoUtilizado VARCHAR(100),
    FaseNumero INT,
    FOREIGN KEY (FaseNumero) REFERENCES fase(NumeroFase)
);

-- Tabla producto
CREATE TABLE producto (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Finalizado TINYINT(1) DEFAULT 0,
    FaseNumero INT,
    Responsable INT,
    FOREIGN KEY (FaseNumero) REFERENCES fase(NumeroFase),
    FOREIGN KEY (Responsable) REFERENCES informatico(Codigo)
);