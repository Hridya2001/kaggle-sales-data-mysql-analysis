# Creating a New Database

CREATE DATABASE retail_data;
USE retail_data;


# creating a Tble

Create the Table
CREATE TABLE orders_data (
    Order_ID VARCHAR(20),
    Customer_ID VARCHAR(20),
    Segment VARCHAR(20),
    City VARCHAR(100),
    State VARCHAR(50),
    Region VARCHAR(20),
    Product_ID VARCHAR(30),
    Category VARCHAR(30),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(3,2),
    Profit DECIMAL(10,4)
);

select * from orders_data limit 5;


# Calculating total sales for each product category
mysql> SELECT Category, ROUND(SUM(Sales), 2) AS Category_Sales FROM orders_data GROUP BY Category ORDER BY Category_Sales DESC;

# Calculates the total sales and total profit
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders_data;

# Find the top 5 most profitable products
SELECT Product_ID, ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders_data
GROUP BY Product_ID
ORDER BY Total_Profit DESC
LIMIT 5;

# Find the top 5 products with the highest total losses 
SELECT Product_ID, ROUND(SUM(Profit), 2) AS Total_Loss
FROM orders_data
GROUP BY Product_ID
HAVING Total_Loss < 0
ORDER BY Total_Loss ASC
LIMIT 5;

# Calculate the segment wise profitability
SELECT Segment,
       ROUND(SUM(Sales), 2) AS Sales,
       ROUND(SUM(Profit), 2) AS Profit
FROM orders_data
GROUP BY Segment;

# Calculate the region wise sales and profit
SELECT Region,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders_data
GROUP BY Region;

# The top 5 best selling product by qty with category
SELECT Category, Product_ID, SUM(Quantity) AS Total_Units_Sold
FROM orders_data
GROUP BY Category, Product_ID
ORDER BY Total_Units_Sold DESC
LIMIT 5;







































