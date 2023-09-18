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
