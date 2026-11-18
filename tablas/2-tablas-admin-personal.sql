CREATE TABLE CategoriaPermisos (
    id_categoria INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE Permisos (
    id_permiso INT IDENTITY PRIMARY KEY,
    id_categoria INT,
    nombre VARCHAR(40) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,

    CONSTRAINT FK_Categoria_Permiso FOREIGN KEY (id_categoria) REFERENCES CategoriaPermisos(id_categoria)
);

CREATE TABLE Departamentos (
    id_departamento INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL
);

CREATE TABLE Roles (
    id_rol INT IDENTITY PRIMARY KEY,
    id_departamento INT,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(255),

    CONSTRAINT FK_Departamento_Rol FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

CREATE TABLE RolPermiso (
    id_rol INT NOT NULL,
    id_permiso INT NOT NULL,
    
    CONSTRAINT FK_Rol_Permiso FOREIGN KEY (id_rol) REFERENCES Roles(id_rol),
    CONSTRAINT FK_Permiso_Rol FOREIGN KEY (id_permiso) REFERENCES Permisos(id_permiso)
);

CREATE TABLE Personal (
    id_personal INT IDENTITY PRIMARY KEY,
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
    id_personal INT NOT NULL,
    cod_postal VARCHAR(10) NOT NULL,

    pais VARCHAR(30) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,

    CONSTRAINT FK_IdPersonal_Direccion FOREIGN KEY (id_personal) REFERENCES Personal(id_personal),
    CONSTRAINT UQ_idPersonal_Direccion UNIQUE (id_personal)
);

CREATE TABLE Salario (
    id_personal INT NOT NULL,
    id_moneda VARCHAR(3) NOT NULL,
    monto INT NOT NULL,
    frecuencia_pago VARCHAR(50) NOT NULL,

    CONSTRAINT FK_IdPersonal_Salario FOREIGN KEY (id_personal) REFERENCES Personal(id_personal),
    CONSTRAINT FK_Moneda_Salario FOREIGN KEY (id_moneda) REFERENCES Monedas(id_moneda),

    CONSTRAINT UQ_idPersonal_Salario UNIQUE (id_personal)
);