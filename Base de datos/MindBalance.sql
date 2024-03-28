CREATE SCHEMA MindBalance;

-- Tabla usuario
CREATE TABLE usuario (
    idUsuario INT NOT NULL PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contraseña VARCHAR(50) NOT NULL,
    empresa VARCHAR(50) NOT NULL,
    sector VARCHAR(50) NOT NULL,
    puntuación VARCHAR(50) NOT NULL,
    recompensas VARCHAR(50) NOT NULL,
    idEstado_animo INT NOT NULL,
    administrador BOOLEAN NOT NULL
);

-- Tabla estado_animo
CREATE TABLE estado_animo (
    idEstado_animo INT NOT NULL PRIMARY KEY,
    idUsuario INT NOT NULL,
    fecha_hora DATE NOT NULL,
    test INT NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

-- Tabla medico
CREATE TABLE medico (
    idMedico INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contraseña VARCHAR(50) NOT NULL
);

-- Tabla teleconsulta
CREATE TABLE teleconsulta (
    idTeleconsulta INT NOT NULL PRIMARY KEY,
    idUsuario INT NOT NULL,
    idMedico INT NOT NULL,
    fecha_hora DATE NOT NULL,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (idMedico) REFERENCES medico(idMedico)
);

-- Tabla roles
CREATE TABLE roles (
    idRol INT NOT NULL PRIMARY KEY,
    empleado VARCHAR(50),
    administrador VARCHAR(50),
    especialista VARCHAR(50)
);

-- Tabla empresa
CREATE TABLE empresa (
    idEmpresa INT NOT NULL PRIMARY KEY,
    nombre_empresa VARCHAR(50) NOT NULL,
    sector VARCHAR(50) NOT NULL,
    tamaño VARCHAR(50) NOT NULL
);

-- Tabla test
CREATE TABLE test (
    idTest INT NOT NULL PRIMARY KEY,
    idEstado_animo INT NOT NULL,
    fecha_hora DATE NOT NULL,
    título VARCHAR(50) NOT NULL,
    resultado TEXT,
    FOREIGN KEY (idEstado_animo) REFERENCES estado_animo(idEstado_animo)
);

-- Tabla meditación
CREATE TABLE meditación (
    idMeditacion INT NOT NULL PRIMARY KEY,
    idUsuario INT NOT NULL,
    fecha_hora DATE NOT NULL,
    duracion INT NOT NULL,
    tipo_meditacion VARCHAR(50) NOT NULL,
    favorito BOOLEAN,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

-- Tabla productividad
CREATE TABLE productividad (
    idProductividad INT NOT NULL PRIMARY KEY,
    idUsuario INT NOT NULL,
    fecha_hora DATE NOT NULL,
    duracion INT NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    favorito BOOLEAN,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

-- Tabla música
CREATE TABLE música (
    idMusica INT NOT NULL PRIMARY KEY,
    idUsuario INT NOT NULL,
    fecha_hora DATE NOT NULL,
    duracion INT NOT NULL,
    título VARCHAR(50) NOT NULL,
    favorito BOOLEAN,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

-- Tabla sleepcast
CREATE TABLE sleepcast (
    idSleepcast INT NOT NULL PRIMARY KEY,
    idUsuario INT NOT NULL,
    fecha_hora DATE NOT NULL,
    duracion INT NOT NULL,
    tipo_sleepcast VARCHAR(50) NOT NULL,
    título VARCHAR(50) NOT NULL,
    favorito BOOLEAN,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

-- Tabla hemeroteca
CREATE TABLE hemeroteca (
    idHemeroteca INT NOT NULL PRIMARY KEY,
    idUsuario INT NOT NULL,
    fecha_hora DATE NOT NULL,
    título VARCHAR(50) NOT NULL,
    tipo_artículo VARCHAR(50) NOT NULL,
    favorito BOOLEAN,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);
