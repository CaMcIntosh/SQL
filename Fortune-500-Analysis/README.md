# Fortune 500 Analysis

Analysis of large corporations across multiple industries to compare workforce size, benefits, retention, and revenue efficiency using SQL.

## Dataset Description

Fields included in this dataset:

- company_name — company name
- industry — industry sector (Technology, Retail, Energy, etc.)
- revenue — annual revenue (billions USD)
- employees — total employees
- healthcare_benefits — binary indicator (1 = offers benefits, 0 = no benefits)
- paid_time_off_days — number of paid days off
- maternity_leave_weeks — maternity leave duration (weeks)
- avg_employee_tenure — average employee tenure (years)

Industries represented include Technology, Retail, Energy, Telecommunications, Finance, Healthcare, and Manufacturing.

## Analysis Objectives

Sample business questions explored:

- Which technology firms offer the strongest maternity leave benefits?
- How does revenue per employee vary within the retail sector?
- How can PTO policies be categorized into tiers?
- Which industries show higher retention through average tenure?
- Which non-healthcare companies lack healthcare benefits?

## SQL Techniques Applied

This project includes:

- WHERE filtering
- ORDER BY sorting
- Calculated fields (revenue per employee)
- CASE expressions for category labeling
- GROUP BY with aggregation
- HAVING for post-aggregation filtering

## Example Insights

Observations visible from the queries include:

- Technology companies often provide stronger PTO and leave packages.
- Retail companies tend to have large headcounts with lower revenue per employee.
- Manufacturing and Energy industries show above-average employee tenure.
- Several non-healthcare companies do not offer healthcare benefits.

## Tools Used

- SQL (SQLite-style syntax)

