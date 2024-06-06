-- Tan Nguyen
-- 917354
set linesize 145
set pagesize 66


-- x.	Show actors and the number of times they have appeared in movies. Include actor name and the # of movies they have appeared in. Sort by actor name. 
SELECT a.firstName || ' ' || a.lastName AS Actor, COUNT(am.filmId) AS NumberOfMovies
FROM actor a
JOIN actorMovie am ON a.actorId = am.actorId
GROUP BY a.firstName, a.lastName
HAVING COUNT(am.filmId) > 1
ORDER BY a.firstName, a.lastName;
