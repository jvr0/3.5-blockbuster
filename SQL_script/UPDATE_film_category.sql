-- Inserción de la columna category_id en la tabla film

-- creación de la nueva columna --
ALTER TABLE film
ADD category_id INT;

-- se actualiza la columna category_id de film con el valor de old_HDD donde coincidan los títulos de ambas tablas --
-- Esta query saca nulos debido a que algunos títulos de la tabla film no se encuentran en old_HDD --

UPDATE film f
SET f.category_id = (
    SELECT MAX(o.category_id)
    FROM old_HDD o
    WHERE o.title = f.title
);
