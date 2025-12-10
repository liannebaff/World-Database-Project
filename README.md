# 🌍 World-Database-Project

### 📝 Project Summary
This project explores the World relational database using MySQL and MySQL Workbench. The aim was to strengthen SQL skills in querying, joining tables and aggregating data, while extracting geographic, demographic and economic insights.

### 🎯 Key Skills Demonstrated:
`MySQL` &nbsp; `SQL querying and joins` &nbsp; `Exploratory data analysis` &nbsp; `Query structuring` &nbsp; `Data aggregation and filtering` &nbsp; 'Subquerying`

### 🧰 Tools & Technologies
- **SQL:** MySQL
- **Environment:** MySQL Workbench

---
### 🗂️ Database Overview & Structure

The World database, which models geographic information, was a sample dataset provided during the Data Technician bootcamp. It contains three main tables: `country`, `city` and `countrylanguage`.
- `country` includes information such as the continent, region, life expectancy, GNP and Population.
- `city` includes the name, country code, district and population.
- `countrylanguage` contains the country code, language, whether it is the offical language and percentage of speakers.


#### EER Diagram

<img width="723" height="540" alt="image" src="https://github.com/user-attachments/assets/524930e7-6e63-41ec-bc18-726c92c551d8" />  

**Relationships:** `country`(1) &mdash; (N) `city`; `country` (1) &mdash; (N) `countrylanguage`

---
### ⚙️ SQL Operations Demonstrated:  

| Operation                           | Purpose                                                        |
|-------------------------------------|----------------------------------------------------------------|
| `SELECT`                            | Retrieve data from one or more tables                          |
| `AS`                                | Rename columns or tables using an alias                        |
| `WHERE`                             | Filter rows based on a condition                               |
| `AND`                               | Combine multiple conditions that must *all* be true            |
| `IN`                                | Filter rows by matching against a list of values               |
| `BETWEEN`                           | Filter rows within a range (numbers, dates, text)              |
| `LIKE`                              | Filter rows using pattern matching (e.g., searching text)      |
| `INNER JOIN`                        | Combine data from multiple tables based on related columns     |
| `GROUP BY`                          | Group rows to perform aggregated calculations                  |
| `AVG` `COUNT`                       | Aggregate functions used to summarise data                     |
| `ORDER BY` & `ORDER BY DESC`        | Sort results in ascending or descending order                  |
| `LIMIT`                             | Restricts the number of rows returned by a query               |

---
### 🔎 SQL Process
This section outlines how I explored the World database using SQL, including the operations applied and queries developed to analyse the data.

#### 🧭 Approach

- Explored table structures and relationships using the EER diagram to understand primary keys, foreign keys and table dependencies.
- Identified key fields for joining tables across `city` `country` `countrylanguage`.
- Used filtering, grouping and aggregate functions to analyse the dataset.

#### ⚙️ SQL Operations in Practice
- `SELECT` ` FROM`: retrieving columns and rows from single tables.
- `WHERE` `BETWEEN` `LIKE`: filtering datasets based on conditions and ranges.
- `INNER JOIN`: To combine multiple tables e.g. `country` with `city`.
- `GROUP BY` & Aggregates (`AVG` `COUNT`): summarising data to understand averages and counts.
- `ORDER BY` `LIMIT`: sorting and restricting query results for readability and insights.
- `AS`: formatting output columns for clarity.

#### 📝 Example Queries
**1. Country with the Highest Life Expectancy**
``` sql
SELECT Country.Name, LifeExpectancy
FROM Country
ORDER BY LifeExpectancy DESC LIMIT 1; 
```

**2. Cities with a Population Larger than 2,000,000** 
```sql
SELECT City.Name, City.Population, CountryCode
From City
WHERE Population>2000000; 
```

**3. Identify the Capital of Spain**
```sql
SELECT Country.Name, City.Name
FROM Country
INNER JOIN City ON City.ID=Country.Capital
WHERE Country.Code="ESP";
```

**4. Countries with Low Population Density**
```sql
SELECT Country.Name, (Country.Population/Country.SurfaceArea) AS "PopulationDensity"
FROM Country ORDER BY PopulationDensity;  
```

**5. Average Population by Country**
```sql
SELECT Country.Name, AVG(city.population) FROM City INNER JOIN Country ON City.CountryCode=Country.Code GROUP BY Country.Name;
```

**6. Cities with Names including the word 'New'**
```sql
SELECT City.Name, CountryCode FROM City WHERE City.Name LIKE "%New%";
```
---

### 🧠 Insights 
- The country with the highest life expectancy was Andorra with 83.5 and the lowest was Zambia highlighting possible differences in healthcare access, living standards and economic development.
- There are seven countries with a population density of 0 people per unit of area indicating either extremely small or uninhabited territories.
- The city with the highest population was Mumbai in India and the city with the lowest population was Adamstown in Pitcairn, reflecting significant global variation in urbanisation and settlement patterns.

### 🪞 Reflections
- I strengthened my ability to write SQL queries involving filtering (e.g. `WHERE`), pattern matching (`LIKE`) and aggregate functions (e.g. `AVG`)
- Some queries depend heavily on data completeness and accuracy and missing country or city records could skew results.
- Without additional socioeconomic indicators (e.g. education levels, infant mortality rate, healthcare access, employment and poverty rates), some insights (e.g. life expectancy, population) are limited in depth.
- Some aggregate statistics (e.g. average population) can be heavily influenced by outliers.

### 🩰 Next Steps?
- It will be interesting to extend this analysis by exploring socioeconomic factors, such as education levels, household income and healthcare access/spending, and apply more advanced SQL techniques such as CTEs and window functions.

---
### 📂 Files in this Repo
- [`World_Database_Queries.sql`](World_Database_Queries.sql)
- [`World_DB_Create.sql`](World_DB_Create.sql)
  - Contains setup queries for creating tables and initial structure for the World database.
