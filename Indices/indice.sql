-- =========================================================
-- ADMINISTRACION DE PERSONAL
-- =========================================================

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Permisos_id_categoria' AND object_id = OBJECT_ID('dbo.Permisos'))
    CREATE NONCLUSTERED INDEX IX_Permisos_id_categoria ON dbo.Permisos(id_categoria);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Roles_id_departamento' AND object_id = OBJECT_ID('dbo.Roles'))
    CREATE NONCLUSTERED INDEX IX_Roles_id_departamento ON dbo.Roles(id_departamento);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_RolPermiso_id_rol' AND object_id = OBJECT_ID('dbo.RolPermiso'))
    CREATE NONCLUSTERED INDEX IX_RolPermiso_id_rol ON dbo.RolPermiso(id_rol);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_RolPermiso_id_permiso' AND object_id = OBJECT_ID('dbo.RolPermiso'))
    CREATE NONCLUSTERED INDEX IX_RolPermiso_id_permiso ON dbo.RolPermiso(id_permiso);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Personal_id_rol' AND object_id = OBJECT_ID('dbo.Personal'))
    CREATE NONCLUSTERED INDEX IX_Personal_id_rol ON dbo.Personal(id_rol);
GO

-- Salario(id_personal) ya tiene una restriccion UNIQUE.
-- DireccionesPersonal(id_personal) ya tiene una restriccion UNIQUE.
-- Conversiones(id_moneda) es PRIMARY KEY.

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Salario_id_moneda' AND object_id = OBJECT_ID('dbo.Salario'))
    CREATE NONCLUSTERED INDEX IX_Salario_id_moneda ON dbo.Salario(id_moneda);
GO

-- =========================================================
-- GESTION DE BIENES
-- =========================================================

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Inventario_id_categoria' AND object_id = OBJECT_ID('dbo.Inventario'))
    CREATE NONCLUSTERED INDEX IX_Inventario_id_categoria ON dbo.Inventario(id_categoria);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_BienesDonados_id_patrocinador' AND object_id = OBJECT_ID('dbo.BienesDonados'))
    CREATE NONCLUSTERED INDEX IX_BienesDonados_id_patrocinador ON dbo.BienesDonados(id_patrocinador);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_BienesDonados_numero_serie' AND object_id = OBJECT_ID('dbo.BienesDonados'))
    CREATE NONCLUSTERED INDEX IX_BienesDonados_numero_serie ON dbo.BienesDonados(numero_serie);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_AlmacenesInventario_id_almacen' AND object_id = OBJECT_ID('dbo.AlmacenesInventario'))
    CREATE NONCLUSTERED INDEX IX_AlmacenesInventario_id_almacen ON dbo.AlmacenesInventario(id_almacen);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_AlmacenesInventario_numero_serie' AND object_id = OBJECT_ID('dbo.AlmacenesInventario'))
    CREATE NONCLUSTERED INDEX IX_AlmacenesInventario_numero_serie ON dbo.AlmacenesInventario(numero_serie);
GO

-- =========================================================
-- JUGADORES Y VIDEOJUEGOS
-- =========================================================

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Videojuegos_id_categoria' AND object_id = OBJECT_ID('dbo.Videojuegos'))
    CREATE NONCLUSTERED INDEX IX_Videojuegos_id_categoria ON dbo.Videojuegos(id_categoria);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_DireccionesJugadores_numero_cedula' AND object_id = OBJECT_ID('dbo.DireccionesJugadores'))
    CREATE NONCLUSTERED INDEX IX_DireccionesJugadores_numero_cedula ON dbo.DireccionesJugadores(numero_cedula);
GO

-- Jugadores(numero_cedula) es PRIMARY KEY.
-- Jugadores(nombre_usuario) ya tiene una restriccion UNIQUE.

-- =========================================================
-- CONTROL DE TORNEOS
-- =========================================================

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Torneos_id_juego' AND object_id = OBJECT_ID('dbo.Torneos'))
    CREATE NONCLUSTERED INDEX IX_Torneos_id_juego ON dbo.Torneos(id_juego);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_PatrocinadoesTorneos_id_torneo' AND object_id = OBJECT_ID('dbo.PatrocinadoesTorneos'))
    CREATE NONCLUSTERED INDEX IX_PatrocinadoesTorneos_id_torneo ON dbo.PatrocinadoesTorneos(id_torneo);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_PatrocinadoesTorneos_id_patrocinador' AND object_id = OBJECT_ID('dbo.PatrocinadoesTorneos'))
    CREATE NONCLUSTERED INDEX IX_PatrocinadoesTorneos_id_patrocinador ON dbo.PatrocinadoesTorneos(id_patrocinador);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_PatrocinadoesTorneos_id_moneda' AND object_id = OBJECT_ID('dbo.PatrocinadoesTorneos'))
    CREATE NONCLUSTERED INDEX IX_PatrocinadoesTorneos_id_moneda ON dbo.PatrocinadoesTorneos(id_moneda);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_ActivosTorneo_numero_serie' AND object_id = OBJECT_ID('dbo.ActivosTorneo'))
    CREATE NONCLUSTERED INDEX IX_ActivosTorneo_numero_serie ON dbo.ActivosTorneo(numero_serie);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_ActivosTorneo_id_torneo' AND object_id = OBJECT_ID('dbo.ActivosTorneo'))
    CREATE NONCLUSTERED INDEX IX_ActivosTorneo_id_torneo ON dbo.ActivosTorneo(id_torneo);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Participantes_id_torneo' AND object_id = OBJECT_ID('dbo.Participantes'))
    CREATE NONCLUSTERED INDEX IX_Participantes_id_torneo ON dbo.Participantes(id_torneo);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Participantes_id_equipo' AND object_id = OBJECT_ID('dbo.Participantes'))
    CREATE NONCLUSTERED INDEX IX_Participantes_id_equipo ON dbo.Participantes(id_equipo);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Participantes_numero_cedula' AND object_id = OBJECT_ID('dbo.Participantes'))
    CREATE NONCLUSTERED INDEX IX_Participantes_numero_cedula ON dbo.Participantes(numero_cedula);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Partidos_id_torneo' AND object_id = OBJECT_ID('dbo.Partidos'))
    CREATE NONCLUSTERED INDEX IX_Partidos_id_torneo ON dbo.Partidos(id_torneo);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Partidos_primer_competidor' AND object_id = OBJECT_ID('dbo.Partidos'))
    CREATE NONCLUSTERED INDEX IX_Partidos_primer_competidor ON dbo.Partidos(primer_competidor);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Partidos_segundo_competidor' AND object_id = OBJECT_ID('dbo.Partidos'))
    CREATE NONCLUSTERED INDEX IX_Partidos_segundo_competidor ON dbo.Partidos(segundo_competidor);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Premios_id_torneo' AND object_id = OBJECT_ID('dbo.Premios'))
    CREATE NONCLUSTERED INDEX IX_Premios_id_torneo ON dbo.Premios(id_torneo);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Premios_id_moneda' AND object_id = OBJECT_ID('dbo.Premios'))
    CREATE NONCLUSTERED INDEX IX_Premios_id_moneda ON dbo.Premios(id_moneda);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Ganadores_id_participante' AND object_id = OBJECT_ID('dbo.Ganadores'))
    CREATE NONCLUSTERED INDEX IX_Ganadores_id_participante ON dbo.Ganadores(id_participante);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Ganadores_id_premio' AND object_id = OBJECT_ID('dbo.Ganadores'))
    CREATE NONCLUSTERED INDEX IX_Ganadores_id_premio ON dbo.Ganadores(id_premio);
GO