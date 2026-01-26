# Chinook SQL Sales Analysis

Analysis of customer behavior, sales performance, and employee contributions for a digital music store using SQL. This project explores transactional data to answer common business questions related to revenue, purchasing trends, and sales agent performance.

## Dataset Description

The Chinook database represents a digital media store, including customers, invoices, purchased tracks, and employee sales support relationships.

Key tables used in this analysis:

### customers
- CustomerId — unique customer identifier  
- FirstName — customer first name  
- LastName — customer last name  
- Country — customer country  
- SupportRepId — assigned sales agent  

### employees
- EmployeeId — unique employee identifier  
- FirstName — employee first name  
- LastName — employee last name  
- Title — job title (e.g., Sales Support Agent)  

### invoices
- InvoiceId — unique invoice identifier  
- CustomerId — customer associated with the invoice  
- InvoiceDate — date of purchase  
- BillingCountry — billing country  
- Total — total invoice amount  

### invoice_items
- InvoiceLineId — unique invoice line identifier  
- InvoiceId — associated invoice  
- TrackId — purchased track  
- UnitPrice — price per track  
- Quantity — number of tracks purchased  

### tracks
- TrackId — unique track identifier  
- Name — track name  
- AlbumId — associated album  
- MediaTypeId — media format  
- GenreId — genre classification  

### albums
- AlbumId — unique album identifier  
- Title — album title  
- ArtistId — associated artist  

### artists
- ArtistId — unique artist identifier  
- Name — artist name  

### genres
- GenreId — unique genre identifier  
- Name — genre name  

### media_types
- MediaTypeId — unique media type identifier  
- Name — media format (e.g., MPEG audio, AAC)

## Analysis Objectives

Sample business questions explored in this project include:

- Which invoices are associated with each sales agent?
- How much revenue did each sales agent generate?
- How many invoices were issued in a given year?
- What were the total sales for a specific year?
- Which tracks and artists were purchased across invoices?
- How are tracks distributed by album, genre, and media type?
- Which sales agent generated the highest revenue in 2009?

## Files Included

- `schema.sql` — SQL schema defining tables and relationships  
- `queries.sql` — SQL queries used to answer the analysis questions  
- `README.md` — project overview and documentation  

## Tools & Skills

- SQL (SQLite)  
- Joins (INNER, LEFT)  
- Aggregations (`SUM`, `COUNT`)  
- Date filtering  
- Relational database analysis  

