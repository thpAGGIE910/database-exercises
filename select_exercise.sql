USE codeup_test_db;

SELECT 'Find the names of all the albums by Pink Floyd' AS 'Title';
SELECT name AS 'Album Title' FROM albums WHERE artist = 'Pink Floyd';
SELECT '';

SELECT 'Find the year The Beatle''s "Sgt. Pepper''s Lonely Hearts Club Band" was released' AS 'Title';
SELECT name AS 'Album Title', DATE_FORMAT(release_date, '%Y') AS 'Release Year' FROM albums WHERE name LIKE 'Sgt.%';
SELECT '';

SELECT 'Find "Nevermind''s" genre' AS 'Title';
SELECT name AS 'Album Name', genre AS 'Genre' FROM albums WHERE name = 'Nevermind';
SELECT '';

SELECT 'Find all albums released in the 90''s' AS 'Title';
SELECT artist AS 'Artist',
       name AS 'Album',
       DATE_FORMAT(release_date, '%M %e, %Y') AS 'Release Date'
FROM albums
WHERE release_date >= '1989-01-01' and release_date <= '1999-12-31'
ORDER BY release_date ASC;
SELECT '';

SELECT 'Find all albums that have less than 20 million in certified sales' AS 'Title';
SELECT name AS 'Album Name', sales AS 'Certified Sales (in millions)'
FROM albums
WHERE sales < 20
ORDER BY sales DESC;
SELECT'';

SELECT 'Find albums that are a part of a "rock" genre' AS 'Title';
SELECT name AS 'Album Name', genre AS 'Genre'
FROM albums
WHERE genre LIKE '%Rock%';
SELECT '';
