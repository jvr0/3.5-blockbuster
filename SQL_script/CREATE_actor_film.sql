-- Creación de tabla actor_film
-- tabla intermedia para relacionar actores con películas y poder eliminar old_HDD

ALTER TABLE actor
ADD INDEX idx_actor_id (actor_id);

ALTER TABLE film
ADD INDEX idx_film_id (film_id);

-- Creación tabla actor_film

CREATE TABLE actor_film (
    actor_id INT,
    film_id INT,
    PRIMARY KEY (actor_id, film_id),
    FOREIGN KEY (actor_id) REFERENCES actor(actor_id),
    FOREIGN KEY (film_id) REFERENCES film(film_id)
);

-- Inserción de datos en la tabla actor_film

INSERT INTO actor_film (actor_id, film_id)
SELECT a.actor_id, f.film_id
FROM actor a
JOIN old_HDD oh ON a.first_name = oh.first_name AND a.last_name = oh.last_name
JOIN film f ON f.title = oh.title;
