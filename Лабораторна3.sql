 ЗАПРОС 1
SELECT * FROM cities WHERE name LIKE '%ськ'; 


 ЗАПРОС 2
SELECT * FROM cities WHERE name LIKE '%донец%'; -

  ЗАПРОС 3
SELECT CONCAT(name, ' (', region, ')')
FROM cities 
WHERE population >= 100000
ORDER BY name ASC 

ЗАПРОС 4
SELECT name, population, (population / 40000.0) * 100
FROM cities 
ORDER BY population DESC
LIMIT 10;

ЗАПРОС 5
SELECT CONCAT(name, ' - ', (population / 40000000.0) * 100, '%') 
  FROM cities WHERE (population / 40000000.0) * 100 >= 0.1 
  ORDER BY (population / 40000000.0) * 100 DESC
