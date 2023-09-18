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
