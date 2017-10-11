# 1. Write SELECT statements for:
#   - Albums released after 1991
#   - Albums with the genre 'disco'
#   - Albums by 'Whitney Houston' (...or maybe an artist of your choice)
# 2. Make sure to put appropriate captions before each SELECT.
# 3. Convert the SELECT statements to DELETE.
# 4. Use the MySQL command line client to make sure your records really were removed.

USE codeup_test_db;

SELECT 'Find all albums released after 1991' AS '';
-- SELECT * FROM albums WHERE release_date > '1991-12-31' ORDER BY release_date ASC;
DELETE FROM albums WHERE release_date > '1991-12-31';

SELECT 'Find all disco albums and (thankfully) delete them!' AS '';
-- SELECT * FROM albums WHERE genre LIKE '%disco%';
DELETE FROM albums WHERE genre LIKE '%disco%';

SELECT 'All albums from an artist of my choice' AS '';
-- SELECT * FROM albums WHERE artist = 'Metallica';
DELETE FROM albums WHERE artist = 'Metallica';
