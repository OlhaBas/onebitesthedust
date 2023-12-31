ЗАПРОС 1

SELECT *, UPPER(name) AS name_upcase
FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5;

ЗАПРОС 2

SELECT UPPER(name) AS name_upcase, LENGTH(name) AS name_length
FROM cities WHERE 1
AND LENGTH(name) NOT IN (8, 9, 10)
ORDER BY name;

ЗАПРОС 3

SELECT region, SUM(population) AS total_population
FROM cities
WHERE region IN ('C', 'S')
GROUP BY region;

ЗАПРОС 4

SELECT AVG(population) AS average_population
FROM cities
WHERE region = 'W';

ЗАПРОС 5

SELECT COUNT(*) AS city_count
FROM cities
WHERE region = 'E';
