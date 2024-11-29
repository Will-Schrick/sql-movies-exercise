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


-- 6 Contar la cantidad de películas por idioma original
SELECT original_language, 
COUNT(original_language) as language_count
FROM movies_metadata 
GROUP BY original_language
ORDER BY language_count DESC;

-- 7 Encontrar todas las películas lanzadas en un año específico
SELECT original_title, release_date 
FROM movies_metadata,
WHERE release_date LIKE '2001%'

--8 Seleccionar películas que aún no han sido lanzadas (según la columna 'status')
SELECT title, status
FROM movies_metadata 
where status != 'Released';


-- 9 Listar las películas que pertenecen a una colección

SELECT original_title, belongs_to_collection
FROM movies_metadata 
WHERE belongs_to_collection IS NOT null and belongs_to_collection like '%collection%'

-- 10 Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)
SELECT original_title, 
revenue, 
budget, 
(revenue - budget) AS profit
from movies_metadata
WHERE revenue IS NOT NULL AND budget IS NOT null  AND budget > 0; 