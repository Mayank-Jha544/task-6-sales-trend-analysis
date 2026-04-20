# Sales Trend Analysis

## Objective

To analyze monthly revenue and order volume from sales data using SQL aggregation functions.

## Dataset

The dataset 'sales_data' contains following information:

* Order Date
* Order ID
* Product details
* Quantity Ordered
* Price Each
* Other related fields

## Approach

* Extracted **year** and **month** from the Order Date using SQLite `strftime()`
* Calculated **revenue** as: Quantity Ordered × Price Each
* Used `SUM()` to compute revenue
* Used `COUNT(DISTINCT Order ID)` to calculate order volume
* Grouped results by year and month
* Filtered data using `WHERE`
* Sorted results using `ORDER BY`

## SQL Query


SELECT 
    strftime('%Y', "Order Date") AS year,
    strftime('%m', "Order Date") AS month,
    SUM("Quantity Ordered" * "Price Each") AS total_revenue,
    COUNT(DISTINCT "Order ID") AS order_volume
FROM sales_data
WHERE "Order Date" BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY year, month
ORDER BY year, month;


## Tools Used

* SQLite
* DB Browser for SQLite

## Conclusion

This analysis helps identify sales trends over time by summarizing revenue and order volume on a monthly basis.

