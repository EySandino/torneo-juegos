CREATE TABLE Patrocinadores (
    id_patrocinador INT IDENTITY PRIMARY KEY,
    fecha_registro DATE NOT NULL,

    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    sitio_web VARCHAR(255) NOT NULL
);

CREATE TABLE CategoriaInventario (
    id_categoria INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(30)
);

CREATE TABLE Inventario (
    numero_serie VARCHAR(50) PRIMARY KEY,
    id_categoria INT NOT NULL,

    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100),
    estado VARCHAR(10) NOT NULL,

    CONSTRAINT FK_Categoria_Inventario FOREIGN KEY (id_categoria) REFERENCES CategoriaInventario(id_categoria)
);

CREATE TABLE BienesDonados (
    id_patrocinador INT NOT NULL,
    numero_serie VARCHAR(50) NOT NULL,

    CONSTRAINT FK_Donador FOREIGN KEY (id_patrocinador) REFERENCES Patrocinadores(id_patrocinador),
    CONSTRAINT FK_Bien_Donado FOREIGN KEY (numero_serie) REFERENCES Inventario(numero_serie)
);

CREATE TABLE Almacenes (
    id_almacen INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100),
    
    pais VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
);

CREATE TABLE AlmacenesInventario (
    id_almacen INT,
    numero_serie VARCHAR(50),

    CONSTRAINT FK_Almacen_Bien FOREIGN KEY (id_almacen) REFERENCES Almacenes(id_almacen),
    CONSTRAINT FK_NumeroSerie_Almacen FOREIGN KEY (numero_serie) REFERENCES Inventario(numero_serie)
);