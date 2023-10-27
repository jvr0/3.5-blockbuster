# 3.5-blockbuster

Descripción del encargo¡

vinculo y foto

**Índice**

1. [Limpieza de datos](#id1)
2. [Planteamiento de diagráma](#id2)


<div id='id1' />

## 1. Limpieza de datos

empezamos el proyecto realizando una primera exploración de archivos recibidos. Estos corresponden a varios .csv con información sobre actores, categoría de películas, películas, inventario y lenguaje entre otros. En la primera fase del proyecto nos encargaremos de revisar los datos de estos archivos.

Durante la limpieza encontramos columnas sin valor para nuestro objetivo final, la construcción de una base de datos. Estas son eliminadas. Durante la exploración también encontramos ciertas categorizaciones que modificamos para mayor profundidad. Es el caso de la columna 'special_features' en film.csv. Esta columna se ha dividido en cuatro nuevas columnas, las cuales han sido rellenadas con booleanos según si la película contenía, o no, los items especiales.

Al tratar el archivo rental.csv se ha utilizado una función para obtener un mayor acceso a los datos de fecha. De las dos columnas que contenían valores temporales se han creado tres nuevas columnas que contienen el año, mes y día correspondiente.

De la limpieza y exploración de los datos recabamos ciertas conclusiones útiles de cara a la construcción de la base de datos. Una de estas ideas es que, a pesar de que haya 1000 títulos categorizados, en almacen existen 1000 items que corresponden a 207 títulos y que estan distribuidos a lo largo de dos tiendas.

<div id='id2' />

## 2. Planteamiento de diagráma

