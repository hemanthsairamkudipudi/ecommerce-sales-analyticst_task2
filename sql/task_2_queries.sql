-- ==========================================
-- TASK 2: SQL FOR DATA EXTRACTION
-- E-COMMERCE SALES ANALYTICS
-- ==========================================


-- ==========================================
-- 1. BASIC SQL QUERIES
-- ==========================================

-- View first 10 records
SELECT *
FROM ecommerce_sales
LIMIT 10;


-- Filter orders with revenue greater than 1000
SELECT *
FROM ecommerce_sales
WHERE revenue > 1000;


-- Top 10 orders by revenue
SELECT
    order_id,
    product_category,
    revenue
FROM ecommerce_sales
ORDER BY revenue DESC
LIMIT 10;


-- Revenue by product category
SELECT
    product_category,
    SUM(revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
ORDER BY total_revenue DESC;


-- Product categories with revenue greater than 100000
SELECT
    product_category,
    SUM(revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
HAVING SUM(revenue) > 100000;


-- ==========================================
-- 2. ADVANCED SQL QUERIES
-- ==========================================

-- Orders with revenue above the average revenue
SELECT *
FROM ecommerce_sales
WHERE revenue > (
    SELECT AVG(revenue)
    FROM ecommerce_sales
);


-- CTE: Revenue by region
WITH regional_sales AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue
    FROM ecommerce_sales
    GROUP BY region
)

SELECT *
FROM regional_sales
ORDER BY total_revenue DESC;


-- Window Function: Rank product categories by revenue
WITH category_sales AS (
    SELECT
        product_category,
        SUM(revenue) AS total_revenue
    FROM ecommerce_sales
    GROUP BY product_category
)

SELECT
    product_category,
    total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank
FROM category_sales;


-- ==========================================
-- 3. BUSINESS QUESTIONS
-- ==========================================

-- Q1: Top 5 product categories by revenue
SELECT
    product_category,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 5;


-- Q2: Revenue by region
SELECT
    region,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY region
ORDER BY total_revenue DESC;


-- Q3: Monthly sales trend
SELECT
    order_year,
    order_month,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;


-- Q4: Most frequently used payment method
SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY total_orders DESC;


-- Q5: Average customer rating by product category
SELECT
    product_category,
    ROUND(AVG(customer_rating), 2) AS average_rating
FROM ecommerce_sales
GROUP BY product_category
ORDER BY average_rating DESC;


-- Q6: Orders above average revenue
SELECT
    order_id,
    product_category,
    revenue
FROM ecommerce_sales
WHERE revenue > (
    SELECT AVG(revenue)
    FROM ecommerce_sales
)
ORDER BY revenue DESC;


-- Q7: Top 10 highest-value orders
SELECT
    order_id,
    product_category,
    region,
    revenue
FROM ecommerce_sales
ORDER BY revenue DESC
LIMIT 10;


-- Q8: Product categories with above-average revenue
SELECT
    product_category,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
HAVING SUM(revenue) > (
    SELECT AVG(category_revenue)
    FROM (
        SELECT SUM(revenue) AS category_revenue
        FROM ecommerce_sales
        GROUP BY product_category
    )
)
ORDER BY total_revenue DESC;


-- Q9: Rank regions by total revenue
WITH regional_sales AS (
    SELECT
        region,
        SUM(revenue) AS total_revenue
    FROM ecommerce_sales
    GROUP BY region
)

SELECT
    region,
    ROUND(total_revenue, 2) AS total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank
FROM regional_sales;


-- Q10: Month with the highest revenue
SELECT
    order_year,
    order_month,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY order_year, order_month
ORDER BY total_revenue DESC
LIMIT 1;