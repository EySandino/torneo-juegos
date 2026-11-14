-- NO HACE FALTA EJECUTAR ESTOS COMANDOS: Son cambios hechos durante la marcha

SELECT name FROM sys.tables ORDER BY name;

SELECT * FROM Monedas;

SELECT * FROM Departamentos;

SELECT * FROM Roles;

SELECT * FROM Permisos;

SELECT * FROM RolPermiso;

SELECT * FROM Personal;

SELECT * FROM Salario;

SELECT * FROM DireccionesPersonal;

SELECT * FROM Inventario;

--Ajustes a las columnas
ALTER TABLE Monedas ALTER COLUMN pais VARCHAR(30);

ALTER TABLE Departamentos ALTER COLUMN nombre VARCHAR(45);

ALTER TABLE Roles ALTER COLUMN nombre VARCHAR(30);

ALTER TABLE Permisos ALTER COLUMN nombre VARCHAR(30);

-- Reiniciar PK a 0 al valor deseado
--DBCC CHECKIDENT ('Personal', RESEED, 0);

-- ///////////////////
SELECT id_rol, nombre FROM Roles ORDER BY id_rol;

SELECT id_permiso, id_categoria, nombre
FROM Permisos
ORDER BY id_permiso

DROP TABLE Inventario;