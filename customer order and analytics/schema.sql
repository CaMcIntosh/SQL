--
-- File generated with SQLiteStudio v3.4.20 on Thu Jan 22 13:56:47 2026
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: AprSales
CREATE TABLE IF NOT EXISTS AprSales (
    orderID   VARCHAR (8),
    Product   VARCHAR (80),
    Quantity  INTEGER (3),
    price     DOUBLE (7, 2),
    orderdate DATETIME,
    location  VARCHAR (120) 
);


-- Table: customers
CREATE TABLE IF NOT EXISTS customers (
    order_id VARCHAR (8),
    acctnum  VARCHAR (10) 
);


-- Table: FebSales
CREATE TABLE IF NOT EXISTS FebSales (
    orderID   VARCHAR (8),
    Product   VARCHAR (80),
    Quantity  INTEGER (3),
    price     DOUBLE (7, 2),
    orderdate DATETIME,
    location  VARCHAR (120) 
);


-- Table: JanSales
CREATE TABLE IF NOT EXISTS JanSales (
    orderID   VARCHAR (8),
    Product   VARCHAR (80),
    Quantity  INTEGER (3),
    price     DOUBLE (7, 2),
    orderdate DATETIME,
    location  VARCHAR (120) 
);


-- Table: MarSales
CREATE TABLE IF NOT EXISTS MarSales (
    orderID   VARCHAR (8),
    Product   VARCHAR (80),
    Quantity  INTEGER (3),
    price     DOUBLE (7, 2),
    orderdate DATETIME,
    location  VARCHAR (120) 
);


-- Table: MaySales
CREATE TABLE IF NOT EXISTS MaySales (
    orderID   VARCHAR (8),
    Product   VARCHAR (80),
    Quantity  INTEGER (3),
    price     DOUBLE (7, 2),
    orderdate DATETIME,
    location  VARCHAR (120) 
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
