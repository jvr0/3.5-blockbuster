# FilmFinder

Se ha encargado la creación de una base de datos para un cliente que desea retomar su videoclub. Se nos han dado una serie de archivos csv que encontramos en la carpeta raw_data y se nos ha pedido la creación de una base de datos relacional para llevar un control del negocio. En principio no se ha establecido ninguna restricción, sin embargo nuestro cliente afirma que los cliente que solía tener eran bastante exigentes y pide que la estructura se encuentre bien organizada. Además le gustaría que proporcionaramos de antemano soluciones a problemas recurrentes que puedan tener los clientes del videoclub FilmFinder.

![portada](https://github.com/jvr0/3.5-blockbuster/blob/main/img/pp.png)

**Índice**

1. [Limpieza de datos](#id1)
2. [Creación de la estructura](#id2)
3. [Utilización de la base de datos](#id3)

<div id='id1' />

## 1. Limpieza de datos

Para la primera fase del encargo empezaremos explorando y limpiando los datos para su posterior utilización en la construcción de nuestra base de datos.

Durante la limpieza encontramos columnas sin valor para nuestro objetivo final, las cuales son eliminadas. También encontramos ciertas categorizaciones que modificamos para mayor profundidad. Es el caso de la columna 'special_features' en film.csv. Esta columna se ha dividido en cuatro nuevas columnas, las cuales han sido rellenadas con booleanos. Al tratar el archivo rental.csv se ha utilizado una función para obtener un mayor acceso a los datos de fecha.

De la limpieza y exploración de los datos recabamos ciertas conclusiones útiles de cara a la construcción de la base de datos. Una de estas ideas es que, a pesar de que haya 1000 títulos categorizados, en almacen existen 1000 items que corresponden a 207 títulos y que estan distribuidos a lo largo de dos tiendas.

<div id='id2' />

## 2. Creación de la estructura

A la hora de construir nuestra base de datos se plantea de forma que tenga la mayor utilidad posible para el cliente. Así es que partiremos de un nodo de partida 'rental', el cual contendrá la información del negocio. A raíz de esta columna podremos acceder al resto de la información del negocio. Nuestro diagráma final quedará de la siguiente manera:

![diagráma](https://github.com/jvr0/3.5-blockbuster/blob/main/img/FilmFinder.png)

Los dos tratamientos principales que hemos realizado para crear nuestra base han sido:
- Inserción de la columna category_id en la tabla film. Con esto relacionamos de forma directa las tablas film y category, sin tener que pasar por old_HDD.
- Creación de la tabla actor_film, una tabla intermedia utilizada para establecer la relación entre film y actor. En este caso es una relación Many to Many.
Gracias a estos dos tratamientos podemos desechar la tabla old_HDD.

<div id='id3' />

## 3. Utilización de la base de datos

Una vez que se ha creado la estructura y se han establecido las diferentes relaciones entre las tablas pasamos a definir el uso de la estructura. En la carpeta SQL_script encontraremos los scripts utilizados para la creación de las relaciones. Además, se han añadido dos archivos adicionales: 'basic_query.sql' y 'advance_query.sql' en estos se plantean diferentes problemas y sus soluciones para los que nuestro cliente podría utilizar nuestra estructura. 

Además, en esta misma carpeta se ha incluido el archivo  "FilmFinder.sql". Este script permite importar toda la base de datos.