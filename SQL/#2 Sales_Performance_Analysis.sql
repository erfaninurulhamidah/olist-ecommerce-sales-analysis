-- Q1 Bagaimana tren jumlah pesanan dari waktu ke waktu?
SELECT
  EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
  EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
  COUNT(order_id) AS total_orders
FROM `olist-business-analysis.olist.orders`
GROUP BY year, month
ORDER BY year, month;

-- Q2 Status pesanan paling banyak apa?
SELECT
order_status,
COUNT(*) AS total_orders
FROM `olist-business-analysis.olist.orders`
GROUP BY order_status
ORDER BY total_orders DESC;

-- Q3 Berapa rata-rata waktu pengiriman?
SELECT
AVG(
DATE_DIFF(order_delivered_customer_date,
order_purchase_timestamp,
DAY)
) AS avg_delivery_days
FROM `olist-business-analysis.olist.orders`
WHERE order_delivered_customer_date IS NOT NULL;

-- Q4 Berapa banyak order yang berhasil dikirim?
SELECT
COUNT(*) total_delivered
FROM `olist-business-analysis.olist.orders`
WHERE order_status='delivered';