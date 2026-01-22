--Question #1
--How many many unique orders were placed in January? In other words, how many distinct order ids do we have?

SELECT
	DISTINCT orderID
FROM JanSales
WHERE length(orderID)=6
AND orderID <> 'order ID';

--Question #2
--How many of those orders were for an iPhone?

SELECT
	COUNT(DISTINCT orderid)
FROM JanSales
WHERE PRODUCT = 'iPhone'
	AND length(orderID) = 6
	AND orderID <> 'order ID';
	
--Question #3
--Select the customer account numbers for all the orders that were placed in February.

SELECT 
	DISTINCT acctnum
FROM customers cust
	INNER JOIN BIT.FebSales feb
		ON cust.order_id = feb.orderID
WHERE length(orderID) =6
AND orderID <> 'order ID';

--Question #4
--Which product was the cheapest one sold in January, and what was the price?

SELECT
	DISTINCT Product,
	price
FROM JanSales
ORDER BY price ASC 
LIMIT 1;

--Question #5
--What is the total revenue for each product sold in January?
--(Revenue can be calculated using the number of products sold and the price of the products).

SELECT
    product,
    SUM(quantity * price) AS revenue
FROM JanSales
WHERE product <> 'Product'
GROUP BY product
HAVING SUM(quantity * price) > 0
ORDER BY revenue ASC;

--Question #6
--Which products were sold in February at 548 Lincoln St, Seattle, WA 98101, how many of each were sold, and what was the total revenue?

SELECT
    SUM(Quantity),
    Product,
    SUM (Quantity * price) AS revenue
FROM FebSales
WHERE location = '548 Lincoln St, Seattle, WA 98101'
GROUP BY Product;

--Question #7
--How many customers ordered more than 2 products at a time in February, and what was the average amount spent for those customers?

SELECT
	COUNT(DISTINCT cust.acctnum),
	AVG (Quantity * price)
FROM FebSales Feb
	LEFT JOIN customers cust
		ON Feb.orderID = cust.order_id
WHERE Feb.Quantity > 2
AND length(orderid) = 6
AND orderid <> 'Order ID';
