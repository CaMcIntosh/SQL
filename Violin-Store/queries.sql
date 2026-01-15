-- Query 1: View full inventory sorted by price (lowest to highest)

SELECT *
FROM Violin_store
ORDER BY price;

-- Query 2: Items rated above 4.5, sorted by rating (highest first)

SELECT *
FROM Violin_store
WHERE rating > 4.5
ORDER BY rating DESC;

-- Query 3: Inventory value per item (quantity * price) with an alias

SELECT
    item,
    category,
    quantity,
    price,
    (quantity * price) AS inventory_value
FROM Violin_store
ORDER BY inventory_value DESC;

-- Query 4: Categorize price tiers using CASE (budget/mid/premium)

SELECT
    item,
    category,
    price,
    CASE
        WHEN price >= 1000 THEN 'Premium'
        WHEN price BETWEEN 100 AND 999 THEN 'Mid-range'
        ELSE 'Budget'
    END AS price_tier
FROM Violin_store
ORDER BY category ASC, price DESC;

-- Query 5: Show only selected categories using IN

SELECT
    item,
    category,
    price,
    rating
FROM Violin_store
WHERE category IN ('Instrument', 'Bows')
ORDER BY category ASC, price DESC;

-- Query 6: Category summary (count of items, total quantity, avg rating)

SELECT
    category,
    COUNT(*) AS item_count,
    SUM(quantity) AS total_units,
    AVG(rating) AS avg_rating
FROM Violin_store
GROUP BY category
ORDER BY category ASC;

-- Query 7: Categories with strong reviews (HAVING avg rating >= 4.6)

SELECT
    category,
    AVG(rating) AS avg_rating
FROM Violin_store
GROUP BY category
HAVING AVG(rating) >= 4.6
ORDER BY avg_rating DESC;

-- Query 8: Low-stock items (quantity <= 6) excluding Accessories (NOT IN)

SELECT
    item,
    category,
    quantity
FROM Violin_store
WHERE quantity <= 6
  AND category NOT IN ('Accessories')
ORDER BY quantity ASC, item ASC;
