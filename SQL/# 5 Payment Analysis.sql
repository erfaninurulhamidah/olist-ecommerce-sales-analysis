-- 05 Payment Analysis Dataset yang dipakai: order_payments Tujuan: Memahami perilaku pembayaran pelanggan.
--Business Question 13 Insight yang dicari: Metode pembayaran paling populer.
--Which payment methods are used most frequently?
SELECT
    payment_type,
    COUNT(*) AS total_transactions
FROM `olist-business-analysis.olist.order_payments`
GROUP BY payment_type
ORDER BY total_transactions DESC;

--Business Question 14
--Which payment methods generate the highest payment value?
SELECT
    payment_type,
    ROUND(SUM(payment_value),2) AS total_payment
FROM `olist-business-analysis.olist.order_payments`
GROUP BY payment_type
ORDER BY total_payment DESC;

--Business Question 15 Rata-rata nilai transaksi per metode pembayaran.
--What is the average payment value by payment method?
SELECT
    payment_type,
    ROUND(AVG(payment_value),2) AS avg_payment
FROM `olist-business-analysis.olist.order_payments`
GROUP BY payment_type
ORDER BY avg_payment DESC;

--Business Question 16 Apakah pelanggan lebih sering membayar lunas atau mencicil.
-- How many installments do customers usually choose?
SELECT
    payment_installments,
    COUNT(*) AS total_transactions
FROM `olist-business-analysis.olist.order_payments`
GROUP BY payment_installments
ORDER BY payment_installments;