CREATE DATABASE TORNEOS_DB
USE TORNEOS_DB;

SELECT name FROM sys.tables ORDER BY name;

-- NO EJECUTAR ESTOS COMANDOS: Son cambios hechos durante la marcha
SELECT * FROM Monedas;

SELECT * FROM Departamentos;

SELECT * FROM Roles;

SELECT * FROM Permisos;

SELECT * FROM RolPermiso;

SELECT * FROM Personal;

SELECT * FROM Salario;

SELECT * FROM DireccionesPersonal;

SELECT * FROM Inventario;

SELECT * FROM Videojuegos;

SELECT * FROM CategoriaJuegos;

SELECT * FROM Equipos ORDER BY id_equipo;

SELECT * FROM Torneos;

SELECT * FROM Jugadores;

SELECT * FROM Participantes;

SELECT numero_cedula FROM Jugadores;

SELECT id_torneo FROM Torneos WHERE tipo_juego = 'individual';
SELECT id_torneo FROM Torneos WHERE tipo_juego = 'Por Equipos';

SELECT id_equipo FROM Participantes WHERE id_equipo > 295;

--Ajustes a las columnas
ALTER TABLE Monedas ALTER COLUMN pais VARCHAR(30);

ALTER TABLE Departamentos ALTER COLUMN nombre VARCHAR(45);

ALTER TABLE Roles ALTER COLUMN nombre VARCHAR(30);

ALTER TABLE Permisos ALTER COLUMN nombre VARCHAR(30);

ALTER TABLE Videojuegos ALTER COLUMN modalidad VARCHAR(15);

ALTER TABLE Jugadores ALTER COLUMN nombre_natural VARCHAR(30);

ALTER TABLE DireccionesJugadores ALTER COLUMN estado VARCHAR(30);

-- Reiniciar PK a 0 al valor deseado
--DBCC CHECKIDENT ('Torneos', RESEED, 0);

-- ///////////////////
SELECT id_rol, nombre FROM Roles ORDER BY id_rol;

SELECT id_permiso, id_categoria, nombre
FROM Permisos
ORDER BY id_permiso