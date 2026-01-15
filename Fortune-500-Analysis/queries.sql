-- Query 1: Technology companies with at least 500 employees and maternity leave over 6 weeks

SELECT
	company_name,
	industry,
	employees,
	maternity_leave_weeks
FROM fortune_companies
WHERE industry = 'Technology'
	AND employees >= 500
	AND maternity_leave_weeks > 6
ORDER BY maternity_leave_weeks DESC, employees DESC;

-- Query 2: Retail companies sorted by revenue and employees with revenue per employee

SELECT
	company_name,
	industry,
	revenue,
	employees,
	(revenue * 1.0 / employees) AS revenue_per_employee
FROM fortune_companies
WHERE industry = 'Retail'
ORDER BY 
	revenue DESC, 
	employees DESC;

-- Query 3: Categorize companies by PTO level using a CASE expression

SELECT
	company_name,
	paid_time_off_days,
	industry,
	employees,
CASE	
	WHEN paid_time_off_days >=21 THEN 'Excellent'
	WHEN paid_time_off_days >=18 THEN 'Average'
	WHEN paid_time_off_days >=14 THEN 'Low'
	WHEN paid_time_off_days >=1 THEN 'Poor'
ELSE 'None'
END AS Paid_time
FROM fortune_companies
ORDER BY
	industry ASC,
    company_name ASC;

-- Query 4: Industry-level summary showing total employees and average employee tenure, filtered by minimum average tenure

SELECT
	industry,
	SUM (employees) AS industry_total,
	AVG (avg_employee_tenure) AS industry_retention
FROM fortune_companies
GROUP BY industry
	HAVING AVG(avg_employee_tenure) >= 3
ORDER BY industry_retention ASC;

-- Query 5: Companies without healthcare benefits excluding the Healthcare industry

SELECT
	industry,
	company_name,
	healthcare_benefits
FROM fortune_companies
WHERE healthcare_benefits = 0 AND industry NOT IN ('Healthcare')
ORDER BY industry, company_name ASC;
