DROP TABLE customerWishlist CASCADE CONSTRAINTS;
DROP TABLE movieWishlist CASCADE CONSTRAINTS;
DROP TABLE movieCategory CASCADE CONSTRAINTS;
DROP TABLE directorMovie CASCADE CONSTRAINTS;
DROP TABLE actorMovie CASCADE CONSTRAINTS;
DROP TABLE movieAdvisory CASCADE CONSTRAINTS;
DROP TABLE movie CASCADE CONSTRAINTS;
DROP TABLE rental CASCADE CONSTRAINTS;
DROP TABLE customers CASCADE CONSTRAINTS;
DROP TABLE payment CASCADE CONSTRAINTS;
DROP TABLE wishlist CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;
DROP TABLE subcategory CASCADE CONSTRAINTS;
DROP TABLE director CASCADE CONSTRAINTS;
DROP TABLE actor CASCADE CONSTRAINTS;
DROP TABLE advisory CASCADE CONSTRAINTS;
DROP TABLE ratings CASCADE CONSTRAINTS;

CREATE TABLE movie
    (filmId NUMBER, 
    ratingsId NUMBER,
    filmName VARCHAR2(70) NOT NULL,
    advisoryType VARCHAR2(70),
    category VARCHAR2(20),
    rating VARCHAR2(20),
    directorId NUMBER,
    actorId NUMBER,
    duration NUMBER,
    price NUMBER(5,2),
    newReleases NUMBER(1),
    mostPopular NUMBER(1),
    comingSoon NUMBER(1),
    CONSTRAINT movie_filmId_pk PRIMARY KEY (filmId),
    CONSTRAINT movie_duration_check CHECK (duration > 0),
    CONSTRAINT movie_newReleases_check CHECK (newReleases IN (0, 1)),
    CONSTRAINT movie_mostPopular_check CHECK (mostPopular IN (0, 1)),
    CONSTRAINT movie_comingSoon_check CHECK (comingSoon IN (0, 1)));

CREATE TABLE rental 
    (filmId NUMBER,
    customerId NUMBER,
    filmName VARCHAR2(70) NOT NULL,
    rentalDate DATE DEFAULT SYSDATE,
    startedViewingDate DATE,
    customerRating NUMBER,
    cost NUMBER,
    cardNumber NUMBER NOT NULL,
    cardType VARCHAR2(2) NOT NULL,
    CONSTRAINT rental_customerId_pk PRIMARY KEY (customerId),
    CONSTRAINT rental_cardNumber_uk UNIQUE (cardNumber),
    CONSTRAINT rental_startedViewingDate_check CHECK (startedViewingDate > rentalDate),
    CONSTRAINT rental_customerRating_check CHECK (customerRating BETWEEN 1 AND 5));

CREATE TABLE customers
    (customerId NUMBER,
    cardId NUMBER,
    firstName VARCHAR2(30),
    lastName VARCHAR2(30),
    age NUMBER,
    phoneNumber VARCHAR2(14) NOT NULL,
    postalCode VARCHAR2(6) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    CONSTRAINT customers_customerId_pk PRIMARY KEY (customerId),
    CONSTRAINT customers_email_uk UNIQUE (email),
    CONSTRAINT customers_phoneNumber_check CHECK (REGEXP_LIKE(phoneNumber, '^[0-9]{3}-[0-9]{3}-[0-9]{4}$')),
    CONSTRAINT customers_postalCode_check CHECK (REGEXP_LIKE(postalCode, '^[A-Z][0-9][A-Z][0-9][A-Z][0-9]$')));

CREATE TABLE payment
    (cardId NUMBER,
    customerId NUMBER,
    cardNumber NUMBER NOT NULL,
    cardType VARCHAR2(2) NOT NULL,
    firstName VARCHAR2(30),
    lastName VARCHAR2(30),
    cardExpireDate DATE,
    email VARCHAR2(50),
    CONSTRAINT payment_cardId_pk PRIMARY KEY (cardId),
    CONSTRAINT payment_email_uk UNIQUE (email),
    CONSTRAINT payment_cardType_check CHECK (cardType IN ('AX', 'MC', 'VS')));

CREATE TABLE wishlist
    (wishlistId NUMBER,
    filmId NUMBER,
    filmName VARCHAR2(70) NOT NULL,
    customerFirstName VARCHAR2(30) NOT NULL,
    customerLastName  VARCHAR2(30) NOT NULL,
    CONSTRAINT wishlist_wishlistId_pk PRIMARY KEY (wishlistId));

CREATE TABLE category
    (categoryId NUMBER,
    subCategoryId NUMBER,
    category VARCHAR2(20) NOT NULL,
    CONSTRAINT category_categoryId_pk PRIMARY KEY (categoryId));

CREATE TABLE subcategory
    (subCategoryId NUMBER,
    subCategory VARCHAR2(20) NOT NULL,
    CONSTRAINT subcategory_subCategoryId_pk PRIMARY KEY (subCategoryId));

CREATE TABLE director
    (directorId NUMBER,
    firstName VARCHAR2(30),
    lastName VARCHAR2(30),
    birthday DATE,
    directorEmail VARCHAR2(50) NOT NULL,
    CONSTRAINT director_directorId_pk PRIMARY KEY (directorId));

CREATE TABLE actor
    (actorId NUMBER,
    firstName VARCHAR2(30),
    lastName VARCHAR2(30),
    birthday DATE,
    actorEmail VARCHAR2(50) NOT NULL,
    CONSTRAINT actor_actorId_pk PRIMARY KEY (actorId));

CREATE TABLE advisory
    (advisoryId NUMBER,
    advisoryType VARCHAR2(20) NOT NULL,
    CONSTRAINT advisory_advisoryId_pk PRIMARY KEY (advisoryId));

CREATE TABLE ratings
    (ratingsId NUMBER,
    ageRating VARCHAR2(10),
    criticRating NUMBER,
    CONSTRAINT ratings_ratingsId_pk PRIMARY KEY (ratingsId),
    CONSTRAINT ratings_ageRating_check CHECK (ageRating IN ('G', 'PG', '14A', '18A', 'R')));

ALTER TABLE movie
 ADD CONSTRAINT movie_ratingsId_fk FOREIGN KEY (ratingsId)
 REFERENCES ratings (ratingsId) ON DELETE CASCADE;

ALTER TABLE movie
 ADD CONSTRAINT movie_directorId_fk FOREIGN KEY (directorId)
 REFERENCES director (directorId) ON DELETE CASCADE;

ALTER TABLE movie
 ADD CONSTRAINT movie_actorId_fk FOREIGN KEY (actorId)
 REFERENCES actor (actorId) ON DELETE CASCADE;

ALTER TABLE rental
 ADD CONSTRAINT rental_filmId_fk FOREIGN KEY (filmId)
 REFERENCES movie (filmId) ON DELETE CASCADE;

ALTER TABLE customers
 ADD CONSTRAINT customers_cardId_fk FOREIGN KEY (cardId)
 REFERENCES payment (cardId) ON DELETE CASCADE;

ALTER TABLE payment
 ADD CONSTRAINT payment_customerId_fk FOREIGN KEY (customerId)
 REFERENCES customers (customerId) ON DELETE CASCADE;

ALTER TABLE wishlist
 ADD CONSTRAINT wishlist_filmId_fk FOREIGN KEY (filmId)
 REFERENCES movie (filmId) ON DELETE CASCADE;

ALTER TABLE category
 ADD CONSTRAINT category_subCategoryId_fk FOREIGN KEY (subCategoryId)
 REFERENCES subcategory (subCategoryId) ON DELETE CASCADE;

CREATE TABLE customerWishlist
    (customerId NUMBER,
    wishlistId NUMBER);

CREATE TABLE movieWishlist
    (filmId NUMBER,
    wishlistId NUMBER);

CREATE TABLE movieCategory
    (movieId NUMBER,
    categoryId NUMBER);

CREATE TABLE directorMovie
    (filmId NUMBER,
    directorId NUMBER);

CREATE TABLE actorMovie
    (actorId NUMBER,
    filmId NUMBER);

CREATE TABLE movieAdvisory
    (filmId NUMBER,
    advisoryId NUMBER);

ALTER TABLE customerWishlist
 ADD CONSTRAINT customerWishlist_customerId_fk FOREIGN KEY (customerId)
 REFERENCES customers (customerId);

ALTER TABLE customerWishlist
 ADD CONSTRAINT customerWishlist_wishlistId_fk FOREIGN KEY (wishlistId)
 REFERENCES wishlist (wishlistId);

ALTER TABLE movieWishlist
 ADD CONSTRAINT movieWishlist_filmId_fk FOREIGN KEY (filmId)
 REFERENCES movie (filmId);

ALTER TABLE movieWishlist
 ADD CONSTRAINT movieWishlist_wishlistId_fk FOREIGN KEY (wishlistId)
 REFERENCES wishlist (wishlistId);

ALTER TABLE movieCategory
 ADD CONSTRAINT movieCategory_movieId_fk FOREIGN KEY (movieId)
 REFERENCES movie (filmId);

ALTER TABLE movieCategory
 ADD CONSTRAINT movieCategory_categoryId_fk FOREIGN KEY (categoryId)
 REFERENCES category (categoryId);

ALTER TABLE directorMovie
 ADD CONSTRAINT directorMovie_filmId_fk FOREIGN KEY (filmId)
 REFERENCES movie (filmId);

ALTER TABLE directorMovie
 ADD CONSTRAINT directorMovie_directorId_fk FOREIGN KEY (directorId)
 REFERENCES director (directorId);

ALTER TABLE actorMovie
 ADD CONSTRAINT actorMovie_actorId_fk FOREIGN KEY (actorId)
 REFERENCES actor (actorId);

ALTER TABLE actorMovie
 ADD CONSTRAINT actorMovie_filmId_fk FOREIGN KEY (filmId)
 REFERENCES movie (filmId);

ALTER TABLE movieAdvisory
 ADD CONSTRAINT movieAdvisory_filmId_fk FOREIGN KEY (filmId)
 REFERENCES movie (filmId);

ALTER TABLE movieAdvisory
 ADD CONSTRAINT movieAdvisory_advisoryId_fk FOREIGN KEY (advisoryId)
 REFERENCES advisory (advisoryId);

SPOOL OFF
