-- Fråga 2: Vilka filmer som finns i en viss genre.

SELECT movieName, g.`Name` FROM movies m
INNER JOIN movies_has_genre mhg ON m.movieID = mhg.movieID
INNER JOIN genre g ON mhg.GenreID = g.GenreID
WHERE g.`Name`= 'Drama';