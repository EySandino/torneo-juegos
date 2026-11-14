-- Tabla de monedas

CREATE TABLE Monedas (
    id_moneda VARCHAR(3) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    pais VARCHAR(30) NOT NULL
);