/* 1 Obtener la cantidad de películas por género*/
SELECT genres, 
COUNT (*) as count_by_genre
FROM movies_metadata,
GROUP BY genres;


--2 Encontrar la película con mayor recaudación
select *,
from movies_metadata mm ,
ORDER BY revenue DESC,
LIMIT 1;

--3 Crear una consulta SQL que cuente el número de películas para adultos
select count (adult)
from movies_metadata
where adult = true ;



-- 4 Calcular la duración promedio de las películas
select avg (runtime)
from movies_metadata;

-- 5  Listar películas con una puntuación de audiencia específica o superior
SELECT title, 
vote_average 
FROM movies_metadata 
WHERE vote_average >= 8.5
ORDER BY vote_average DESC;


-- 6  Contar la cantidad de películas por idioma original
SELECT COUNT(*) AS en_language_count
FROM movies_metadata
WHERE original_language = 'en';