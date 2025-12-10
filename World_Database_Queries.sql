-- WORLD DATABASE, DAY 4 TASKS

-- DAY 1 TASK
USE World;
SELECT COUNT(City.ID) FROM City WHERE CountryCode="USA";
SELECT Country.Name, LifeExpectancy FROM Country ORDER BY LifeExpectancy DESC LIMIT 1;
SELECT City.Name, CountryCode FROM City WHERE City.Name LIKE "%New%";
SELECT City.Name, City.Population, CountryCode FROM City ORDER BY Population DESC LIMIT 10;
SELECT City.Name, City.Population, CountryCode FROM City WHERE Population>2000000;
SELECT City.Name, CountryCode FROM City WHERE City.Name LIKE "Be%";
SELECT City.Name, City.Population, CountryCode From City WHERE Population BETWEEN 500000 AND 1000000;
SELECT City.Name, CountryCode FROM City ORDER BY City.Name ASC;
SELECT City.Name, City.Population, CountryCode From City ORDER BY Population DESC LIMIT 1;
SELECT City.Name, COUNT(City.Name) FROM City GROUP BY City.Name ORDER BY City.Name;
SELECT City.Name, City.Population, CountryCode From City ORDER BY Population LIMIT 1;
SELECT Country.Name, Population FROM Country ORDER BY Population DESC LIMIT 1;
SELECT Country.Name, City.Name FROM Country INNER JOIN City ON City.ID=Country.Capital WHERE Country.Code="ESP";
SELECT City.Name, Country.Name FROM Country INNER JOIN City ON Country.Code=City.CountryCode WHERE Continent="Europe";
SELECT Country.Name, AVG(city.population) FROM City INNER JOIN Country ON City.CountryCode=Country.Code GROUP BY Country.Name;
SELECT City.Name AS "City", Country.Name AS "Country", City.Population FROM Country INNER JOIN City ON City.ID=Country.Capital;
SELECT Country.Name, (Country.Population/Country.SurfaceArea) AS "Population Density" FROM Country ORDER BY Country.Population DIV Country.SurfaceArea;
SELECT Ci.Name, Co.Name, (Co.GNP*1000000/Co.Population) AS GDP FROM Country AS Co INNER JOIN City AS Ci ON Co.Code=Ci.CountryCode WHERE (Co.GNP*1000000/Co.Population)>(SELECT AVG(Country.GNP*1000000/Country.Population) FROM Country) ORDER BY GDP DESC;
SELECT Name, Population FROM City ORDER BY Population DESC Limit 30,10;
SELECT Country.Name, (Country.Population/Country.SurfaceArea) AS "PopulationDensity" FROM Country ORDER BY PopulationDensity; 

SELECT Country.Name, LifeExpectancy FROM Country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy LIMIT 1;

SELECT min(LifeExpectancy) FROM Country;

SELECT City.Name, City.Population, CountryCode From City ORDER BY Population DESC LIMIT 1;