
SELECT 
    strftime('%Y', "Order Date") AS year,
    strftime('%m', "Order Date") AS month,
    SUM("Quantity Ordered" * "Price Each") AS total_revenue,
    COUNT(DISTINCT "Order ID") AS order_volume
FROM sales_data
WHERE "Order Date" BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY year, month
ORDER BY year, month;
