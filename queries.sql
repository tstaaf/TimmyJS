-- Fråga 1: Vilka filmer som firman äger, inklusive data om filmen.

SELECT m.movieID, movieName, `Year`, GROUP_CONCAT(distinct d.FirstName, ' ', d.LastName) Director, GROUP_CONCAT(distinct a.FirstName, ' ', a.LastName) Actors, g.`Name` Genre
FROM movies m
INNER JOIN movies_has_actors mah ON m.movieID = mah.movieID
INNER JOIN actors a ON mah.ActorsID = a.ActorsID
INNER JOIN movies_has_genre mhg ON m.movieID = mhg.movieID
INNER JOIN genre g ON mhg.GenreID = g.GenreID
INNER JOIN directors d ON m.directorsID = d.DirectorsID
GROUP BY m.movieID;

-- Fråga 2: Vilka filmer som finns i en viss genre.

SELECT movieName, g.`Name` 
FROM movies m
INNER JOIN movies_has_genre mhg ON m.movieID = mhg.movieID
INNER JOIN genre g ON mhg.GenreID = g.GenreID
WHERE g.`Name`= 'Adventure';

-- Fråga 3 : Vilka filmer som är uthyrda, vem som hyrde dem (kund) och vem som hyrde ut dem (anställd).

SELECT m.movieName, e.employeeID, GROUP_CONCAT(c.FirstName,' ' , c.LastName) Renter, m.rented 
FROM movies m
INNER JOIN customers c ON c.customerID = m.customerID
INNER JOIN employees e ON e.employeeID = m.employeeID
GROUP BY m.movieName
HAVING m.rented = 1;

-- Fråga 4: Vilka filmer som har gått över tiden, dvs filmer som inte har blivit återlämnade trots att de borde vara det, tillsammans med namnet på kunden som har hyrt den.

SELECT m.movieID, m.movieName, GROUP_CONCAT(distinct FirstName, ' ', LastName) Customer
FROM movies m
INNER JOIN customers c ON m.customerID = c.customerID
WHERE curdate() > returnDate
GROUP BY m.movieID;

-- Fråga 5: En lista över alla anställda och hur många filmer varje anställd har hyrt ut.

SELECT e.employeeID, e.FirstName, e.LastName, count(m.employeeID) Movies_rented
FROM employees e
INNER JOIN movies m ON m.employeeID = e.employeeID
GROUP BY e.employeeID;
