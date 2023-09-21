## -- CREO TABLA ACTORES -- ## 
CREATE TABLE `actores` (
  `id_actor` int NOT NULL PRIMARY KEY,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL
);

  
  ## -- CREO TABLA DIRECTOR -- #
  CREATE TABLE `director` (
  `id_director` int NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`id_director`)
);

##  -- CREO TABLA PRODUCTOR -- #
CREATE TABLE `productor` (
  `id_productor` int NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_productor`)
);


## -- CREO TABLA PELICULAS -- #
CREATE TABLE `pelicula` (
  `id_pelicula` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `año` date DEFAULT NULL,
  `descripcion` text,
  `genero` varchar(255) DEFAULT NULL,
  `idioma` varchar(30) DEFAULT NULL,
  `id_actor` int DEFAULT NULL,
  `id_productor` int DEFAULT NULL,
  `id_director` int DEFAULT NULL,
  PRIMARY KEY (`id_pelicula`),
  FOREIGN KEY (`id_actor`) REFERENCES `actores` (`id_actor`),
  FOREIGN KEY (`id_director`) REFERENCES `director` (`id_director`),
  FOREIGN KEY (`id_productor`) REFERENCES `productor` (`id_productor`)
  );
  
  ## -- CREO TABLA SERIES -- #
  CREATE TABLE `serie` (
  `id_serie` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `genero` varchar(255) DEFAULT NULL,
  `idioma` varchar(30) DEFAULT NULL,
  `episodios` int DEFAULT NULL,
  `id_actor` int DEFAULT NULL,
  `id_productor` int DEFAULT NULL,
  `id_director` int DEFAULT NULL,
  PRIMARY KEY (`id_serie`),
  FOREIGN KEY (`id_actor`) REFERENCES `actores` (`id_actor`),
  FOREIGN KEY (`id_director`) REFERENCES `director` (`id_director`),
  FOREIGN KEY (`id_productor`) REFERENCES `productor` (`id_productor`)
  );

## -- CREO TABLA ACTUA PELICULAS --#
CREATE TABLE `actua_peliculas` (
 `id_actua` int NOT NULL AUTO_INCREMENT,
  `id_actor` int DEFAULT NULL,
  `nombre_actor`varchar(50),
  `id_pelicula` int DEFAULT NULL,
  `nombre_pelicula` varchar(50),
  PRIMARY KEY (`id_actua`),
  KEY `id_actor` (`id_actor`),
  KEY `id_pelicula` (`id_pelicula`),
  CONSTRAINT `actua_ibfk_1` FOREIGN KEY (`id_actor`) REFERENCES `actores` (`id_actor`),
  CONSTRAINT `actua_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`)
);

  
   ## -- Creo tabla actua - series relacionando con Actores y Series -- ##
  CREATE TABLE `actua_series` (
  `id_actua` int NOT NULL AUTO_INCREMENT,
  `id_actor` int DEFAULT NULL,
  `nombre_actor` varchar(50) DEFAULT NULL,
  `id_serie` int DEFAULT NULL,
  `nombre_serie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_actua`),
  FOREIGN KEY (`id_actor`) REFERENCES `actores` (`id_actor`),
  FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`)
);

CREATE TABLE `genero` (
  `id_genero` int NOT NULL,
  `genero` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
);


## Cargamos algunos datos a las tablas antes mencionadas
INSERT INTO actores (id_actor, nombre, apellido, edad)
VALUES 
(1,'Caitriona','Balfe', 43),(2,'Sam','Heughan', 43),(3,'Graham','McTavish', 62),(4,'Tobias','Menzies', 49),(5,'Sophie','Skelton', 29),
(6,'Richard','Rankin', 40),(7,'Claire','Danes', 44),(8,'Damian','Lewis', 52),(9,'Mandy','Patinkin', 70),(10,'Rupert','Friend', 41),
(11,'Morena','Baccarin', 44),(12,'Jim','Parsons', 50),(13,'Kaley','Cuoco', 37),(14,'Johnny','Galecki', 48),(15,'Simon', 'Helberg', 42),
(16,'Mayim', 'Bialik', 47),(17,'Kunal', 'Nayyar', 42),(18,'Melissa', 'Rauch', 43),(19,'Jennifer','Aniston', 54),(20,'Courteney','Cox', 59),
(21,'Lisa', 'Kudrow', 60),(22, 'Matt', 'LeBlanc', 56),(23,'Matthew', 'Perry', 53),(24, 'David', 'Schwimmer',56),(25,'Kit', 'Harington', 36),
(26,'Sophie', 'Turner', 27),(27,'Lena', 'Headey', 49),(28, 'Natalie', 'Dormer', 41),(29,'Peter', 'Dinklage', 54),(30, 'Jason', 'Momoa',44),
(31, 'Nikolaj', 'Coster-Waldau', 53),(32,'Adam','Sandler',56 ),(33,'Kevin',	'James',58),(34,'Salma','Hayek',56),(35,'Rob','	Schneider',	59),
(36,'Chris','Rock',	58),(37,'Owen',	'Wilson',54),(38,'Eric','Dane', 50),(39,'Haley','Bennett',35),(40,'Kathleen','Turner',69) ;

#Director 
INSERT INTO director (id_director,nombre, apellido, edad)
VALUES (1,'Chuck', 'Lorre', 70),
(2,'Ronald D.','Moore', 59),
(3,'Gideon', 'Raff', 70),
(4,'Marta', 'Kauffman', 66),
(5,'D. B.','Weiss',52),
(6,'Dennis', 'Dugan',77),
(7,'Kyle','Newacheck',39),
(8,'David','Frankel',64),
(9,	'Darren','Star',	62),
(10	,' Juan José','Campanella',64),
(11,'Ariel','Winograd',	46);


#Productor
INSERT INTO productor (id_productor,nombre, apellido)
VALUES (1,'	Steven', 'Molaro'),
(2,'David', 'Brown'),
(3,'Howard', 'Gordon'),
(4,'Kevin S.', 'Bright'),
(5,'David','Benioff'),
(6,'Jack', 'Giarraputo'),
(8,'Jack', 'Giarraputo'),
(9,'Alexa',	'Junge'),
(10,'Haddock','Films'),
(11,'MarVista','Entertainment');

## Realizo carga de datos en la tabla Peliculas, con su ID, nombre, descripcion de la misma, idioma, episodios, ademas se relaciona mediante FK con id_actor, id_productor e id_director

INSERT INTO pelicula (id_pelicula, nombre, año, descripcion, genero, idioma, id_actor, id_productor, id_director)  
VALUES 
      (1, 'Una esposa de mentira','2011-04-21', 'El cirujano Danny decide contratar a su ayudante Katherine, 
una madre soltera con hijos, para que finjan ser su familia. 
Su intención es demostrarle a Palmer que su amor por ella es tan grande que está a punto de divorciarse de su mujer.','Comedia','Ingles',19 ,6 ,6),
(2, 'Son Como Niños','2010-07-22', 'Un grupo de amigos y excompañeros descubren que envejecer no siempre significa madurar cuando se reúnen para honrar
 la memoria de su entrenador de baloncesto.','Comedia','Ingles',32 ,6, 6 ),
(3, 'Son Como Niños 2','2013-10-19', 'Tres años después de la reunión que volvió a unirlo a sus amigos de la infancia, 
Lenny Feder regresa junto a su familia a su pueblo natal para poder estar más cerca de sus amigos..','Comedia','Ingles',32 ,6, 6 ),
  (4, 'Misterio a Bordo','2019-06-14', 'Un policía de Nueva York y su esposa se van de vacaciones a Europa para revitalizar
 el amor en su matrimonio. Un encuentro casual los lleva a ser acusados del asesinato de un billonario anciano..','Comedia','Ingles',32 ,8, 8 ),
(5, 'Marley y yo','2008-12-5', 'es una película estadounidense dirigida por David Frankel y protagonizada por Owen Wilson y Jennifer Aniston.
 Perteneciente al género de comedia romántica y está basada en la novela autobiográfica del periodista John Grogan, Marley & Me.','Comedia Romántica',
 'Ingles', 19,8,8),
 (6, 'Misterio a Bordo','2019-06-14', 'Un policía de Nueva York y su esposa se van de vacaciones a Europa para revitalizar
 el amor en su matrimonio. Un encuentro casual los lleva a ser acusados del asesinato de un billonario anciano..','Comedia','Ingles',19 ,8, 7 ),
      (7, 'Son Como Niños 2','2013-10-19', 'Tres años después de la reunión que volvió a unirlo a sus amigos de la infancia, Lenny Feder regresa junto a su familia 
a su pueblo natal para poder estar más cerca de sus amigos..','Comedia','Ingles',36 ,6, 6 ),
(8, 'Marley y yo','2008-12-5', 'es una película estadounidense dirigida por David Frankel y protagonizada por Owen Wilson y Jennifer Aniston.
 Perteneciente al género de comedia romántica y está basada en la novela autobiográfica del periodista John Grogan, Marley & Me.','Comedia Romántica',
 'Ingles', 40,8,8);


## Realizo carga de datos en series, con su ID, nombre, descripcion de la misma, idioma, episodios, ademas se relaciona mediante FK con id_actor, id_productor e id_director

INSERT INTO serie (id_serie, nombre, descripcion, genero, idioma, episodios, id_actor, id_productor, id_director)  
VALUES
    (1, 'Game of Thrones', 'Es la descripción de dos familias poderosas, reyes y reinas, caballeros y renegados, hombres falsos y honestos, 
haciendo parte de un juego mortal por el control de los Siete Reinados de Westeros y por sentarse en el trono más alto. 
Martin es el co productor ejecutivo y uno de los escritores de la serie que fue filmada en el Norte de Irlanda y Malta.', 
'drama y fantasía medieval', 'Ingles', 73, 25, 5, 5),   
   (2, 'Homeland', 'Cuando el sargento del Cuerpo de Marines Nicholas Brody, que estuvo desaparecido en acción,
 regresa con una bienvenida de héroe a su tierra natal, luego de pasar ocho años cautivo, preso por el enemigo en Irak; la agente de la CIA,
 Carrie Mathison, una mujer brillante pero volátil, no está convencida de su historia. Ella cree que Brody trabaja para al-Qaeda y
 puede estar conectado con un plan terrorista que se va a llevar a cabo en suelo estadounidense. Ella termina jugando al gato y 
 al ratón con el sargento, poniendo en riesgo la seguridad nacional de EE. UU. Los métodos de investigación de Carrie la sitúan 
 en una posición complicada con Saul Berenson, su mentor de la CIA de muchos años, quien se ha arriesgado en varias ocasiones por ella,
 pero él podría ser alienado por su apoyo hacia ella y por la investigación que está realizando..','Suspense dramático','Ingles', 96, 8, 3, 3),
     (3, 'Friends', 'Tres hombres y tres mujeres jóvenes son mejores amigos y viven en el mismo conjunto de apartamentos.
 Ellos enfrentan la vida y el amor en la ciudad de Nueva York y se involucran en los asuntos personales de los demás, 
 donde incluso a veces intercambian novios o novias, lo que algunas veces genera situaciones que las personas comunes
 quizás nunca experimentan, especialmente durante las rupturas.', 'Comedia', 'Ingles', 236, 20, 4, 4),
    (4, 'The Big Bang Theory', 'Leonard y Sheldon son dos cerebros privilegiados que pueden ser capaces de decirle
   a todo el mundo más de lo que quiere saber sobre la física cuántica, pero que no tienen ni la menor idea de cómo relacionarse socialmente, 
   sobre todo cuando se trata de mujeres. Sin embargo, la llegada de una nueva vecina 
  llamada Penny al edificio altera la vida sentimental de Leonard y las obsesiones de Sheldon.', 'Comedia', 'Ingles', 270, 15, 1, 1),
	(5, 'Outlander', 'Luego de servir como enfermera del Ejército británico en la Segunda Guerra Mundial, 
  Claire Randall disfruta de una segunda luna de miel en Escocia con su esposo, pero de repente es transportada a 1743,
   donde se ven amenazadas su libertad y su vida.','Novela Homónima', 'Ingles - Escoces', 106, 1, 2, 2);


##Realizo Carga en actua peliculas, esta es una tabla que relaciona las peliculas y los actores. 
##En ella se vana  detallar los actores que trabajan en determinadas series.
INSERT INTO actua_series (id_actua, id_actor, nombre_actor, id_serie, nombre_serie)
VALUES (1, 1,'Caitriona Balfe', 5,'Outlander'),(2, 2,'Sam Heughan', 5,'Outlander'),(3, 3 ,'Graham McTavish', 5,'Outlander'),
(4, 4 ,'Tobias Menzies', 5,'Outlander'),(5, 5 ,'Sophie Skelton', 5,'Outlander'),(6,6 ,'Richard Rankin', 5,'Outlander'),
(7, 7,'Claire Danes', 2, 'Homeland'),(8, 8,'Damian Lewis', 2, 'Homeland'),(9, 9,'Mandy Patinkin', 2, 'Homeland'),(10, 10,'Rupert Friend', 2, 'Homeland'),
(11, 11,'Morena Baccarin', 2, 'Homeland'),
(12, 12,'Jim Parson', 4, 'The Big Bang Theory'),(13, 13,'Kaley Cuoco', 4, 'The Big Bang Theory'),(14, 14,'Johnny Galecki', 4, 'The Big Bang Theory'),
(15, 15,'Simon Helberg', 4, 'The Big Bang Theory'),(16, 16,'Mayim Bialik', 4, 'The Big Bang Theory'),(17, 17,'Kunal Nayyar', 4, 'The Big Bang Theory'),
(18, 18,'Melissa Rauch', 4, 'The Big Bang Theory'),
(19, 19,'Jennifer Aniston', 3, 'Friends'),(20, 20,'Courteney Cox',3, 'Friends'),(21, 21,'Lisa Kudrow', 3, 'Friends'),
(22, 22,'Matt LeBlanc',3, 'Friends'),(23, 23,'Matthew Perry', 3, 'Friends'),(24, 24,'Matthew Perry',3, 'Friends'),
(25, 25,'Kit Harington',1, 'Game of Thrones'),(26, 26,'Sophie Turner',1, 'Game of Thrones'),(27, 27,'Lena Headey',1, 'Game of Thrones'),
(28, 28,'Natalie Dormer',1, 'Game of Thrones'),(29, 29,'Peter Dinklage',1, 'Game of Thrones'),(30, 30,'Jason Momoa',1, 'Game of Thrones'),(31, 31,'Nikolaj Coster-Waldau',1, 'Game of Thrones');


##Realizo Carga en actua peliculas, esta es una tabla que relaciona las peliculas y los actores. 
##En ella se vana  detallar los actores que trabajan en determinadas series.
INSERT INTO actua_peliculas (id_actua, id_actor, nombre_actor, id_pelicula, nombre_pelicula)
VALUE (1,19 ,'Jennifer Aniston', 1,'Una Esposa De Mentira'),(2,32 ,'Adam Sandler', 1,'Una Esposa De Mentira'),
	(3 ,34 ,'Kevin James',2 , 'Son Como Niños' ),(4 ,34 ,'Kevin James',3 , 'Son Como Niños 2'),
    (5 ,34 ,'Salma Hayek',2 , 'Son Como Niños' ),(6 ,34 ,'Salma Hayek',3 , 'Son Como Niños 2'),
    (7 ,35 ,'Rob Schneider',2 , 'Son Como Niños' ),(8 ,35 ,'Rob Schneider',3 , 'Son Como Niños 2'),
    (9 ,34 ,'Salma Hayek',2 , 'Son Como Niños' ),(10 ,34 ,'Salma Hayek',3 , 'Son Como Niños 2'),
    (11 ,35 ,' Rob Schneider',2 , 'Son Como Niños' ),(12 ,35 ,'Rob Schneider', 3 , 'Son Como Niños 2'),
    (13 ,36 ,'Chris Rock',2, 'Son Como Niños' ),(14 ,36 ,'Chris Rock',3, 'Son Como Niños 2'),
    (15 ,37 ,'Owen Wilson',5 , 'Marley Y Yo' ),(16 ,19 ,'Jennifer Aniston', 5 , 'Marley Y Yo'),
    (17 ,32 ,'Adam Sandler',4 , 'Misterio A Bordo' ),(19 ,19 ,'Jennifer Aniston',4 , 'Misterio A Bordo');


## -- CREO VISTAS -- ##
##Películas en las que trabajó un actor específico
CREATE VIEW Vista_PeliculasDeActor AS
SELECT
    a.nombre AS Nombre_Actor,
    p.nombre  AS Pelicula_Trabajada
FROM actores a
INNER JOIN actua_peliculas ap ON a.id_actor = ap.id_actor
INNER JOIN pelicula p ON ap.id_pelicula = p.id_pelicula;

SELECT * FROM Vista_PeliculasDeActor;

##Actores que trabajaron en una serie en particular
CREATE VIEW Vista_ActoresEnSerie AS
SELECT
    s.nombre AS serie,
    a.nombre AS Nombre_Actor
FROM serie s
INNER JOIN actua_series asr ON s.id_serie = asr.id_serie
INNER JOIN actores a ON asr.id_actor = a.id_actor;

SELECT * FROM Vista_ActoresEnSerie;


## Listado de actores que trabajaron en alguna serie 
CREATE VIEW Vista_ActoresEnAlgunaSerie AS
SELECT DISTINCT
    a.nombre AS Nombre_Actor,
    a.apellido AS Apellido_Actor
FROM actores a
INNER JOIN actua_series asr ON a.id_actor = asr.id_actor;
SELECT * FROM Vista_ActoresEnAlgunaSerie;

 ## Actores que trabajaron tanto en peliculas como series 
CREATE VIEW VistaDeActoresEnPeliculasYSeries AS
SELECT  a.nombre AS nombre,
		a.apellido,
		a.edad,
		'Película' AS tipo_produccion,
		p.id_pelicula AS id_produccion,
		p.nombre AS nombre_produccion,
		p.descripcion
FROM  actores a
JOIN    actua_peliculas AP ON a.id_actor = ap.id_actor
JOIN   pelicula P ON ap.id_pelicula = p.id_pelicula
UNION ALL
SELECT   a.nombre AS nombre_actor,
		a.apellido,
		a.edad,
		'Serie' AS tipo_produccion,
		s.id_serie AS id_produccion,
		s.nombre AS nombre_produccion,
		s.descripcion
FROM   actores a
JOIN   actua_series AS ase ON a.id_actor = ase.id_actor
JOIN   serie s ON ase.id_serie = s.id_serie;
        
        
## -- CREO FUNCIONES -- ## 
DELIMITER //

CREATE FUNCTION obtener_actores_en_serie(id_serie_param INT) RETURNS TEXT  
DETERMINISTIC
BEGIN
    DECLARE actor_list TEXT;
    
    SELECT GROUP_CONCAT(CONCAT(nombre, ' ', apellido)) INTO actor_list
    FROM actores
    WHERE id_actor IN (
        SELECT id_actor
        FROM actua_series
        WHERE id_serie = id_serie_param
    );
    
    RETURN actor_list;
END;
//
DELIMITER //

CREATE FUNCTION obtener_actuaciones_de_actor(id_actor_param INT) RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE actua TEXT;
    
    SELECT GROUP_CONCAT(DISTINCT
        CONCAT('Serie: ', s.nombre, ', Película: ', p.nombre) SEPARATOR '; ') INTO actua
    FROM actores a
    INNER JOIN actua act ON a.id_actor = act.id_actor
    INNER JOIN pelicula p ON act.id_pelicula = p.id_pelicula
    LEFT JOIN serie s ON p.id_serie = s.id_serie
    WHERE a.id_actor = id_actor_param;
    
    RETURN actua;
END;
//
DELIMITER ;

## -- CREO STORED EPROCEDURE

DELIMITER //
CREATE PROCEDURE ObtenerActor(IN nombreActor VARCHAR(50))
BEGIN
    SELECT p.nombre
    FROM pelicula AS p
    INNER JOIN actua_peliculas AS ap ON p.id_pelicula = ap.id_pelicula
    INNER JOIN actua_series AS s ON p.id_serie = s.id_serie
    INNER JOIN actores AS A ON ap.id_actor = a.id_actor
    WHERE a.nombre = nombreActor;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE ObtenerTrabajosActor(IN nombre VARCHAR(50))
BEGIN
    -- Obtener películas en las que el actor ha actuado
    SELECT p.nombre, 'Película' AS trabajo
    FROM pelicula AS p
    INNER JOIN actua_peliculas AS ap ON p.id_pelicula = ap.id_pelicula
    INNER JOIN actores AS a ON ap.id_actor = a.id_actor
    WHERE a.nombre = nombre
    
    UNION
    
    -- Obtener series en las que el actor ha actuado
    SELECT a.nombre, 'Serie' AS trabajo
    FROM serie AS s
    INNER JOIN actua_series AS ASer ON s.id_serie = ASer.id_serie
    INNER JOIN actores AS a ON ASer.id_actor = a.id_actor
    WHERE A.nombre = nombre;
END //
DELIMITER ;

call ObtenerTrabajosActor ('Jennifer');
call ObtenerTrabajosActor ('Adam');
select * from actores

DELIMITER //
CREATE PROCEDURE ObtenerTrabajos(IN nombreActor VARCHAR(255))
BEGIN
    -- Obtener películas y nombres de películas en las que el actor ha actuado
    SELECT p.nombre AS trabajo, 'Película' AS tipo_trabajo
    FROM pelicula AS p
    INNER JOIN actua_peliculas AS ap ON p.id_pelicula = ap.id_pelicula
    INNER JOIN actores AS a ON ap.id_actor = a.id_actor
    WHERE a.nombre = nombreActor
    
    UNION
    
    -- Obtener series y nombres de series en las que el actor ha actuado
    SELECT s.nombre AS trabajo, 'Serie' AS tipo_trabajo
    FROM serie AS s
    INNER JOIN actua_series AS ASer ON s.id_serie = ASer.id_serie
    INNER JOIN actores AS A ON ASer.id_actor = a.id_actor
    WHERE a.nombre = nombreActor;
END //
DELIMITER ;

call ObtenerTrabajos('Jennifer')

## -- CREO TRIGGERS -- ##
##La siguiente consigna era la creación de triggers, los triggers son un conjunto de sentencias o 
## programas almacenado en la DB creado para ejecutarse de forma automática, cuando uno o más eventos ocurren en la DB.

CREATE TABLE NEW_ACTOR(
id_actor INT PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50)
);

select * FROM new_actor;

CREATE TRIGGER `tr_add_new_actor`
AFTER INSERT ON `actores`
FOR EACH row
INSERT INTO `NEW_ACTOR`(id_actor, nombre, apellido) 
VALUES (NEW.id_actor, NEW.nombre, NEW.apellido);

INSERT INTO actores(id_actor, nombre, apellido,edad )
VALUES(41, 'Sarah Jessica','Parker', 58),
	(42, 'Kim','Cattrall', 67),
    (43, 'Cynthia','Nixon', 57),
    (44, 'Kristin','Davis', 58),
    (45, 'Chris','Noth', 68),
    (46, 'Willie','Garson', 57),
    (47, 'David','Eigenberg', 59);


CREATE TABLE NEW_SERIE(
id_serie INT PRIMARY KEY,
nombre VARCHAR(50),
descripcion text,
genero VARCHAR(25),
episodios INT,
id_actor int
);

CREATE TRIGGER `tr_add_new_serie`
AFTER INSERT ON `serie`
FOR EACH row
INSERT INTO `NEW_SERIE`(id_serie, nombre, descripcion, genero, episodios, id_actor) 
VALUES (NEW.id_serie, NEW.nombre, NEW.descripcion, NEW.genero, NEW.episodios,NEW.id_actor);

INSERT INTO serie (id_serie, nombre, descripcion, genero, idioma, episodios, id_actor, id_productor, id_director)  
VALUES (6, 'Sex And The City', 'Una columnista de sexo, Carrie Bradshaw, y sus tres amigas -- Samantha, Charlotte y Miranda --
 exploran el mundo de las citas de Manhattan, haciendo una crónica de los hábitos los neoyorquinos solteros.
 No es sorprendente que las mujeres tienen una serie de pretendientes durante el trayecto de la serie..', 'Comedia', 'Ingles', 94, 41, 9, 9);


## Creo transaccion
-- Iniciar una transacción
BEGIN;
-- Eliminar registros de la tabla "peliculas" donde el id de pelicula sea =  15;
DELETE FROM pelicula WHERE id_pelicula = 15;

-- Confirmar la transacción si estás seguro de los cambios
COMMIT;
##ROLLBACK;
## Ingreso de datos con transition 

-- Iniciar una transacción
BEGIN;
-- Insertar un nuevo actor
INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (48, 'Ricardo', 'Darin',66);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES(49, 'Guillermo', 'Francella',68);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (50, 'Soledad', 'Villamil',54);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (51, 'Javier', 'Godino',45);

##SAVEPOINT savepoint1;

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (52, 'Pablo', 'Rago',50);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (53, 'Carla', 'Quevedo',35);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (54, 'Mario', 'Alarcón',78);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (55, 'José Luis', 'Gioia',68);

SAVEPOINT savepoint2;

-- Confirmar la transacción
COMMIT;


        
## -- Creo Funciones 
  
DELIMITER //
CREATE FUNCTION obtener_actores_en_serie(id_serie_param INT) RETURNS TEXT  
DETERMINISTIC
BEGIN
    DECLARE actor_list TEXT;
        SELECT GROUP_CONCAT(CONCAT(nombre, ' ', apellido)) INTO actor_list
    FROM actores
    WHERE id_actor IN (
        SELECT id_actor
        FROM actua_series
        WHERE id_serie = id_serie_param
    );
    RETURN actor_list;
END;
//


DELIMITER //

CREATE FUNCTION obtener_actuaciones_de_actor(id_actor_param INT) RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE actua TEXT;
    
    SELECT GROUP_CONCAT(DISTINCT
        CONCAT('Serie: ', s.nombre, ', Película: ', p.nombre) SEPARATOR '; ') INTO actua
    FROM actores a
    INNER JOIN actua act ON a.id_actor = act.id_actor
    INNER JOIN pelicula p ON act.id_pelicula = p.id_pelicula
    LEFT JOIN serie s ON p.id_serie = s.id_serie
    WHERE a.id_actor = id_actor_param;
    
    RETURN actua;
END;
//

DELIMITER ;




USE MYSQL;
SHOW TABLES;
SELECT * FROM USER;

##Creacion de usuarios, colocacion de clave, modificacion de usuario y eliminacion.
CREATE USER ornella@localhost; ## Creo el usuario Ornella

CREATE USER cursoSQL@localhost; ## Creo el usuario cursoSQL sin constraseña

ALTER USER cursoSQL@localhost IDENTIFIED BY 'miPassword'; ## altero el usuario asignando una clave

CREATE USER sqlCruso@localhost IDENTIFIED BY 'miClave'; ##Creo el usuario sqlCruso

RENAME USER sqlCruso@localhost TO SqlCurso@localhost; ##modifico nombre del ususario

DROP USER ornella@localhost; ##elimino el usuario ornella

##Dando privilegios
SELECT * FROM mysql.user WHERE user LIKE 'SqlCurso';

SHOW GRANTS FOR SqlCurso@localhost;


		##Otorgo permiso de solo lectura en la tabla Peliculas. 
GRANT SELECT ON peliculas.* TO SqlCurso@localhost;
		
		
	##Otorgo permiso de lectura, insercion y modificacion de datos.. 
GRANT SELECT, INSERT ON series_peliculas.actores TO cursoSQL@localhost;
GRANT SELECT, UPDATE, INSERT ON series_peliculas.series TO cursoSQL@localhost;
