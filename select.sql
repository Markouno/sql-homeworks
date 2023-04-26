SELECT album_name, release_date FROM albums
WHERE release_date = 2018;

SELECT track_name, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT track_name FROM tracks
WHERE duration >= 210;

SELECT title FROM collection
WHERE release_year BETWEEN 2018 AND 2020;

SELECT singer_name FROM singers
WHERE singer_name NOT LIKE '% %';

SELECT track_name FROM tracks
WHERE track_name ILIKE ANY (ARRAY['%My%', '%Мой%']);