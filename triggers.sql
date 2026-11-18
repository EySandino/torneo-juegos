CREATE TRIGGER TR_Moneda_Patrocinio ON PatrocinadoesTorneos INSTEAD OF INSERT AS
BEGIN
	INSERT INTO PatrocinadoesTorneos (id_torneo, id_patrocinador, id_moneda, monto_aportado)
	SELECT id_torneo, id_patrocinador, 'USD', monto_aportado FROM inserted;
END;

SELECT * FROM DireccionesTorneos;
SELECT * FROM Premios;

CREATE TRIGGER TR_Coversiones_Premio ON Premios INSTEAD OF INSERT AS
BEGIN
	