--1. Crear base de datos llamada películas (1 punto)
CREATE DATABASE peliculas;

--2. Revisar los archivos peliculas.csv y reparto.csv para crear las tablas correspondientes,
--determinando la relación entre ambas tablas. (2 puntos)
CREATE TABLE Peliculas (id SERIAL, Pelicula VARCHAR(150), año_estreno  INT, Director VARCHAR(150), PRIMARY KEY(id));
\copy peliculas FROM '/mnt/c/users/bazz/desktop/SQL/proyectos/Desafio_02/top_100/peliculas.csv' csv header; 

CREATE TABLE Reparto (id SERIAL PRIMARY KEY,Peli_ID INT, Nombre_Actor VARCHAR(25),FOREIGN KEY (Peli_ID) REFERENCES peliculas(id));
3. Cargar ambos archivos a su tabla correspondiente (1 punto)
4. Listar todos los actores que aparecen en la película "Titanic", indicando el título de la película,
año de estreno, director y todo el reparto. (0.5 puntos)
5. Listar los titulos de las películas donde actúe Harrison Ford.(0.5 puntos)
6. Listar los 10 directores mas populares, indicando su nombre y cuántas películas aparecen en el
top 100.(1 puntos)
7. Indicar cuantos actores distintos hay (1 puntos)
8. Indicar las películas estrenadas entre los años 1990 y 1999 (ambos incluidos) ordenadas por
título de manera ascendente.(1 punto)
9. Listar el reparto de las películas lanzadas el año 2001 (1 punto)
10. Listar los actores de la película más nueva (1 punto)