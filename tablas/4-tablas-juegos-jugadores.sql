CREATE TABLE CategoriaJuegos (
    id_categoria INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(20)
);

CREATE TABLE Videojuegos (
    id_juego VARCHAR(10) PRIMARY KEY,
    id_categoria INT NOT NULL,
    nombre VARCHAR(60) NOT NULL,
    modalidad VARCHAR(15) NOT NULL,
    
    CONSTRAINT FK_Categoria_Juego FOREIGN KEY (id_categoria) REFERENCES CategoriaJuegos(id_categoria)
);

CREATE TABLE Equipos (
    id_equipo INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,

    CONSTRAINT UQ_Nombre_Equipo UNIQUE (nombre)
);

CREATE TABLE Jugadores (
    numero_cedula VARCHAR(20) PRIMARY KEY,
    nombre_usuario VARCHAR(30) NOT NULL,

    nombre_natural VARCHAR(30) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,

    CONSTRAINT UQ_Nombre_Usuario UNIQUE (nombre_usuario)
);

CREATE TABLE DireccionesJugadores (
    numero_cedula VARCHAR(20) NOT NULL,
    cod_postal VARCHAR(10) NOT NULL,

    pais VARCHAR(30) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    direccion_exacta VARCHAR(100) NOT NULL,

    CONSTRAINT FK_Jugador_Direccion FOREIGN KEY (numero_cedula) REFERENCES Jugadores(numero_cedula)
);