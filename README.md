# COVID-19 Global Data Analysis (SQL Project)

## Overview
This project analyzes a 180-day COVID-19 dataset across 10 countries (~1,800 records) 
to uncover trends in case growth, mortality, and recovery using SQL.

## Dataset
`covid_data.csv` contains daily records with the following columns:
- `report_date` — date of the record
- `country` — country name
- `new_cases`, `new_deaths`, `new_recovered` — daily counts
- `total_cases`, `total_deaths`, `total_recovered` — cumulative counts
- `population` — country population

## Analysis Performed
Using `covid_analysis.sql`, the following insights were extracted:
- **Case Fatality Rate (CFR)** and **Recovery Rate** per country
- **Infection rate** as a percentage of population
- **Monthly trend** of new cases and deaths per country
- **Top 5 countries** by total cases
- **Rolling 7-day average** of new cases (trend smoothing) using window functions
- **Peak infection day** per country using `RANK()`

## Tools Used
- MySQL (SQL queries, window functions, aggregations, GROUP BY)
- Dataset prepared and structured for direct import into MySQL Workbench

## How to Run
1. Open MySQL Workbench (or any MySQL client)
2. Run the `CREATE DATABASE` and `CREATE TABLE` statements at the top of 
   `covid_analysis.sql`
3. Import `covid_data.csv` into the `covid_data` table (use `LOAD DATA INFILE` or 
   Workbench's Table Data Import Wizard)
4. Run each query section to reproduce the analysis

## Author
**Somnath Kadam**  
BCA Graduate | Aspiring Data Analyst  
📧 its.somnath09@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/somnathkadam-7683b2375)
