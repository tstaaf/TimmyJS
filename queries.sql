-- Fråga 1: Vilka filmer som firman äger, inklusive data om filmen.

SELECT m.movieID, movieName, `Year`, directorsID Directors, group_concat(DISTINCT mah.ActorsID) Actors, GenreID Genre 
FROM movies m

INNER JOIN movies_has_actors mah ON m.movieID = mah.movieID

INNER JOIN movies_has_genre mhg ON m.movieID = mhg.movieID

GROUP BY m.movieID;