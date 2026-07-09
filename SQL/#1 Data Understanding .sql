-- =====================================================
-- DATA UNDERSTANDING
-- =====================================================

-- Query 1: Total Orders
SELECT COUNT(*) AS total_orders
FROM `olist-business-analysis.olist.orders`;

-- Query 2: Total Customers
SELECT COUNT(*) AS total_customers
FROM `olist-business-analysis.olist.customers`;

-- Query 3: Total Products
SELECT COUNT(*) AS total_products
FROM `olist-business-analysis.olist.products`;

-- Query 4: Total Reviews
SELECT COUNT(*) AS total_reviews
FROM `olist-business-analysis.olist.order_reviews`;

-- Query 5: Total Payments
SELECT COUNT(*) AS total_payments
FROM `olist-business-analysis.olist.order_payments`;