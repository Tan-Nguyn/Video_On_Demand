-- Tan Nguyen
-- 000917354
set linesize 145
set pagesize 66

-- viii. Show all movies and there average rating (calculated)
SELECT m.filmName, AVG(r.customerRating) AS AverageRating
FROM movie m
JOIN rental r ON m.filmId = r.filmId
GROUP BY m.filmName
ORDER BY m.filmName;




