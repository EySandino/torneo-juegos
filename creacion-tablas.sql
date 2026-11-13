USE master;
GO

CREATE DATABASE TORNEOS_DB;
USE TORNEOS_DB;

-- Tabla de monedas

CREATE TABLE Monedas (
    id_moneda VARCHAR(3) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    pais VARCHAR(20) NOT NULL
);

-- Administración de Personal

CREATE TABLE CategoriaPermisos (
    id_categoria INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE Permisos (
    id_permiso INT IDENTITY PRIMARY KEY,
    id_categoria INT,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,

    CONSTRAINT FK_Categoria_Permiso FOREIGN KEY (id_categoria) REFERENCES CategoriaPermisos(id_categoria)
);

CREATE TABLE Departamentos (
    id_departamento INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE Roles (
    id_rol INT IDENTITY PRIMARY KEY,
    id_departamento INT,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(255),

    CONSTRAINT FK_Departamento_Rol FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

CREATE TABLE RolPermiso (
    id_rol INT NOT NULL,
    id_permiso DECIMAL(2,2) NOT NULL,
    
    CONSTRAINT FK_Rol_Permiso FOREIGN KEY (id_rol) REFERENCES Roles(id_rol),
    CONSTRAINT FK_Permiso_Rol FOREIGN KEY (id_permiso) REFERENCES Permisos(id_permiso)
);

CREATE TABLE Personal (
    id_personal VARCHAR(5) PRIMARY KEY,
    id_rol INT NOT NULL,
    numero_cedula VARCHAR(20) UNIQUE NOT NULL,
    estado_civil VARCHAR(10) NOT NULL,

    nombre VARCHAR(10) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    
    inicio_contrato DATE NOT NULL,
    fin_contrato DATE,

    CONSTRAINT FK_Rol_Personal FOREIGN KEY (id_rol) REFERENCES Roles(id_rol)
);

CREATE TABLE DireccionesPersonal (
    id_personal VARCHAR(5) NOT NULL,
    cod_postal VARCHAR(10) NOT NULL,

    pais VARCHAR(15) NOT NULL,
    canton VARCHAR(15) NOT NULL,
    distrito VARCHAR(15) NOT NULL,
    direccion_exacta VARCHAR(100) NOT NULL,

    CONSTRAINT FK_IdPersonal_Direccion FOREIGN KEY (id_personal) REFERENCES Personal(id_personal)
);

CREATE TABLE Salario (
    id_personal VARCHAR(5) NOT NULL,
    id_moneda VARCHAR(3) NOT NULL,
    monto INT NOT NULL,
    frecuencia_pago VARCHAR(50) NOT NULL,

    CONSTRAINT FK_IdPersonal_Salario FOREIGN KEY (id_personal) REFERENCES Personal(id_personal),
    CONSTRAINT FK_Moneda_Salario FOREIGN KEY (id_moneda) REFERENCES Monedas(id_moneda)
);

-- Gestión de Bienes

CREATE TABLE Patrocinadores (
    id_patrocinador INT IDENTITY PRIMARY KEY,
    fecha_registro DATE NOT NULL,

    nombre VARCHAR(20) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    sitio_web VARCHAR(50) NOT NULL,
);

CREATE TABLE Inventario (
    numero_serie VARCHAR(50) PRIMARY KEY,

    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100),
    categoria VARCHAR(50) NOT NULL,
    estado VARCHAR(10) NOT NULL,

    cantidad_disponible INT NOT NULL,
    cantidad_total INT NOT NULL
);

CREATE TABLE BienesDonados (
    id_patrocinador INT NOT NULL,
    numero_serie VARCHAR(50) NOT NULL

    CONSTRAINT FK_Donador FOREIGN KEY (id_patrocinador) REFERENCES Patrocinadores(id_patrocinador),
    CONSTRAINT FK_Bien_Donado FOREIGN KEY (numero_serie) REFERENCES Inventario(numero_serie)
);

-- Jugadores y Juegos

CREATE TABLE Videojuegos (
    id_juego VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    categoria VARCHAR(10) NOT NULL,
);

CREATE TABLE Equipos (
    id_equipo INT IDENTITY PRIMARY KEY,
    nombre_equipo VARCHAR(20) NOT NULL,
    id_juego VARCHAR(10) NOT NULL,
    
    CONSTRAINT FK_Juego_Equipo FOREIGN KEY (id_juego) REFERENCES Videojuegos(id_juego)
);

CREATE TABLE Jugadores (
    nombre_usuario VARCHAR(15) PRIMARY KEY,
    id_equipo INT,

    CONSTRAINT FK_Jugador_Equipo FOREIGN KEY (id_equipo) REFERENCES Equipos(id_equipo)
);

CREATE TABLE DatosPersonalesJugadores (
    numero_cedula VARCHAR(20) PRIMARY KEY,
    nombre_usuario VARCHAR(15) NOT NULL,

    nombre_natural VARCHAR(10) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,

    CONSTRAINT FK_Persona_Jugador FOREIGN KEY (nombre_usuario) REFERENCES Jugadores(nombre_usuario)
);

CREATE TABLE DireccionesJugadores (
    numero_cedula VARCHAR(20) NOT NULL,
    cod_postal VARCHAR(10) NOT NULL,

    pais VARCHAR(15) NOT NULL,
    canton VARCHAR(15) NOT NULL,
    distrito VARCHAR(15) NOT NULL,
    direccion_exacta VARCHAR(100) NOT NULL,

    CONSTRAINT FK_Jugador_Direccion FOREIGN KEY (numero_cedula) REFERENCES DatosPersonalesJugadores(numero_cedula)
);

-- CONTROL DE TORNEOS

CREATE TABLE Torneos (
    id_torneo INT IDENTITY PRIMARY KEY ,
    id_juego VARCHAR(10) NOT NULL,

    nombre VARCHAR(20) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    modalidad VARCHAR(20) NOT NULL,

    fecha_inicio DATE NOT NULL,
    ubicacion VARCHAR(50) NOT NULL,
    
    CONSTRAINT FK_Torneo_Juego FOREIGN KEY (id_juego) REFERENCES Videojuegos(id_juego)
);

CREATE TABLE TorneoPatrocinador (
    id_torneo INT NOT NULL,
    id_patrocinador INT NOT NULL,

    id_moneda VARCHAR(3) NOT NULL,
    monto_aportado INT NOT NULL,

    CONSTRAINT FK_Torneo_Patrocinado FOREIGN KEY (id_torneo) REFERENCES Torneos(id_torneo),
    CONSTRAINT FK_Patrocinador_Torneo FOREIGN KEY (id_patrocinador) REFERENCES Patrocinadores(id_patrocinador),
    CONSTRAINT FK_Moneda_Patrocinador FOREIGN KEY (id_moneda) REFERENCES Monedas(id_moneda)
);

CREATE TABLE ActivosTorneo(
    numero_serie VARCHAR(50) NOT NULL,
    id_torneo INT NOT NULL

    CONSTRAINT FK_Activo_En_Uso FOREIGN KEY (numero_serie) REFERENCES Inventario(numero_serie),
    CONSTRAINT FK_Torneo_Activo FOREIGN KEY (id_torneo) REFERENCES Torneos(id_torneo)
);

CREATE TABLE Participantes (
    id_participante INT IDENTITY PRIMARY KEY,
    id_torneo INT NOT NULL,
    estado VARCHAR(20) NOT NULL,

    id_equipo INT,
    nombre_usuario VARCHAR(15),
    
    CONSTRAINT FK_Torneos_Participantes FOREIGN KEY (id_torneo) REFERENCES Torneos(id_torneo),
    CONSTRAINT FK_Participante_Equipo FOREIGN KEY (id_equipo) REFERENCES Equipos(id_equipo),
    CONSTRAINT FK_Participante_Jugador FOREIGN KEY (nombre_usuario) REFERENCES Jugadores(nombre_usuario)
);

CREATE TABLE Partidos (
    id_partido INT IDENTITY PRIMARY KEY,
    id_torneo INT NOT NULL,
    fecha_hora_inicio DATETIME NOT NULL,

    primer_competidor INT NOT NULL,
    segundo_competidor INT NOT NULL,

    link_estadisticas VARCHAR(100),

    CONSTRAINT FK_Partido_Torneo FOREIGN KEY (id_torneo) REFERENCES Torneos(id_torneo),
    CONSTRAINT FK_Partido_J1 FOREIGN KEY (primer_competidor) REFERENCES Participantes(id_participante),
    CONSTRAINT FK_Partido_J2 FOREIGN KEY (segundo_competidor) REFERENCES Participantes(id_participante)
);

CREATE TABLE Premios (
    id_premio INT IDENTITY PRIMARY KEY,
    id_torneo INT NOT NULL,
    tipo_premio VARCHAR(20) NOT NULL,

    id_moneda VARCHAR(3),
    monto INT,
    bienes_ganados VARCHAR(20),

    CONSTRAINT FK_Torneo_Premio FOREIGN KEY (id_torneo) REFERENCES Torneos(id_torneo),
    CONSTRAINT FK_Moneda_Premio FOREIGN KEY (id_moneda) REFERENCES Monedas(id_moneda)
);

CREATE TABLE Ganadores (
    id_participante INT NOT NULL,
    id_premio INT NOT NULL,

    CONSTRAINT FK_Ganador_Participante FOREIGN KEY (id_participante) REFERENCES Participantes(id_participante),
    CONSTRAINT FK_Ganador_Premio FOREIGN KEY (id_premio) REFERENCES Premios(id_premio)
);
