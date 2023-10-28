-- El siguiente script establece las foreign keys que nos permitirán movernos a través de la tabla --

-- relación film y category --

ALTER TABLE category
ADD INDEX idx_category_id (category_id);

ALTER TABLE film
ADD CONSTRAINT fk_film_category
FOREIGN KEY (category_id) REFERENCES category(category_id);

-- relación film y language --

ALTER TABLE film
ADD INDEX idx_language_id (language_id);

ALTER TABLE `language`
ADD INDEX idx_language_id (language_id);

ALTER TABLE film
ADD CONSTRAINT fk_film_language
FOREIGN KEY (language_id) REFERENCES language(language_id);

-- relación film y inventory --

ALTER TABLE film
ADD PRIMARY KEY (film_id);

ALTER TABLE inventory 
ADD CONSTRAINT fk_film_inventory
FOREIGN KEY (film_id) REFERENCES film(film_id);

-- relación inventory y rental --

ALTER TABLE inventory
ADD PRIMARY KEY (inventory_id);

ALTER TABLE rental
ADD CONSTRAINT fk_inventory_rental
FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id);
