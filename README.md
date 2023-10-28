# FilmFinder

Descripción del encargo¡

vinculo y foto

**Índice**

1. [Limpieza de datos](#id1)
2. [Planteamiento de diagráma](#id2)
3. [Movimiento en la base de datos](#id3)
4. []()

<div id='id1' />

## 1. Limpieza de datos

Para la primera fase del encargo empezarémos explorando y limpiando los datos para su posterior utilización en la construcción de nuestra base de datos.

Durante la limpieza encontramos columnas sin valor para nuestro objetivo final, las cuales son eliminadas. También encontramos ciertas categorizaciones que modificamos para mayor profundidad. Es el caso de la columna 'special_features' en film.csv. Esta columna se ha dividido en cuatro nuevas columnas, las cuales han sido rellenadas con booleanos.

Al tratar el archivo rental.csv se ha utilizado una función para obtener un mayor acceso a los datos de fecha. De las dos columnas que contenían valores temporales se han creado tres nuevas columnas que contienen el año, mes y día correspondiente.

De la limpieza y exploración de los datos recabamos ciertas conclusiones útiles de cara a la construcción de la base de datos. Una de estas ideas es que, a pesar de que haya 1000 títulos categorizados, en almacen existen 1000 items que corresponden a 207 títulos y que estan distribuidos a lo largo de dos tiendas.

<div id='id2' />

## 2. Planteamiento de diagráma

A la hora de construir nuestra base de datos se plantea de forma que tenga la mayor utilidad posible para el cliente. Así es que partiremos de un nodo central 'rental', el cual contendrá la información del negocio. A raíz de esta columna podremos acceder al resto de la información del negocio. Nuestro diagráma final quedará de la siguiente manera:



Los dos tratamientos principales que hemos realizado para crear nuestra base han sido:
- Inserción de la columna category_id en la tabla film. Con esto relacionamos de forma directa las tablas film y category, sin tener que pasar por old_HDD.
- Creación de la tabla actor_film, una tabla intermedia utilizada para establecer la relación entre film y actor. En este caso es una relación Many to Many.
Gracias a estos dos tratamientos podemos desechar la tabla old_HDD la cual incumoplía una de las reglas básicas de SQL, la prohibición de repetir strings (repetición columnas de nombre y título).