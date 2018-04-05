-- Fråga 1: Vilka filmer som firman äger, inklusive data om filmen.

SELECT * FROM ListAllMovies;

-- Fråga 2: Vilka filmer som finns i en viss genre.

SELECT * FROM ListAdventureGenre;

-- Fråga 3 : Vilka filmer som är uthyrda, vem som hyrde dem (kund) och vem som hyrde ut dem (anställd).

SELECT * FROM RentalStatus;

-- Fråga 4: Vilka filmer som har gått över tiden, dvs filmer som inte har blivit återlämnade trots att de borde vara det, tillsammans med namnet på kunden som har hyrt den.

SELECT * FROM MovieOverdue;

-- Fråga 5: En lista över alla anställda och hur många filmer varje anställd har hyrt ut.

SELECT * FROM ListAllEmployees;

-- Fråga 7: En Stored Procedure som ska köras när en film lämnas ut. Ska alltså sätta filmen till uthyrd, vem som hyrt den osv.

CALL rent_out_movie(movieID, customerID, employeeID);
