-- Lab | SQL Queries 4
-- 1. Get film ratings.
SELECT RATING
FROM SAKILA.FILM;

-- 2. Get release years.
SELECT RELEASE_YEAR
FROM SAKILA.FILM;

-- 3. Get all films with ARMAGEDDON in the title.
SELECT TITLE
FROM SAKILA.FILM
WHERE TITLE REGEXP 'ARMAGEDDON';

-- 4. Get all films with APOLLO in the title
SELECT TITLE
FROM SAKILA.FILM
WHERE TITLE REGEXP 'APOLLO';

-- 5. Get all films which title ends with APOLLO.
SELECT TITLE
FROM SAKILA.FILM
WHERE TITLE LIKE '%APOLLO';

-- 6. Get all films with word DATE in the title.
SELECT TITLE
FROM SAKILA.FILM
WHERE TITLE REGEXP 'DATE';

-- 7. Get 10 films with the longest title.
SELECT TITLE, LENGTH(TITLE) AS LONGEST_TITLE
FROM SAKILA.FILM
ORDER BY LONGEST_TITLE DESC
LIMIT 10;

-- 8. Get 10 the longest films.
SELECT FILM_ID, LENGTH
FROM SAKILA.FILM
ORDER BY LENGTH DESC
LIMIT 10;

-- 9. How many films include Behind the Scenes content?
SELECT COUNT(SPECIAL_FEATURES)
FROM SAKILA.FILM
WHERE SPECIAL_FEATURES LIKE 'Behind the Scenes';

-- 10. List films ordered by release year and title in alphabetical order.
SELECT RELEASE_YEAR, TITLE
FROM SAKILA.FILM
ORDER BY 1 ASC, 2 ASC;