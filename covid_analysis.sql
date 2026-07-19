CREATE DATABASE covid_analysis;
USE covid_analysis;

CREATE TABLE covid_data (
    report_date DATE,
    country VARCHAR(50),
    new_cases INT,
    new_deaths INT,
    new_recovered INT,
    total_cases INT,
    total_deaths INT,
    total_recovered INT,
    population BIGINT
);

-- Total cases and deaths per country
SELECT country, MAX(total_cases) AS total_cases, MAX(total_deaths) AS total_deaths
FROM covid_data
GROUP BY country
ORDER BY total_cases DESC;

-- Case Fatality Rate per country
SELECT country,
    ROUND(MAX(total_deaths) * 100.0 / MAX(total_cases), 2) AS fatality_rate_pct
FROM covid_data
GROUP BY country
ORDER BY fatality_rate_pct DESC;

-- Recovery Rate per country
SELECT country,
    ROUND(MAX(total_recovered) * 100.0 / MAX(total_cases), 2) AS recovery_rate_pct
FROM covid_data
GROUP BY country
ORDER BY recovery_rate_pct DESC;

-- Top 5 countries by total cases
SELECT country, MAX(total_cases) AS total_cases
FROM covid_data
GROUP BY country
ORDER BY total_cases DESC
LIMIT 5;

-- Monthly new cases trend
SELECT country, DATE_FORMAT(report_date, '%Y-%m') AS month,
    SUM(new_cases) AS monthly_cases
FROM covid_data
GROUP BY country, month
ORDER BY country, month;
