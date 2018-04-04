<<<<<<< HEAD
-- Fråga 2: Vilka filmer som finns i en viss genre.

SELECT movieName, g.`Name` FROM movies m
INNER JOIN movies_has_genre mhg ON m.movieID = mhg.movieID
INNER JOIN genre g ON mhg.GenreID = g.GenreID
WHERE g.`Name`= 'Drama';
=======
-- Fråga 1: Vilka filmer som firman äger, inklusive data om filmen.

SELECT m.movieID, movieName, `Year`, GROUP_CONCAT(distinct d.FirstName, ' ', d.LastName) Director, GROUP_CONCAT(distinct a.FirstName, ' ', a.LastName) Actors, g.`Name` Genre
FROM movies m

INNER JOIN movies_has_actors mah ON m.movieID = mah.movieID

INNER JOIN actors a ON mah.ActorsID = a.ActorsID

INNER JOIN movies_has_genre mhg ON m.movieID = mhg.movieID

INNER JOIN genre g ON mhg.GenreID = g.GenreID

INNER JOIN directors d ON m.directorsID = d.DirectorsID

GROUP BY m.movieID
>>>>>>> feature_list_all_movies
