DELETE FROM rental;
DELETE FROM movieWishlist;
DELETE FROM customerWishlist;
DELETE FROM movieCategory;
DELETE FROM movieAdvisory;
DELETE FROM actorMovie;
DELETE FROM directorMovie;
DELETE FROM wishlist;
DELETE FROM movie;
DELETE FROM advisory;
DELETE FROM actor;
DELETE FROM director;
DELETE FROM payment;
DELETE FROM customers;
DELETE FROM category;
DELETE FROM subcategory;
DELETE FROM ratings;


-- Subcategory
INSERT INTO subcategory (subCategoryId, subCategory) VALUES (1, 'Adventure');
INSERT INTO subcategory (subCategoryId, subCategory) VALUES (2, 'Romantic');
INSERT INTO subcategory (subCategoryId, subCategory) VALUES (3, 'Historical');
INSERT INTO subcategory (subCategoryId, subCategory) VALUES (4, 'Slasher');
INSERT INTO subcategory (subCategoryId, subCategory) VALUES (5, 'Futuristic');


-- Category
INSERT INTO category (categoryId, subCategoryId, category) VALUES (1, 1, 'Action');
INSERT INTO category (categoryId, subCategoryId, category) VALUES (2, 2, 'Comedy');
INSERT INTO category (categoryId, subCategoryId, category) VALUES (3, 3, 'Drama');
INSERT INTO category (categoryId, subCategoryId, category) VALUES (4, 4, 'Horror');
INSERT INTO category (categoryId, subCategoryId, category) VALUES (5, 5, 'Sci-Fi');


-- Payment
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (1, 123456789012, 'VS', 'George', 'Lucas', DATE '2025-12-31', 'george.lucas@email.com');
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (2, 234567890123, 'MC', 'Steven', 'Spielberg', DATE '2025-06-30', 'steven.spielberg@email.com');
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (3, 345678901234, 'AX', 'Martin', 'Scorsese', DATE '2024-11-15', 'martin.scorsese@email.com');
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (4, 456789012345, 'VS', 'James', 'Cameron', DATE '2026-01-20', 'james.cameron@email.com');
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (5, 567890123456, 'MC', 'Quentin', 'Tarantino', DATE '2024-08-25', 'quentin.tarantino@email.com');
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (6, 678901234567, 'AX', 'Francis', 'Ford Coppola', DATE '2027-03-22', 'francis.coppola@email.com');
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (7, 789012345678, 'VS', 'Ridley', 'Scott', DATE '2023-12-31', 'ridley.scott@email.com');
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (8, 890123456789, 'MC', 'Nolan', 'Christopher', DATE '2028-05-15', 'nolan.christopher@email.com');
INSERT INTO payment (cardId, cardNumber, cardType, firstName, lastName, cardExpireDate, email) VALUES (9, 901234567890, 'AX', 'Wes', 'Anderson', DATE '2029-07-20', 'wes.anderson@email.com');


-- Customer
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (1, 1, 'George', 'Lucas', 34, '123-456-7890', 'A1A2A3', 'george.lucas@email.com');
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (2, 2, 'Steven', 'Spielberg', 29, '234-567-8901', 'B2B3B4', 'steven.spielberg@email.com');
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (3, 3, 'Martin', 'Scorsese', 45, '345-678-9012', 'C3C4C5', 'martin.scorsese@email.com');
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (4, 4, 'James', 'Cameron', 51, '456-789-0123', 'D4D5D6', 'james.cameron@email.com');
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (5, 5, 'Quentin', 'Tarantino', 39, '567-890-1234', 'E5E6E7', 'quentin.tarantino@email.com');
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (6, 6, 'Francis', 'Ford Coppola', 43, '678-901-2345', 'F6F7F8', 'francis.coppola@email.com');
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (7, 7, 'Ridley', 'Scott', 50, '789-012-3456', 'G7G8G9', 'ridley.scott@email.com');
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (8, 8, 'Nolan', 'Christopher', 47, '890-123-4567', 'H8H9H0', 'nolan.christopher@email.com');
INSERT INTO customers (customerId, cardId, firstName, lastName, age, phoneNumber, postalCode, email) VALUES (9, 9, 'Wes', 'Anderson', 52, '901-234-5678', 'I9I0I1', 'wes.anderson@email.com');


-- Advisory
INSERT INTO advisory (advisoryId, advisoryType) VALUES (1, 'Some Advisory Type');
INSERT INTO advisory (advisoryId, advisoryType) VALUES (2, 'Parental Guidance');
INSERT INTO advisory (advisoryId, advisoryType) VALUES (3, 'Parents Cautioned');
INSERT INTO advisory (advisoryId, advisoryType) VALUES (4, 'Restricted');
INSERT INTO advisory (advisoryId, advisoryType) VALUES (5, 'Adults Only');


-- Actor
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (1, 'Timmy', 'Doe', DATE '1980-01-01', 'timmy.doe@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (2, 'Sara', 'Connor', DATE '1985-10-05', 'sara.connor@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (3, 'Rick', 'Grimes', DATE '1990-01-20', 'rick.grimes@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (4, 'Lucy', 'Liu', DATE '1979-06-15', 'lucy.liu@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (5, 'David', 'Tennant', DATE '1982-04-18', 'david.tennant@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (6, 'Zoe', 'Saldana', DATE '1988-06-19', 'zoe.saldana@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (7, 'Brad', 'Pitt', DATE '1977-12-18', 'brad.pitt@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (8, 'Angelina', 'Jolie', DATE '1984-05-27', 'angelina.jolie@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (9, 'Johnny', 'Depp', DATE '1973-08-09', 'johnny.depp@email.com');
INSERT INTO actor (actorId, firstName, lastName, birthday, actorEmail) VALUES (10, 'Emma', 'Watson', DATE '1990-04-15', 'emma.watson@email.com');


-- Director
INSERT INTO director (directorId, firstName, lastName, birthday, directorEmail) VALUES (1, 'John', 'Doe', DATE '1970-01-01', 'john.doe@email.com');
INSERT INTO director (directorId, firstName, lastName, birthday, directorEmail) VALUES (2, 'Jane', 'Smith', DATE '1980-07-03', 'jane.smith@email.com');
INSERT INTO director (directorId, firstName, lastName, birthday, directorEmail) VALUES (3, 'Alice', 'Johnson', DATE '1970-02-15', 'alice.johnson@email.com');
INSERT INTO director (directorId, firstName, lastName, birthday, directorEmail) VALUES (4, 'Bob', 'Williams', DATE '1965-11-22', 'bob.williams@email.com');
INSERT INTO director (directorId, firstName, lastName, birthday, directorEmail) VALUES (5, 'Charlie', 'Davis', DATE '1978-08-30', 'charlie.davis@email.com');


-- Rating
INSERT INTO ratings (ratingsId, ageRating, criticRating) VALUES (1, 'PG', 85);
INSERT INTO ratings (ratingsId, ageRating, criticRating) VALUES (2, 'R', 90);
INSERT INTO ratings (ratingsId, ageRating, criticRating) VALUES (3, 'PG', 88);
INSERT INTO ratings (ratingsId, ageRating, criticRating) VALUES (4, 'PG', 75);
INSERT INTO ratings (ratingsId, ageRating, criticRating) VALUES (5, 'PG', 80);


-- Movie
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (1, 1, 'Space Journey', 'PG', 'Sci-Fi', 'PG', 1, 1, 120, 15.99, 0, 0, 1);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (2, 2, 'The Haunting', '18A', 'Horror', 'R', 2, 2, 100, 12.99, 1, 0, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (3, 3, 'Warrior King', '14A', 'Action', 'PG', 3, 3, 110, 11.99, 0, 1, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (4, 4, 'Laugh Out Loud', 'PG', 'Comedy', 'PG', 4, 4, 90, 9.99, 0, 0, 1);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (5, 5, 'Lost in Time', 'PG', 'Drama', 'PG', 5, 5, 130, 14.99, 1, 0, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (6, 1, 'Galactic Wars', 'PG', 'Sci-Fi', 'PG', 1, 6, 125, 17.99, 0, 0, 1);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (7, 2, 'Nightmare Street', 'R', 'Horror', 'R', 2, 7, 105, 13.99, 1, 1, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (8, 3, 'The Gladiator', '14A', 'Action', 'PG', 3, 8, 140, 16.99, 0, 1, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (9, 4, 'Funny Bones', 'PG', 'Comedy', 'PG', 4, 9, 95, 8.99, 0, 0, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (10, 5, 'Dramatic Escape', 'PG', 'Drama', 'PG', 5, 10, 135, 18.99, 1, 0, 1);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (11, 1, 'Galactic Wars', 'PG', 'Sci-Fi', 'PG', 1, 6, 125, 17.99, 0, 0, 1);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (12, 5, 'Dramatic Escape', 'PG', 'Drama', 'PG', 5, 10, 135, 18.99, 1, 0, 1);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (13, 4, 'The Unknown', 'PG', 'Comedy', 'PG', 4, 9, 95, 12.99, 0, 0, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (14, 3, 'The Explorer', '14A', 'Action', 'PG', 3, 8, 140, 11.99, 0, 1, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (15, 2, 'Mystery Island', 'R', 'Horror', 'R', 2, 7, 105, 10.99, 1, 1, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (16, 1, 'Adventure Quest', 'PG', 'Sci-Fi', 'PG', 1, 6, 125, 13.99, 0, 0, 1);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (17, 5, 'Lost World', 'PG', 'Drama', 'PG', 5, 10, 135, 14.99, 1, 0, 1);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (18, 4, 'Comic Frenzy', 'PG', 'Comedy', 'PG', 4, 9, 95, 9.99, 0, 0, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (19, 2, 'Horror Nights', 'R', 'Horror', 'R', 2, 7, 105, 8.99, 1, 1, 0);
INSERT INTO movie (filmId, ratingsId, filmName, advisoryType, category, rating, directorId, actorId, duration, price, newReleases, mostPopular, comingSoon) VALUES (20, 3, 'Epic Saga', '14A', 'Action', 'PG', 3, 8, 140, 15.99, 0, 1, 0);


-- Rental
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (1, 1, 'Space Journey', DATE '2023-04-01', DATE '2023-04-02', 4, 15.99, 123456789012, 'VS');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (2, 2, 'The Haunting', DATE '2023-04-05', DATE '2023-04-06', 5, 12.99, 234567890123, 'MC');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (3, 3, 'Warrior King', DATE '2023-04-10', DATE '2023-04-11', 3, 11.99, 345678901234, 'AX');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (6, 4, 'Galactic Wars', DATE '2023-04-25', DATE '2023-04-26', 4, 17.99, 456789012345, 'AX');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (7, 5, 'Nightmare Street', DATE '2023-04-30', DATE '2023-05-01', 5, 13.99, 567890123456, 'VS');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (8, 6, 'The Gladiator', DATE '2023-05-05', DATE '2023-05-06', 3, 16.99, 678901234567, 'MC');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (9, 7, 'Funny Bones', DATE '2023-05-10', DATE '2023-05-11', 2, 8.99, 789012345678, 'AX');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (11, 8, 'Galactic Wars', DATE '2023-04-02', DATE '2023-04-03', 5, 17.99, 890123456789, 'MC');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (12, 9, 'Dramatic Escape', DATE '2023-04-06', DATE '2023-04-07', 4, 18.99, 901234567890, 'AX');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (13, 10, 'The Unknown', DATE '2023-04-03', DATE '2023-04-04', 5, 12.99, 102345678901, 'AX');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (14, 11, 'The Explorer', DATE '2023-04-07', DATE '2023-04-08', 4, 11.99, 112345678902, 'VS');
INSERT INTO rental (filmId, customerId, filmName, rentalDate, startedViewingDate, customerRating, cost, cardNumber, cardType) VALUES (15, 12, 'Mystery Island', DATE '2023-04-11', DATE '2023-04-12', 3, 10.99, 890123456788, 'MC');


-- Wishlist
-- Correcting the wishlist insertions to use unique wishlistIds
INSERT INTO wishlist (wishlistId, filmId, filmName, customerFirstName, customerLastName) VALUES (1, 13, 'The Unknown', 'Nolan', 'Christopher');
INSERT INTO wishlist (wishlistId, filmId, filmName, customerFirstName, customerLastName) VALUES (2, 14, 'The Explorer', 'Wes', 'Anderson');
INSERT INTO wishlist (wishlistId, filmId, filmName, customerFirstName, customerLastName) VALUES (3, 15, 'Mystery Island', 'Nolan', 'Christopher');
INSERT INTO wishlist (wishlistId, filmId, filmName, customerFirstName, customerLastName) VALUES (4, 16, 'Adventure Quest', 'Wes', 'Anderson');
INSERT INTO wishlist (wishlistId, filmId, filmName, customerFirstName, customerLastName) VALUES (5, 17, 'Lost World', 'Nolan', 'Christopher');
INSERT INTO wishlist (wishlistId, filmId, filmName, customerFirstName, customerLastName) VALUES (6, 18, 'Comic Frenzy', 'Wes', 'Anderson');
INSERT INTO wishlist (wishlistId, filmId, filmName, customerFirstName, customerLastName) VALUES (7, 19, 'Horror Nights', 'Nolan', 'Christopher');
INSERT INTO wishlist (wishlistId, filmId, filmName, customerFirstName, customerLastName) VALUES (8, 20, 'Epic Saga', 'Wes', 'Anderson');



INSERT INTO customerWishlist (customerId, wishlistId) VALUES (1, 1);
INSERT INTO customerWishlist (customerId, wishlistId) VALUES (8, 5);
INSERT INTO customerWishlist (customerId, wishlistId) VALUES (9, 6);



INSERT INTO movieWishlist (filmId, wishlistId) VALUES (1, 1);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (11, 5);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (12, 6);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (13, 5);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (14, 6);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (15, 5);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (16, 6);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (17, 5);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (18, 6);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (19, 5);
INSERT INTO movieWishlist (filmId, wishlistId) VALUES (20, 6);


INSERT INTO movieCategory (movieId, categoryId) VALUES (1, 5);
INSERT INTO movieCategory (movieId, categoryId) VALUES (2, 4);
INSERT INTO movieCategory (movieId, categoryId) VALUES (3, 1);
INSERT INTO movieCategory (movieId, categoryId) VALUES (4, 2);
INSERT INTO movieCategory (movieId, categoryId) VALUES (5, 3);
INSERT INTO movieCategory (movieId, categoryId) VALUES (6, 5);
INSERT INTO movieCategory (movieId, categoryId) VALUES (7, 4);
INSERT INTO movieCategory (movieId, categoryId) VALUES (8, 1);
INSERT INTO movieCategory (movieId, categoryId) VALUES (9, 2);
INSERT INTO movieCategory (movieId, categoryId) VALUES (10, 3);
INSERT INTO movieCategory (movieId, categoryId) VALUES (11, 5);
INSERT INTO movieCategory (movieId, categoryId) VALUES (12, 4);
INSERT INTO movieCategory (movieId, categoryId) VALUES (13, 1);
INSERT INTO movieCategory (movieId, categoryId) VALUES (14, 2);
INSERT INTO movieCategory (movieId, categoryId) VALUES (15, 3);
INSERT INTO movieCategory (movieId, categoryId) VALUES (16, 5);
INSERT INTO movieCategory (movieId, categoryId) VALUES (17, 4);
INSERT INTO movieCategory (movieId, categoryId) VALUES (18, 1);
INSERT INTO movieCategory (movieId, categoryId) VALUES (19, 2);
INSERT INTO movieCategory (movieId, categoryId) VALUES (20, 3);


INSERT INTO directorMovie (filmId, directorId) VALUES (1, 1);
INSERT INTO directorMovie (filmId, directorId) VALUES (2, 2);
INSERT INTO directorMovie (filmId, directorId) VALUES (3, 3);
INSERT INTO directorMovie (filmId, directorId) VALUES (4, 4);
INSERT INTO directorMovie (filmId, directorId) VALUES (5, 5);
INSERT INTO directorMovie (filmId, directorId) VALUES (6, 1);
INSERT INTO directorMovie (filmId, directorId) VALUES (7, 2);
INSERT INTO directorMovie (filmId, directorId) VALUES (8, 3);
INSERT INTO directorMovie (filmId, directorId) VALUES (9, 4);
INSERT INTO directorMovie (filmId, directorId) VALUES (10, 5);
INSERT INTO directorMovie (filmId, directorId) VALUES (11, 1);
INSERT INTO directorMovie (filmId, directorId) VALUES (12, 2);
INSERT INTO directorMovie (filmId, directorId) VALUES (13, 3);
INSERT INTO directorMovie (filmId, directorId) VALUES (14, 4);
INSERT INTO directorMovie (filmId, directorId) VALUES (15, 5);
INSERT INTO directorMovie (filmId, directorId) VALUES (16, 1);
INSERT INTO directorMovie (filmId, directorId) VALUES (17, 2);
INSERT INTO directorMovie (filmId, directorId) VALUES (18, 3);
INSERT INTO directorMovie (filmId, directorId) VALUES (19, 4);
INSERT INTO directorMovie (filmId, directorId) VALUES (20, 5);


INSERT INTO actorMovie (actorId, filmId) VALUES (1, 1);
INSERT INTO actorMovie (actorId, filmId) VALUES (2, 2);
INSERT INTO actorMovie (actorId, filmId) VALUES (3, 3);
INSERT INTO actorMovie (actorId, filmId) VALUES (4, 4);
INSERT INTO actorMovie (actorId, filmId) VALUES (5, 5);
INSERT INTO actorMovie (actorId, filmId) VALUES (6, 6);
INSERT INTO actorMovie (actorId, filmId) VALUES (7, 7);
INSERT INTO actorMovie (actorId, filmId) VALUES (8, 8);
INSERT INTO actorMovie (actorId, filmId) VALUES (9, 9);
INSERT INTO actorMovie (actorId, filmId) VALUES (10, 10);
INSERT INTO actorMovie (actorId, filmId) VALUES (1, 6);
INSERT INTO actorMovie (actorId, filmId) VALUES (2, 7);
INSERT INTO actorMovie (actorId, filmId) VALUES (3, 8);
INSERT INTO actorMovie (actorId, filmId) VALUES (4, 9);
INSERT INTO actorMovie (actorId, filmId) VALUES (5, 10);
INSERT INTO actorMovie (actorId, filmId) VALUES (1, 11);
INSERT INTO actorMovie (actorId, filmId) VALUES (2, 12);
INSERT INTO actorMovie (actorId, filmId) VALUES (3, 13);
INSERT INTO actorMovie (actorId, filmId) VALUES (4, 14);
INSERT INTO actorMovie (actorId, filmId) VALUES (5, 15);
INSERT INTO actorMovie (actorId, filmId) VALUES (6, 16);
INSERT INTO actorMovie (actorId, filmId) VALUES (7, 17);
INSERT INTO actorMovie (actorId, filmId) VALUES (8, 18);
INSERT INTO actorMovie (actorId, filmId) VALUES (9, 19);
INSERT INTO actorMovie (actorId, filmId) VALUES (10, 20);

INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (1, 2);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (2, 4);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (3, 3);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (4, 2);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (5, 2);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (6, 3);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (7, 4);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (8, 3);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (9, 2);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (10, 2);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (11, 3);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (12, 4);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (13, 3);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (14, 2);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (15, 2);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (16, 3);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (17, 4);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (18, 3);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (19, 2);
INSERT INTO movieAdvisory (filmId, advisoryId) VALUES (20, 2);

COMMIT;
