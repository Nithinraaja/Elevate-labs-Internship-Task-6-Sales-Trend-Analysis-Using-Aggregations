create database online_sales;
use online_sales;

CREATE TABLE orders (
    transaction_id VARCHAR(50) PRIMARY KEY,
    order_date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(100),
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(12,2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);
select * from orders;

-- -- Query for Monthly Revenue & Order Volume
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS `year_month`,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY `year_month`;

