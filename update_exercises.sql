# Write SELECT statements to output each of the following with a caption:
#
# All albums in your table.
# All albums released before 1980
# All albums by Michael Jackson
# After each SELECT add an UPDATE statement to:
#
# Make all the albums 10 times more popular (sales * 10)
# Move all the albums before 1980 back to the 1800s.
# Change 'Michael Jackson' to 'Peter Jackson'
# Add SELECT statements after each UPDATE so you can see the results of your handiwork.

USE codeup_test_db;

SELECT 'Retrieve all albums' AS '';

SELECT * FROM albums;

SELECT 'Updating sales to be 10X popular' AS '';

UPDATE albums
SET sales = sales * 10;

SELECT * FROM albums;

SELECT '';

SELECT 'Retrieve all albums before 1980' AS '';

SELECT * FROM albums
WHERE release_date < '1980-01-01';

SELECT 'Updating release date for pre-''90s albums to be in the 1800''s' AS '';

UPDATE albums
SET release_date = DATE_SUB(release_date, INTERVAL 100 YEAR)
WHERE release_date < '1980-01-01';

SELECT * FROM albums
WHERE release_date < '1980-01-01';

SELECT '';

SELECT 'Retrieve all albums by Michael Jackson' AS '';

SELECT * FROM albums
WHERE artist = 'Michael Jackson';

SELECT 'Updating Michael Jackson albums to be Peter Jackson albums' AS '';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums
WHERE artist = 'Peter Jackson';

SELECT '';
