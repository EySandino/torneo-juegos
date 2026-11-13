INSERT INTO Departamentos (nombre)
VALUES
('Direccion y administracion'),
('Organizacion de torneos'),
('Departamento tecnologico'),
('Logistica e infraestructura'),
('Marketing y relaciones comerciales');

INSERT INTO Roles (id_departamento, nombre, descripcion)
VALUES
-- Dirección y administración
(1, 'Director general', 'Supervisa y dirige las operaciones generales de la empresa.'),
(1, 'Gerente de operaciones', 'Coordina y supervisa la organización de los torneos.'),
(1, 'Gerente financiero', 'Administra los presupuestos, pagos y recursos financieros.'),
(1, 'Asistente administrativo', 'Gestiona documentos y tareas administrativas.'),
(1, 'Recursos humanos', 'Gestiona la contratación y administración del personal.'),

-- Organización de torneos
(2, 'Coordinador de torneos', 'Planifica y coordina el desarrollo de las competiciones.'),
(2, 'Arbitro', 'Supervisa las partidas y garantiza el cumplimiento de las reglas.'),
(2, 'Administrador de competicion', 'Gestiona participantes, resultados y clasificaciones.'),
(2, 'Coordinador de participantes', 'Gestiona las inscripciones y comunicación con competidores.'),
(2, 'Coordinador de eventos', 'Organiza la logística de los torneos presenciales.'),

-- Departamento tecnológico
(3, 'Administrador de sistemas', 'Gestiona la infraestructura tecnológica de la empresa.'),
(3, 'Desarrollador de software', 'Desarrolla y mantiene las plataformas digitales.'),
(3, 'Tecnico de soporte', 'Resuelve problemas técnicos de usuarios y participantes.'),
(3, 'Administrador de redes', 'Gestiona las redes y conexiones durante los torneos.'),
(3, 'Especialista en streaming', 'Gestiona las transmisiones de las competiciones.'),

-- Logística e infraestructura
(4, 'Coordinador logistico', 'Organiza los recursos y materiales necesarios para los eventos.'),
(4, 'Encargado de instalaciones', 'Supervisa los locales alquilados para los torneos.'),
(4, 'Tecnico audiovisual', 'Instala y opera los equipos audiovisuales.'),
(4, 'Tecnico de montaje', 'Prepara escenarios y estaciones de juego.'),
(4, 'Encargado de inventario', 'Controla los equipos y materiales de la empresa.'),

-- Marketing y relaciones comerciales
(5, 'Gerente de marketing', 'Dirige las estrategias publicitarias de la empresa.'),
(5, 'Diseñador grafico', 'Crea material visual y publicitario.'),
(5, 'Community manager', 'Administra las redes sociales y comunidades digitales.'),
(5, 'Ejecutivo comercial', 'Gestiona las relaciones comerciales con patrocinadores.'),
(5, 'Relaciones publicas', 'Mantiene relaciones con empresas, medios y participantes.');
