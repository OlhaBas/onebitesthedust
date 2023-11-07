ЗАПРОС 1

SELECT name_city
FROM cities
WHERE population > 1000000;

ЗАПРОС 2
  
SELECT * FROM cities WHERE region IN("E","W") ORDER BY population

ЗАПРОС 3

SELECT * FROM cities WHERE region IN("S","C","N") AND population >= 50000

ЗАПРОС 4
  
SELECT * FROM cities
  WHERE region IN("E","W","N") AND population BETWEEN 150000 AND 350000 LIMIT 20;

ЗАПРОС 5

SELECT * FROM cities WHERE region NOT IN("E","W") LIMIT 20;
