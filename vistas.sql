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


 ## Creo vista que nos muestra Vista de directores en series
	CREATE VIEW VistaSeriesDirectores AS 
    SELECT 
    S.id_serie,
    S.nombre AS nombre_serie,
    S.descripcion,
    S.episodios,
    D.nombre AS nombre_director
    FROM
    serie S
    JOIN  director D ON S.id_director = D.id_director;
    
