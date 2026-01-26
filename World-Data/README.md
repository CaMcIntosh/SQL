# World Data Demographic Analysis

Exploratory SQL analysis of country-level demographic data examining global population distribution, growth trends, fertility, age structure, and migration patterns.

## Dataset Description

This dataset contains country-level demographic indicators used to analyze population dynamics across geographic regions.

Key fields include:

- country — country name  
- region — geographic classification (Africa, Asia, Europe, North America, South America, Oceania)  
- population — total population  
- population_growth — annual population growth rate (percentage)  
- fertility_rate — average number of births per woman  
- median_age — median age of the population  
- net_migration — net migration rate  

## Analysis Objectives

This project explores high-level demographic questions such as:

- How do population size and growth vary across global regions?
- Which countries exhibit high fertility and young population structures?
- Which regions tend toward aging populations and lower growth?
- How does net migration differ by region and demographic profile?
- How are countries distributed across population size tiers?

## SQL Techniques Applied

This analysis demonstrates the use of:

- Multi-condition filtering with `WHERE`
- Sorting and ranking with `ORDER BY` and `LIMIT`
- `CASE` expressions for demographic categorization
- Aggregations using `GROUP BY`
- Filtered summaries using `HAVING`
- Calculated fields for projections and comparisons

## Example Insights

Key observations from the analysis include:

- Countries with younger median ages tend to exhibit higher fertility and growth rates.
- Regions such as Europe and Oceania display older population profiles and slower growth.
- Net migration patterns vary significantly across regions, reflecting economic and demographic pressures.
- Grouping countries into population tiers highlights demographic concentration and regional diversity.

## Tools Used

- SQL (SQLite)
