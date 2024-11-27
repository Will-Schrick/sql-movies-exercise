/* 1 Obtener la cantidad de películas por género*/
SELECT genres, 
COUNT (*) as count_by_genre
FROM movies_metadata,
GROUP BY genres;


--2 Encontrar la película con mayor recaudación
select *
from movies_metadata mm 
ORDER BY revenue DESC
LIMIT 1;

--3 Crear una consulta SQL que cuente el número de películas para adultos
