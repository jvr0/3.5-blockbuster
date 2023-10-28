-- En este script lanzamos algunas queries básicas para poner a prueba nuestra estructura de datos --

-- Actores que hayan particido en la película con el film_id
select * 
from actor_film af
where film_id = 6;

-- películas en las que haya participado el actor con el actor_id
SELECT actor_id, title 
FROM actor_film af 
left join film f on af.film_id = f.film_id 
where actor_id = 160;

-- registros de los alquileres que hayan sido devueltos en los últimos 10 días de mayo
SELECT * 
from rental r
where return_month = 5 and return_day >= 20;

-- nombre de las películas que se encuentran disponibles en el inventario de la tienda 2
select title, inventory_id, store_id
from inventory i 
left join film f on i.film_id = f.film_id
where store_id = 2;