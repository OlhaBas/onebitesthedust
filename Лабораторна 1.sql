ЗАПРОС 1
SELECT *
FROM cities
LIMIT 10;

ЗАПРОС 2
SELECT * 
FROM cities
ORDER BY name DESC
LIMIT 30;

ЗАПРОС 3
SELECT *
FROM cities
ORDER BY region, population DESC;

ЗАПРОС 4
SELECT DISTINCT region
FROM cities;

ЗАПРОС 5
SELECT *
FROM cities
ORDER BY region DESC, name DESC;

