-- Product Performance Analysis
-- Q5 = kategori yang paling sering dibeli
-- Q5 Which product categories have the highest number of orders?
SELECT
    pct.string_field_1 AS product_category,
    COUNT(*) AS total_orders
FROM `olist-business-analysis.olist.order_items` oi
JOIN `olist-business-analysis.olist.products` p
    ON oi.product_id = p.product_id
LEFT JOIN `olist-business-analysis.olist.product_category_translation` pct
    ON p.product_category_name = pct.string_field_0
GROUP BY product_category
ORDER BY total_orders DESC
LIMIT 10;

-- Q6 = kategori yang menghasilkan pendapatan terbesar
-- Which product categories generate the highest revenue?
SELECT
    pct.string_field_1 AS product_category,
    ROUND(SUM(oi.price),2) AS total_revenue
FROM `olist-business-analysis.olist.order_items` oi
JOIN `olist-business-analysis.olist.products` p
    ON oi.product_id = p.product_id
LEFT JOIN `olist-business-analysis.olist.product_category_translation` pct
    ON p.product_category_name = pct.string_field_0
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 10;

-- Q7 Which product categories have the highest average selling price?
SELECT
    pct.string_field_1 AS product_category,
    ROUND(AVG(oi.price),2) AS avg_price
FROM `olist-business-analysis.olist.order_items` oi
JOIN `olist-business-analysis.olist.products` p
    ON oi.product_id = p.product_id
LEFT JOIN `olist-business-analysis.olist.product_category_translation` pct
    ON p.product_category_name = pct.string_field_0
GROUP BY product_category
ORDER BY avg_price DESC
LIMIT 10;

-- Q8 Which products are the best-selling?
SELECT
    oi.product_id,
    COUNT(*) AS total_orders
FROM `olist-business-analysis.olist.order_items` oi
GROUP BY oi.product_id
ORDER BY total_orders DESC
LIMIT 10;