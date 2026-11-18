INSERT INTO Almacenes (nombre, telefono, correo, pais, ciudad, direccion)
VALUES
('Almacén Central CDMX', '+52 55 1234 5678', 'contacto.cdmx@almacenesamericas.com', 'México', 'Ciudad de México', 'Av. Paseo de la Reforma 250, Col. Juárez'),
('Logística Norte Monterrey', '+52 81 8765 4321', 'monterrey@almacenesamericas.com', 'México', 'Monterrey', 'Blvd. Antonio L. Rodríguez 2100, Poniente'),
('Hub Pacífico Bogotá', '+57 1 743 0987', 'bogota@almacenesamericas.com', 'Colombia', 'Bogotá', 'Autopista Norte # 100-20, Bodega 4'),
('Almacén Andino Medellín', '+57 4 444 5566', 'medellin@almacenesamericas.com', 'Colombia', 'Medellín', 'Calle 10 Sur # 50-15, Zona Industrial'),
('Centro de Distribución Buenos Aires', '+54 11 4123 7890', 'baires@almacenesamericas.com', 'Argentina', 'Buenos Aires', 'Av. Corrientes 4500, Almagro'),
('Depósito Cono Sur Santiago', '+56 2 2799 1122', 'santiago@almacenesamericas.com', 'Chile', 'Santiago', 'Camino Lo Oteiza 850, Maipú'),
('Hub Costa Rica San José', '+506 2296 4000', 'sanjose@almacenesamericas.com', 'Costa Rica', 'San José', 'La Uruca, del puente peatonal 200m oeste'),
('Almacén Norteamérica Miami', '+1 305 555 0143', 'miami@almacenesamericas.com', 'Estados Unidos', 'Miami', '8200 NW 25th St, Doral, FL 33122'),
('Depósito Lima Callao', '+51 1 613 8888', 'lima@almacenesamericas.com', 'Perú', 'Lima', 'Av. Elmer Faucett 3450, Callao'),
('Almacén Paulista São Paulo', '+55 11 3232 9988', 'saopaulo@almacenesamericas.com', 'Brasil', 'São Paulo', 'Rodovia Anhanguera, Km 18 - Parque Industrial');

-- Enlaces de Almacenes con el Inventario de Componentes, Periféricos, Consolas y Networking
INSERT INTO AlmacenesInventario (id_almacen, numero_serie) VALUES
-- Almacén 1 (CDMX, México)
(1, 'RTX409-01'), (1, 'RTX407T-02'), (1, 'LOGGPROX2-01'), (1, 'RAZERBLK4-02'), 
(1, 'PS5SLIM1TB-01'), (1, 'PS5PRO2TB-02'), (1, 'ASUSRTBE96-01'), (1, 'TPLINKBE800-02'),

-- Almacén 2 (Monterrey, México)
(2, 'RX7900X-03'), (2, 'RX7800XT-04'), (2, 'STEELSERA-03'), (2, 'LOGG502X-04'),
(2, 'XBOXSERX1TB-03'), (2, 'XBOXSERIES-04'), (2, 'ASUSROGGT10-03'), (2, 'NETGEARNIR-04'),

-- Almacén 3 (Bogotá, Colombia)
(3, 'INT14900K-05'), (3, 'INT14700K-06'), (3, 'RAZERVIPER-05'), (3, 'ASUSROGPG-06'),
(3, 'NINTENDOLED-05'), (3, 'NINTENDOLIT-06'), (3, 'TPLINKMESH-05'), (3, 'EEROPRO7-06'),

-- Almacén 4 (Medellín, Colombia)
(4, 'RYZ97950-07'), (4, 'RYZ57600-08'), (4, 'LGGREIN27-07'), (4, 'SAMPODG7-08'),
(4, 'STEAMDECK512-07'), (4, 'ROGALLYX-08'), (4, 'TPLSG1024-07'), (4, 'CISCOCAT296-08'),

-- Almacén 5 (Buenos Aires, Argentina)
(5, 'Z790AERO-09'), (5, 'X670EAORUS-10'), (5, 'HYPERXCLD3-09'), (5, 'SHUEMV7-10'),
(5, 'LENOVOGO-09'), (5, 'PSVR2HEAD-10'), (5, 'NETGEARSW8-09'), (5, 'ASUSXGPCIE-10'),

-- Almacén 6 (Santiago, Chile)
(6, 'B650TOMA-11'), (6, 'RAM32GB60-12'), (6, 'HYPERQUAD-11'), (6, 'ELGATOWAVE-12'),
(6, 'METASTQUEST3-11'), (6, 'RETROANBERNI-12'), (6, 'TPWIFIUSB-11'), (6, 'CABLECAT6A-12'),

-- Almacén 7 (San José, Costa Rica)
(7, 'RAM64GB56-13'), (7, 'SSDNVME2TB-14'), (7, 'CORSAIRMM800-13'), (7, 'STEELGIGXL-14'),
(7, 'RETROPOCH-13'), (7, 'PS5COVERS-14'), (7, 'CABLECAT8-13'), (7, 'POWERLINEKIT-14'),

-- Almacén 8 (Miami, Estados Unidos)
(8, 'WDNVMESSD-15'), (8, 'PSU1000W-16'), (8, 'LOGG923-15'), (8, 'ELGATOSTREAM-16'),
(8, 'XBOXCONTEX-15'), (8, 'CHARGSTATPS5-16'), (8, 'UBNTUAPU6-15'), (8, 'UBNTUISW8-16'),

-- Almacén 9 (Lima, Perú)
(9, 'PSU850W-17'), (9, 'AIO360MM-18'), (9, 'XBOXWIRELESS-17'), (9, 'DUALSENSEED-18'),
(9, 'NINTENDOPRO-17'), (9, 'PORTABLEDOCK-18'), (9, 'MIKROTIKROU-17'), (9, 'SYNOLOGYNET-18'),

-- Almacén 10 (São Paulo, Brasil)
(10, 'AIRCOOLER-19'), (10, 'CASELANCUD-20'), (10, 'ASTROA50X-19'), (10, 'RAZERKRAKVO-20'),
(10, 'RAZERKISSV3-19'), (10, 'RETROMIYOO-20'), (10, 'QNAPNAS2BAY-19'), (10, 'MODEMCABLE-20');