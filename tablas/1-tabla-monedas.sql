CREATE TABLE Monedas (
    id_moneda VARCHAR(3) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    pais VARCHAR(30) NOT NULL
);

CREATE TABLE Conversiones (
    id_moneda VARCHAR(3) PRIMARY KEY,
    equivalencia_usd DECIMAL(18,6) NOT NULL,

    CONSTRAINT FK_Moneda_Conversion FOREIGN KEY (id_moneda) REFERENCES Monedas (id_moneda),
    CHECK (equivalencia_usd > 0)
)