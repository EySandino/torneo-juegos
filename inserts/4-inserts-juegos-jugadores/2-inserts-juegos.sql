INSERT INTO CategoriaJuegos (nombre)
VALUES
('Lucha'),
('FPS'),
('MOBA'),
('Battle Royale'),
('Deportes'),
('Carreras'),
('Estrategia'),
('MMORPG'),
('RTS');

INSERT INTO Videojuegos (id_juego, id_categoria, nombre, modalidad)
VALUES
-- Lucha
('SF6', 1, 'Street Fighter 6', 'Individual'),
('TK8', 1, 'Tekken 8', 'Individual'),
('MK1', 1, 'Mortal Kombat 1', 'Individual'),
('GGST', 1, 'Guilty Gear Strive', 'Individual'),

-- FPS
('CS2', 2, 'Counter-Strike 2', 'Por Equipos'),
('VAL', 2, 'Valorant', 'Por Equipos'),
('OW2', 2, 'Overwatch 2', 'Por Equipos'),
('R6S', 2, 	'Rainbow Six Siege', 'Por Equipos'),
('CDL', 2, 'Call of Duty League', 'Por Equipos'),

-- MOBA
('LOL', 3, 'League of Legends', 'Por Equipos'),
('DOTA2', 3, 'Dota 2', 'Por Equipos'),
('SMITE2', 3, 'Smite 2', 'Por Equipos'),

-- Battle Royale
('FORT', 4, 'Fortnite', 'Individual'),
('PUBG', 4, 'PUBG', 'Individual'),
('APEX', 4, 'Apex Legends', 'Por Equipos'),

-- Deportes
('FC26', 5, 'EA Sports FC 26', 'Individual'),
('NBA2K', 5, 'NBA 2K26', 'Individual'),
('EFOOT', 5, 'eFootball', 'Individual'),
('RL', 5, 'Rocket League', 'Individual'),

-- Carreras
('FM8', 6, 'Forza Motorsport', 'Individual'),
('GT7', 6, 'Gran Turismo 7', 'Individual'),

-- Estrategia
('CIV6', 7, 'Civilization VI', 'Individual'),
('COC', 7, 'Clash of Clans', 'Por Equipos'),
('CR', 7, 'Clash Royale', 'Individual'),
('CHESS', 7, 'Ajedrez', 'Individual'),

-- MMORPG
('FFXIV', 8, 'Final Fantasy XIV', 'Por Equipos'),

-- RTS
('SC2', 9, 'StarCraft II', 'Individual'),
('AOE4', 9, 'Age of Empires IV', 'Individual');