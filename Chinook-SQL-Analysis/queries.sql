--1. Show Customers (their full names, customer ID, and country) who are not in the US. 

SELECT	
	CustomerId,
	FirstName,
	LastName,
	Country
FROM Chinook.Customers
WHERE Country != 'USA'
ORDER BY Country ASC;

--2. Show only the Customers from Brazil.

SELECT
	CustomerId,
	LastName,
	FirstName,
	country
FROM Chinook.Customers
WHERE Country = 'Brazil';

--3. Find the Invoices of customers who are from Brazil. The resulting table should show the customer's full name, Invoice ID, Date of the invoice, and billing country.

SELECT
	c.FirstName,
	c.LastName,
	i.InvoiceId,
	i.InvoiceDate,
	i.BillingCountry
FROM invoices I
	LEFT JOIN customers c
		ON i.CustomerId = c.CustomerID
WHERE c.country = 'Brazil'
AND i.BillingCountry = 'Brazil'
ORDER BY i.InvoiceID ASC;

--4. Show the Employees who are Sales Agents.

SELECT
	LastName,
	FirstName,
	Title
FROM Employees
WHERE Title = 'Sales Support Agent';

or 

SELECT
	LastName,
	FirstName,
	Title
FROM Employees
WHERE Title LIKE 'Sales%';

--5. Find a unique/distinct list of billing countries from the Invoice table.

SELECT	
	DISTINCT BillingCountry
FROM invoices;

--6. Provide a query that shows the invoices associated with each sales agent. The resulting table should include the Sales Agent's full name.

SELECT
    e.EmployeeId,
    e.FirstName || ' ' || e.LastName AS SalesAgentFullName,
    i.InvoiceId,
    i.InvoiceDate,
    i.Total
FROM Chinook.Employees e
JOIN Chinook.Customers c
    ON c.SupportRepId = e.EmployeeId
JOIN Chinook.Invoices i
    ON i.CustomerId = c.CustomerId
WHERE e.Title LIKE '%Sales%'
ORDER BY SalesAgentFullName, i.InvoiceDate;

--7. Show the Invoice Total, Customer name, Country, and Sales Agent name for all invoices and customers.

SELECT
    i.InvoiceId,
    i.InvoiceDate,
    i.Total AS InvoiceTotal,
    c.FirstName || ' ' || c.LastName AS CustomerFullName,
    c.Country,
    e.FirstName || ' ' || e.LastName AS SalesAgentFullName
FROM Chinook.Invoices i
JOIN Chinook.Customers c
    ON i.CustomerId = c.CustomerId
LEFT JOIN Chinook.Employees e
    ON c.SupportRepId = e.EmployeeId
ORDER BY i.InvoiceDate;

--8. How many Invoices were there in 2009?

SELECT
    COUNT(*) AS InvoiceCount_2009
FROM Chinook.Invoices
WHERE strftime('%Y', InvoiceDate) = '2009';

--9. What are the total sales for 2009?

SELECT
    SUM(Total) AS TotalSales_2009
FROM Chinook.Invoices
WHERE strftime('%Y', InvoiceDate) = '2009';


--10. Write a query that includes the purchased track name with each invoice line ID.

SELECT
    ii.InvoiceLineId,
    t.Name AS TrackName
FROM Chinook.Invoice_Items ii
JOIN Chinook.Tracks t
    ON ii.TrackId = t.TrackId
ORDER BY ii.InvoiceLineId;


--11. Write a query that includes the purchased track name AND artist name with each invoice line ID.

SELECT
    ii.InvoiceLineId,
    t.Name AS TrackName,
    ar.Name AS ArtistName
FROM Chinook.Invoice_Items ii
JOIN Chinook.Tracks t
    ON ii.TrackId = t.TrackId
JOIN Chinook.Albums al
    ON t.AlbumId = al.AlbumId
JOIN Chinook.Artists ar
    ON al.ArtistId = ar.ArtistId
ORDER BY ii.InvoiceLineId;

--12. Provide a query that shows all the Tracks, and include the Album name, Media type, and Genre.

SELECT
    t.TrackId,
    t.Name AS TrackName,
    al.Title AS AlbumTitle,
    mt.Name AS MediaType,
    g.Name AS Genre
FROM Chinook.Tracks t
LEFT JOIN Chinook.Albums al
    ON t.AlbumId = al.AlbumId
LEFT JOIN Chinook.Media_Types mt
    ON t.MediaTypeId = mt.MediaTypeId
LEFT JOIN Chinook.Genres g
    ON t.GenreId = g.GenreId
ORDER BY t.Name;

--13. Show the total sales made by each sales agent.

SELECT
    e.EmployeeId,
    e.FirstName || ' ' || e.LastName AS SalesAgentFullName,
    SUM(i.Total) AS TotalSales
FROM Chinook.Employees e
JOIN Chinook.Customers c
    ON c.SupportRepId = e.EmployeeId
JOIN Chinook.Invoices i
    ON i.CustomerId = c.CustomerId
WHERE e.Title LIKE '%Sales%'
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY TotalSales DESC;

--14. Which sales agent made the most dollars in sales in 2009?

SELECT
    e.EmployeeId,
    e.FirstName || ' ' || e.LastName AS SalesAgentFullName,
    SUM(i.Total) AS TotalSales_2009
FROM Chinook.Employees e
JOIN Chinook.Customers c
    ON c.SupportRepId = e.EmployeeId
JOIN Chinook.Invoices i
    ON i.CustomerId = c.CustomerId
WHERE e.Title LIKE '%Sales%'
  AND strftime('%Y', i.InvoiceDate) = '2009'
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY TotalSales_2009 DESC
LIMIT 1;
