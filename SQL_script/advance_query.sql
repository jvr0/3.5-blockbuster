-- Presentamos unas posibles búsquedas a las que es posible que tenga que enfrentarse el propietario del negocio --

-- Quiero el nombre de los actores que hayan participado en películas con la categoría "drama"
SELECT first_name, last_name, c.name
from film f
left join category c ON f.category_id = c.category_id 
left join actor_film af on af.film_id = f.film_id 
left join actor a on a.actor_id = af.actor_id 
where c.name = 'drama';

-- Las 5 películas más largas para recluirse el máximo tiempo posible en casa
SELECT title,`length`
FROM film f
ORDER BY `length` desc
LIMIT 5;

-- Las películas que hayan sido devueltas en los últimos 10 días de enero 
-- y tengan tanto escenas eliminadas como escenas tras las cámaras
SELECT title, rental_id, return_month, return_day, deleted_scenes
from film f
left join inventory i on i.film_id = f.film_id 
left join rental r on r.inventory_id = i.inventory_id 
where 
	return_month = 5
	and return_day >= 20
	and deleted_scenes = 1
	and behind_scenes = 1;

-- Tu empleado es un gran fan de la ciencia ficción y crees que ha decidido "Coger prestada" alguna película durante demasiado tiempo...
-- Busca los alquileres tramitados por el empleado número 2 para las películas con categoría de ciencia ficción
-- incluye el cliente al que se le ha alquilado la película y el tiempo de devolución
-- ordena los resultados para visualizar las duraciones más largas
SELECT r.staff_id, r.customer_id, f.rental_duration, c.name, f.title
from film f 
left join category c on c.category_id = f.category_id 
left join inventory i on i.film_id = f.film_id 
left join rental r on r.inventory_id = i.inventory_id 
where 
	r.staff_id = 2
	and c.name = 'Sci-Fi'
order by f.rental_duration desc;

-- Un cliente cree recordar que el nombre de su actor favorito de la infancia comenzaba por "chri", sin embargo no está seguro cómo seguía.
-- Esta exigiendo conocer el nombre de las películas que contengan actores cuyo nombre empieza por "chri" 
-- También recuerda que hace tiempo alquilo la película en nuestra tienda 1
-- Quiere revisar los títulos y encontrar la película que marco su infancia
-- Además esta algo nervioso y exige que le devuelvas una tabla con no más de dos columnas

SELECT a.first_name, f.title 
from film f 
INNER join actor_film af on af.film_id = f.film_id 
INNER join actor a on a.actor_id = af.actor_id 
INNER join category c on f.category_id = c.category_id 
INNER JOIN inventory i on i.film_id  = f.film_id 
where a.first_name like 'chri%'
	and i.store_id = 1;
	
