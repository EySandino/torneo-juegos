INSERT INTO Departamentos (nombre)
VALUES
('Direccion y administracion'),
('Organizacion de torneos'),
('Departamento tecnologico'),
('Logistica e infraestructura'),
('Marketing y relaciones comerciales'),
('Departamento legal');

INSERT INTO Roles (id_departamento, nombre, descripcion)
VALUES
-- 1. Dirección y administración
(1, 'Director general', 'Supervisa y dirige las operaciones generales de la empresa.'),
(1, 'Gerente de operaciones', 'Coordina y supervisa la organización de los torneos.'),
(1, 'Gerente financiero', 'Administra los presupuestos, pagos y recursos financieros.'),
(1, 'Asistente administrativo', 'Gestiona documentos y tareas administrativas.'),
(1, 'Recursos humanos', 'Gestiona la contratación y administración del personal.'),

-- 2. Organización de torneos
(2, 'Coordinador de torneos', 'Planifica y coordina el desarrollo de las competiciones.'),
(2, 'Arbitro', 'Supervisa las partidas y garantiza el cumplimiento de las reglas.'),
(2, 'Administrador de competicion', 'Gestiona participantes, resultados y clasificaciones.'),
(2, 'Coordinador de participantes', 'Gestiona las inscripciones y comunicación con competidores.'),
(2, 'Coordinador de eventos', 'Organiza la logística de los torneos presenciales.'),
(2, 'Comentarista', 'Encargado de comentar los eventos de los partidos'),

-- 3. Departamento tecnológico
(3, 'Administrador de sistemas', 'Gestiona la infraestructura tecnológica de la empresa.'),
(3, 'Desarrollador de software', 'Desarrolla y mantiene las plataformas digitales.'),
(3, 'Tecnico de soporte', 'Resuelve problemas técnicos de usuarios y participantes.'),
(3, 'Administrador de redes', 'Gestiona las redes y conexiones durante los torneos.'),
(3, 'Especialista en streaming', 'Gestiona las transmisiones de las competiciones.'),

-- 4. Logística e infraestructura
(4, 'Coordinador logistico', 'Organiza los recursos y materiales necesarios para los eventos.'),
(4, 'Encargado de instalaciones', 'Supervisa los locales alquilados para los torneos.'),
(4, 'Tecnico audiovisual', 'Instala y opera los equipos audiovisuales.'),
(4, 'Tecnico de montaje', 'Prepara escenarios y estaciones de juego.'),
(4, 'Encargado de inventario', 'Controla los equipos y materiales de la empresa.'),

-- 5. Marketing y relaciones comerciales
(5, 'Gerente de marketing', 'Dirige las estrategias publicitarias de la empresa.'),
(5, 'Diseñador grafico', 'Crea material visual y publicitario.'),
(5, 'Community manager', 'Administra las redes sociales y comunidades digitales.'),
(5, 'Ejecutivo comercial', 'Gestiona las relaciones comerciales con patrocinadores.'),
(5, 'Relaciones publicas', 'Mantiene relaciones con empresas, medios y participantes.'),

-- 6. Departamento Legal
(6, 'Gerente legal', 'Dirige y supervisa los asuntos juridicos de la empresa.'),
(6, 'Abogado corporativo', 'Gestiona contratos y asuntos legales empresariales.'),
(6, 'Asesor legal internacional', 'Supervisa el cumplimiento de legislaciones extranjeras.'),
(6, 'Especialista en cumplimiento', 'Verifica el cumplimiento de regulaciones y normativas.'),
(6, 'Gestor de contratos', 'Administra contratos con patrocinadores, proveedores y locales.');

INSERT INTO CategoriaPermisos (nombre)
VALUES
('Administracion'),
('Torneos'),
('Participantes'),
('Resultados'),
('Inventario'),
('Instalaciones'),
('Finanzas'),
('Reportes'),
('Marketing'),
('Tecnologia');

INSERT INTO Permisos (id_categoria, nombre, descripcion)
VALUES
-- 1. Administración
(1, 'Gestionar empleados', 'Permite registrar, consultar, modificar y eliminar empleados.'),
(1, 'Gestionar roles', 'Permite administrar los roles de los empleados.'),
(1, 'Gestionar permisos', 'Permite administrar los permisos del sistema.'),

-- 2. Torneos
(2, 'Crear torneos', 'Permite registrar nuevos torneos.'),
(2, 'Consultar torneos', 'Permite visualizar la informacion de los torneos.'),
(2, 'Modificar torneos', 'Permite modificar los datos de torneos existentes.'),
(2, 'Eliminar torneos', 'Permite eliminar torneos existentes.'),

-- 3. Participantes
(3, 'Registrar participantes', 'Permite inscribir nuevos participantes.'),
(3, 'Consultar participantes', 'Permite consultar informacion de participantes.'),
(3, 'Modificar participantes', 'Permite actualizar informacion de participantes.'),
(3, 'Eliminar participantes', 'Permite eliminar participantes registrados.'),

-- 4. Resultados
(4, 'Registrar resultados', 'Permite introducir resultados de partidas.'),
(4, 'Consultar resultados', 'Permite visualizar resultados de competiciones.'),
(4, 'Modificar resultados', 'Permite corregir resultados registrados.'),

-- 5. Inventario
(5, 'Registrar articulos', 'Permite registrar nuevos articulos en inventario.'),
(5, 'Consultar inventario', 'Permite visualizar los articulos disponibles.'),
(5, 'Modificar inventario', 'Permite actualizar informacion de articulos.'),
(5, 'Eliminar articulos', 'Permite eliminar articulos del inventario.'),

-- 6. Instalaciones
(6, 'Registrar locales', 'Permite registrar nuevas instalaciones.'),
(6, 'Consultar locales', 'Permite consultar informacion de instalaciones.'),
(6, 'Modificar locales', 'Permite actualizar informacion de instalaciones.'),
(6, 'Eliminar locales', 'Permite eliminar instalaciones registradas.'),

-- 7. Finanzas
(7, 'Consultar finanzas', 'Permite consultar informacion financiera.'),
(7, 'Gestionar presupuestos', 'Permite crear y modificar presupuestos.'),
(7, 'Gestionar pagos', 'Permite registrar y administrar pagos.'),

-- 8. Reportes
(8, 'Consultar reportes', 'Permite visualizar informes de la empresa.'),
(8, 'Generar reportes', 'Permite generar nuevos informes.'),

-- 9. Marketing
(9, 'Gestionar campanas', 'Permite administrar campanas publicitarias.'),
(9, 'Gestionar publicaciones', 'Permite administrar publicaciones y contenido.'),

-- 10. Tecnologia
(10, 'Gestionar sistemas', 'Permite administrar los sistemas informaticos.'),
(10, 'Gestionar usuarios', 'Permite administrar cuentas de usuario.'),
(10, 'Configurar sistemas', 'Permite modificar configuraciones del sistema.'),

-- 11. Legal
(11, 'Consultar contratos', 'Permite consultar contratos con patrocinadores, proveedores y locales.'),
(11, 'Gestionar contratos', 'Permite crear, modificar y administrar contratos.'),
(11, 'Consultar documentos legales', 'Permite revisar documentos y archivos juridicos.'),
(11, 'Gestionar documentos legales', 'Permite registrar, modificar y organizar documentacion juridica.'),
(11, 'Consultar normativas', 'Permite consultar leyes y regulaciones aplicables.'),
(11, 'Gestionar cumplimiento', 'Permite supervisar el cumplimiento de obligaciones legales.');