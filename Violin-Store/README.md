# Violin Store Inventory Analysis

SQL-based analysis of a violin shop dataset focused on inventory levels, pricing structure, rating trends, and category performance.

## Dataset Description

Fields included in this dataset:

- item — product name
- category — classification (Instrument, Bows, Accessories, Strings, Cases)
- quantity — number of units in stock
- price — retail price (USD)
- rating — average customer rating (0–5 scale)

Categories include Instruments, Bows, Accessories, Strings, and Cases.

## Analysis Objectives

Sample business questions explored:

- Which item categories drive the highest inventory value?
- What items are premium-priced versus budget-priced?
- Which products receive the strongest customer ratings?
- Which categories require restocking based on low inventory?
- How do categories compare in terms of total units and average ratings?

## SQL Concepts Demonstrated

This project includes:

- ORDER BY sorting
- WHERE filtering
- Calculated fields (inventory_value = quantity × price)
- CASE expressions for pricing tiers
- GROUP BY aggregation
- HAVING for post-aggregation category filtering
- IN and NOT IN filtering for multi-value selections

## Example Insights

Observations visible from the queries include:

- Instruments and Cases generally occupy the premium pricing tier.
- Accessories and Strings often classify as budget to mid-range.
- Inventory value varies significantly across categories due to unit cost differences.
- Several categories maintain strong average ratings despite price variation.
- Low-stock conditions highlight replenishment candidates outside Accessories.

## Tools Used

- SQL (SQLite-style syntax)
