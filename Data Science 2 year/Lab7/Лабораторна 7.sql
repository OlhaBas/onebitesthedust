Запит 1
SELECT c.name as city_name, r.name as region_name, r.area_quantity
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE c.population > 350000;

Запит 2
SELECT c.name AS city_name, r.name AS region_name
FROM cities c
JOIN regions r ON c.region = r.uuid
WHERE r.name = 'Nord';

Запит 3 (стоврення таблиць)
--Створення таблиці Україні
CREATE TABLE Countries 
  (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(255)
);

--Створення таблиці Харків
CREATE TABLE Kharkiv_city 
  (
    city_id INT PRIMARY KEY,
    city_Kharkiv_name VARCHAR(255),
    Ukraine_country_id INT,
    FOREIGN KEY (Ukraine_country_id) REFERENCES Countries(Ukraine_country_id)
);

--Створення таблиці всій системи метро 
CREATE TABLE MetroSystems 
  (
    system_id INT PRIMARY KEY,
    system_name VARCHAR(255),
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES Cities(city_id)
);

--Створення таблиці ліній Метро(наприклад Олексіївська)
CREATE TABLE MetroLines 
  (
    line_id INT PRIMARY KEY,
    line_name VARCHAR(255),
    system_id INT,
    FOREIGN KEY (system_id) REFERENCES MetroSystems(system_id)
);

--Створення таблиці станций харківського метро
CREATE TABLE Stations 
  (
    station_id INT PRIMARY KEY,
    station_name VARCHAR(255),
    line_id INT,
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    FOREIGN KEY (line_id) REFERENCES MetroLines(line_id)
);
