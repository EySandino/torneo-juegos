-- Permisos que cada rol tiene
INSERT INTO RolPermiso (id_rol, id_permiso)
VALUES

-- 1. Director general (todos los permisos)
(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (1,7),
(1,8), (1,9), (1,10), (1,11), (1,12), (1,13), (1,14),
(1,15), (1,16), (1,17), (1,18), (1,19), (1,20), (1,21),
(1,22), (1,23), (1,24), (1,25), (1,26), (1,27), (1,28),
(1,29), (1,30), (1,31), (1,32),

-- 2. Gerente de operaciones
(2,4), (2,5), (2,6), (2,7),
(2,8), (2,9), (2,10), (2,11),
(2,12), (2,13), (2,14),
(2,19), (2,20), (2,21), (2,22),
(2,23), (2,24), (2,26), (2,27),

-- 3. Gerente financiero
(3,23), (3,24), (3,25), (3,26), (3,27),

-- 4. Asistente administrativo
(4,5), (4,9), (4,13), (4,20), (4,26),

-- 5. Recursos humanos
(5,1), (5,26),

-- 6. Coordinador de torneos
(6,4), (6,5), (6,6),
(6,8), (6,9), (6,10),
(6,12), (6,13), (6,14),
(6,19), (6,20), (6,21),

-- 7. Arbitro
(7,5), (7,12), (7,13),

-- 8. Administrador de competicion
(8,4), (8,5), (8,6),
(8,8), (8,9), (8,10), (8,11),
(8,12), (8,13), (8,14),
(8,26), (8,27),

-- 9. Coordinador de participantes
(9,5), (9,8), (9,9), (9,10),

-- 10. Coordinador de eventos
(10,4), (10,5), (10,6),
(10,13), (10,15), (10,16),
(10,19), (10,20), (10,21),

-- 11. Comentarista
(11, 2),


-- 12. Administrador de sistemas
(12,1), (12,2), (12,3),
(12,30), (12,31), (12,32),

-- 13. Desarrollador de software
(13,30), (13,32),

-- 14. Tecnico de soporte
(14,30), (14,31),

-- 15. Administrador de redes
(15,30), (15,32),

-- 16. Especialista en streaming
(16,5), (16,13), (16,16), (16,30),

-- 17. Coordinador logistico
(17,15), (17,16), (17,17),
(17,19), (17,20), (17,21),

-- 18. Encargado de instalaciones
(18,19), (18,20), (18,21), (18,22),

-- 19. Tecnico audiovisual
(19,15), (19,16), (19,17),

-- 20. Tecnico de montaje
(20,16), (20,17),

-- 21. Encargado de inventario
(21,15), (21,16), (21,17), (21,18),

-- 22. Gerente de marketing
(22,23), (22,26), (22,27), (22,28), (22,29),

-- 23. Diseñador grafico
(23,29),

-- 24. Community manager
(24,28), (24,29),

-- 25. Ejecutivo comercial
(25,23), (25,26), (25,28), (25,29),

-- 26. Relaciones publicas
(26,5), (26,9), (26,26), (26,28), (26,29);