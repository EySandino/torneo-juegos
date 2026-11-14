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

INSERT INTO CategoriaInventario (nombre) VALUES
('Componentes de PC'),
('Periféricos'),
('Consolas de Videojuegos'),
('Networking');

INSERT INTO Inventario (numero_serie, id_categoria, nombre, descripcion, estado)
VALUES
-- 1. Componentes de PC
('RTX409-01', 1, 'GeForce RTX 4090', 'Tarjeta grafica 24GB GDDR6X', 'Disponible'),
('RTX407T-02', 1, 'RTX 4070 Ti Super', 'Tarjeta grafica 16GB', 'Disponible'),
('RX7900X-03', 1, 'Radeon RX 7900 XTX', 'Tarjeta grafica 24GB AMD', 'Disponible'),
('RX7800XT-04', 1, 'Radeon RX 7800 XT', 'Tarjeta grafica 16GB', 'Disponible'),
('INT14900K-05', 1, 'Intel Core i9-14900K', 'Procesador 24 nucleos LGA1700', 'Disponible'),
('INT14700K-06', 1, 'Intel Core i7-14700K', 'Procesador 20 nucleos', 'Disponible'),
('RYZ97950-07', 1, 'AMD Ryzen 9 7950X3D', 'Procesador 16 nucleos AM5', 'Disponible'),
('RYZ57600-08', 1, 'AMD Ryzen 5 7600X', 'Procesador 6 nucleos AM5', 'Disponible'),
('Z790AERO-09', 1, 'Gigabyte Z790 AERO G', 'Motherboard LGA1700 DDR5', 'Disponible'),
('X670EAORUS-10', 1, 'X670E Aorus Master', 'Motherboard AM5 ATX', 'Disponible'),
('B650TOMA-11', 1, 'MSI MAG B650 Tomahawk', 'Motherboard AM5 WiFi', 'Disponible'),
('RAM32GB60-12', 1, 'Corsair Vengeance 32GB', 'Memoria RAM DDR5 6000MHz', 'Disponible'),
('RAM64GB56-13', 1, 'G.Skill Trident Z5 64GB', 'Memoria RAM DDR5 5600MHz', 'Disponible'),
('SSDNVME2TB-14', 1, 'Samsung 990 PRO 2TB', 'Disco SSD M.2 NVMe PCIe 4.0', 'Disponible'),
('WDNVMESSD-15', 1, 'WD Black SN850X 1TB', 'Disco SSD M.2 NVMe', 'Disponible'),
('PSU1000W-16', 1, 'Corsair RM1000x', 'Fuente de poder 1000W 80+ Gold', 'Disponible'),
('PSU850W-17', 1, 'Seasonic Focus GX-850', 'Fuente de poder 850W Modular', 'Disponible'),
('AIO360MM-18', 1, 'NZXT Kraken Elite 360', 'Enfriamiento liquido AIO RGB', 'Disponible'),
('AIRCOOLER-19', 1, 'Thermalright Peerless 120', 'Disipador por aire doble torre', 'Disponible'),
('CASELANCUD-20', 1, 'Lian Li O11 Dynamic EVO', 'Gabinete mid tower cristal templado', 'Disponible'),

-- 2. Periféricos
('LOGGPROX2-01', 2, 'Logitech G Pro X 2', 'Audifonos inalambricos gaming', 'Disponible'),
('RAZERBLK4-02', 2, 'Razer BlackWidow V4', 'Teclado mecanico RGB', 'Disponible'),
('STEELSERA-03', 2, 'SteelSeries Apex Pro', 'Teclado optico ajustable', 'Disponible'),
('LOGG502X-04', 2, 'Logitech G502 X Plus', 'Mouse inalambrico gaming', 'Disponible'),
('RAZERVIPER-05', 2, 'Razer Viper V3 Pro', 'Mouse ultraligero esports', 'Disponible'),
('ASUSROGPG-06', 2, 'ASUS ROG Swift 27', 'Monitor 27 OLED 240Hz', 'Disponible'),
('LGGREIN27-07', 2, 'LG UltraGear 27GR95QE', 'Monitor gaming OLED 240Hz', 'Disponible'),
('SAMPODG7-08', 2, 'Samsung Odyssey G7', 'Monitor curvo 32 240Hz', 'Disponible'),
('HYPERXCLD3-09', 2, 'HyperX Cloud III Wireless', 'Audifonos gaming comodidad', 'Disponible'),
('SHUEMV7-10', 2, 'Shure MV7', 'Microfono USB para streaming', 'Disponible'),
('HYPERQUAD-11', 2, 'HyperX QuadCast S', 'Microfono condensador USB RGB', 'Disponible'),
('ELGATOWAVE-12', 2, 'Elgato Wave:3', 'Microfono digital premium', 'Disponible'),
('CORSAIRMM800-13', 2, 'Corsair MM800 Polaris', 'Mousepad rigido RGB', 'Disponible'),
('STEELGIGXL-14', 2, 'SteelSeries QcK Heavy XL', 'Mousepad grande de tela', 'Disponible'),
('LOGG923-15', 2, 'Logitech G923', 'Volante y pedales force feedback', 'Disponible'),
('ELGATOSTREAM-16', 2, 'Elgato Stream Deck MK.2', 'Controlador de transmision 15 teclas', 'Disponible'),
('XBOXWIRELESS-17', 2, 'Xbox Wireless Controller', 'Mando inalambrico PC y consola', 'Disponible'),
('DUALSENSEED-18', 2, 'Sony DualSense Edge', 'Mando inalambrico pro PS5', 'Disponible'),
('ASTROA50X-19', 2, 'Astro A50 X', 'Base y audifonos gaming premium', 'Disponible'),
('RAZERKRAKVO-20', 2, 'Razer Kraken V3 Pro', 'Audifonos inalambricos hapticos', 'Disponible'),

-- 3. Consolas de Videojuegos
('PS5SLIM1TB-01', 3, 'PlayStation 5 Slim', 'Consola version estandar 1TB', 'Disponible'),
('PS5PRO2TB-02', 3, 'PlayStation 5 Pro', 'Consola de alta potencia 2TB', 'Disponible'),
('XBOXSERX1TB-03', 3, 'Xbox Series X', 'Consola 1TB Carbon Black', 'Disponible'),
('XBOXSERIES-04', 3, 'Xbox Series S', 'Consola digital compacta 512GB', 'Disponible'),
('NINTENDOLED-05', 3, 'Nintendo Switch OLED', 'Consola portatil pantalla OLED', 'Disponible'),
('NINTENDOLIT-06', 3, 'Nintendo Switch Lite', 'Consola portatil edicion colores', 'Disponible'),
('STEAMDECK512-07', 3, 'Steam Deck OLED 512GB', 'PC consola portatil Valve', 'Disponible'),
('ROGALLYX-08', 3, 'ASUS ROG Ally X', 'Consola portatil Windows 1TB', 'Disponible'),
('LENOVOGO-09', 3, 'Lenovo Legion Go', 'Consola portatil con controles', 'Disponible'),
('PSVR2HEAD-10', 3, 'PlayStation VR2', 'Gafas de realidad virtual para PS5', 'Disponible'),
('METASTQUEST3-11', 3, 'Meta Quest 3 512GB', 'Gafas RV mixta independiente', 'Disponible'),
('RETROANBERNI-12', 3, 'Anbernic RG35XX Plus', 'Consola retro portatil', 'Disponible'),
('RETROPOCH-13', 3, 'Analogue Pocket', 'Consola portatil retro premium', 'Disponible'),
('PS5COVERS-14', 3, 'PS5 Cover Midnight Black', 'Tapas intercambiables para PS5', 'Disponible'),
('XBOXCONTEX-15', 3, 'Xbox Elite Series 2', 'Mando inalambrico profesional', 'Disponible'),
('CHARGSTATPS5-16', 3, 'Base de Carga DualSense', 'Cargador oficial mandos PS5', 'Disponible'),
('NINTENDOPRO-17', 3, 'Nintendo Switch Pro Controller', 'Mando oficial inalambrico', 'Disponible'),
('PORTABLEDOCK-18', 3, 'Dock Portatil Switch', 'Adaptador de video para Switch', 'Disponible'),
('RAZERKISSV3-19', 3, 'Razer Kitsune', 'Control arcade leverless para PS5', 'Disponible'),
('RETROMIYOO-20', 3, 'Miyoo Mini Plus', 'Consola retro compacta', 'Disponible'),

-- 4. Networking
('ASUSRTBE96-01', 4, 'ASUS RT-BE96U', 'Router Wi-Fi 7 tribanda gaming', 'Disponible'),
('TPLINKBE800-02', 4, 'TP-Link Archer BE800', 'Router Wi-Fi 7 BE19000', 'Disponible'),
('ASUSROGGT10-03', 4, 'ASUS ROG Rapture GT-AXE16000', 'Router gaming WiFi 6E', 'Disponible'),
('NETGEARNIR-04', 4, 'Netgear Nighthawk RS700', 'Router WiFi 7 de alta velocidad', 'Disponible'),
('TPLINKMESH-05', 4, 'TP-Link Deco BE85 Mesh', 'Sistema WiFi 7 malla 3 pack', 'Disponible'),
('EEROPRO7-06', 4, 'Eero Max 7 Mesh', 'Sistema WiFi 7 mallado', 'Disponible'),
('TPLSG1024-07', 4, 'TP-Link SG1024', 'Switch de red 24 puertos Gigabit', 'Disponible'),
('CISCOCAT296-08', 4, 'Cisco Catalyst 1000', 'Switch gestionable empresarial', 'Disponible'),
('NETGEARSW8-09', 4, 'Netgear ProSafe 8-Port', 'Switch Gigabit de escritorio', 'Disponible'),
('ASUSXGPCIE-10', 4, 'ASUS PCE-BE92BT', 'Tarjeta de red PCIe WiFi 7', 'Disponible'),
('TPWIFIUSB-11', 4, 'TP-Link Archer T3U Plus', 'Adaptador USB inalambrico AC1300', 'Disponible'),
('CABLECAT6A-12', 4, 'Cable Cat 6A UTP 30m', 'Bobina de cable de red blindado', 'Disponible'),
('CABLECAT8-13', 4, 'Cable Ethernet Cat 8 5m', 'Cable de red plano alta velocidad', 'Disponible'),
('POWERLINEKIT-14', 4, 'TP-Link TL-PA7017 KIT', 'Adaptador Powerline Gigabit AV1000', 'Disponible'),
('UBNTUAPU6-15', 4, 'Ubiquiti UniFi U6 Pro', 'Punto de acceso WiFi 6 empresarial', 'Disponible'),
('UBNTUISW8-16', 4, 'Ubiquiti Switch Lite 8', 'Switch PoE+ gestionable', 'Disponible'),
('MIKROTIKROU-17', 4, 'MikroTik hEX S', 'Router Gigabit con puerto SFP', 'Disponible'),
('SYNOLOGYNET-18', 4, 'Synology BeeStation 4TB', 'Almacenamiento en red personal', 'Disponible'),
('QNAPNAS2BAY-19', 4, 'QNAP TS-233 NAS', 'Servidor de red 2 bahias', 'Disponible'),
('MODEMCABLE-20', 4, 'ARRIS Surfboard S33', 'Modem cable DOCSIS 3.1', 'Disponible');

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

-- Bienes donados por patrocinadores
INSERT INTO BienesDonados
(id_patrocinador, numero_serie)
VALUES
-- ASUS
(1, 'ASUSROGGT10-03'),
(1, 'ASUSROGPG-06'),
(1, 'ASUSRTBE96-01'),
(1, 'ASUSXGPCIE-10'),

-- Razer
(2, 'RAZERBLK4-02'),
(2, 'RAZERKRAKVO-20'),
(2, 'RAZERVIPER-05'),

-- Logitech G
(5, 'LOGG502X-04'),
(5, 'LOGG923-15'),
(5, 'LOGGPROX2-01'),

-- NVIDIA
(6, 'RTX409-01'),
(6, 'RTX407T-02'),

-- AMD
(7, 'RX7800XT-04'),
(7, 'RX7900X-03'),

-- Corsair
(9, 'CORSAIRMM800-13'),
(9, 'RAM32GB60-12'),

-- HyperX
(10, 'HYPERQUAD-11'),
(10, 'HYPERXCLD3-09'),

-- Elgato
(13, 'ELGATOSTREAM-16'),
(13, 'ELGATOWAVE-12');