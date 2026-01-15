-- Query 1: Sort countries alphabetically by name

SELECT *
FROM countries
ORDER BY name;

-- Query 2: Show name, population, and rounded percent of world population (as a whole percent)

SELECT
    name,
    population,
    ROUND(percent_of_world_pop * 100) AS world_percentage
FROM countries;

-- Query 3: Order countries by median age (youngest to oldest)

SELECT
    name,
    median_age
FROM countries
ORDER BY median_age;

-- Query 4: Categorize countries by median age using CASE

SELECT
    name,
    median_age,
    CASE
        WHEN median_age > 40 THEN 'Middle Aged'
        WHEN median_age > 30 THEN 'Young Professional'
        WHEN median_age > 20 THEN 'College Aged'
        ELSE 'Minor'
    END AS population_age_group
FROM countries
ORDER BY population_age_group;

-- Query 5: Countries with a population over 50 million (largest first)

SELECT
    name,
    population
FROM countries
WHERE population > 50000000
ORDER BY population DESC;

-- Query 6: Countries with median age under 35 and fertility rate greater than 3 (young + high fertility)

SELECT
    name,
    median_age,
    fertility_rate
FROM countries
WHERE median_age < 35
  AND fertility_rate > 3
ORDER BY median_age;

-- Query 7: Top 10 most densely populated countries (highest density per sq km)

SELECT
    name,
    density_per_sq_km,
    population,
    area_sq_km
FROM countries
ORDER BY density_per_sq_km DESC
LIMIT 10;

-- Query 8: Top 10 largest countries by land area (sq km)

SELECT
    name,
    area_sq_km,
    population,
    density_per_sq_km
FROM countries
ORDER BY area_sq_km DESC
LIMIT 10;

-- Query 9: Countries with the largest absolute population increase (population_change)

SELECT
    name,
    population,
    population_change,
    percent_one_year_change
FROM countries
ORDER BY population_change DESC
LIMIT 10;

-- Query 10: Categorize countries by net migration using CASE (net migrants)

SELECT
    name,
    net_migrants,
    CASE
        WHEN net_migrants > 0 THEN 'Net Inflow'
        WHEN net_migrants < 0 THEN 'Net Outflow'
        ELSE 'No Net Migration'
    END AS migration_type
FROM countries
ORDER BY net_migrants DESC;

-- Query 11: Calculate projected population next year using population_change (calculation + alias)

SELECT
    name,
    population,
    population_change,
    (population + population_change) AS projected_population
FROM countries
ORDER BY projected_population DESC
LIMIT 20;

-- Query 12: Group countries into population-size buckets (CASE + GROUP BY + HAVING)

SELECT
    CASE
        WHEN population >= 100000000 THEN 'Mega (100M+)'
        WHEN population >= 50000000 THEN 'Large (50M-99.9M)'
        WHEN population >= 10000000 THEN 'Medium (10M-49.9M)'
        ELSE 'Small (<10M)'
    END AS population_bucket,
    COUNT(*) AS country_count,
    AVG(median_age) AS avg_median_age,
    AVG(fertility_rate) AS avg_fertility_rate,
    AVG(percent_one_year_change) AS avg_percent_change
FROM countries
GROUP BY population_bucket
HAVING COUNT(*) >= 3
ORDER BY country_count DESC;
