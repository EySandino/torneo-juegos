-- Jugadores y Juegos

-- CONTROL DE TORNEOS

CREATE TABLE Torneos (
    id_torneo INT IDENTITY PRIMARY KEY ,
    id_juego VARCHAR(10) NOT NULL,

    nombre VARCHAR(40) NOT NULL,
    estado VARCHAR(20) NOT NULL,

    modalidad VARCHAR(20) NOT NULL,
    tipo_juego VARCHAR(20) NOT NULL,

    fecha_inicio DATE NOT NULL,
    ubicacion VARCHAR(255),
    
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
    numero_cedula VARCHAR(20),
    
    CONSTRAINT FK_Torneos_Participantes FOREIGN KEY (id_torneo) REFERENCES Torneos(id_torneo),
    CONSTRAINT FK_Participante_Equipo FOREIGN KEY (id_equipo) REFERENCES Equipos(id_equipo),
    CONSTRAINT FK_Participante_Jugador FOREIGN KEY (numero_cedula) REFERENCES Jugadores(numero_cedula),

    CONSTRAINT CK_Tipo_Participante CHECK ((id_equipo IS NOT NULL AND numero_cedula IS NULL) OR (id_equipo IS NULL AND numero_cedula IS NOT NULL)),
);

CREATE UNIQUE INDEX UQ_Torneo_Equipo ON Participantes (id_torneo, id_equipo) WHERE id_equipo IS NOT NULL;

CREATE UNIQUE INDEX UQ_Torneo_Jugador ON Participantes (id_torneo, numero_cedula) WHERE numero_cedula IS NOT NULL;

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
