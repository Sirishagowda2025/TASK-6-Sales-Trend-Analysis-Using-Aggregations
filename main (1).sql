CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INTEGER
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 150.00, 101),
(2, '2024-01-20', 200.00, 102),
(3, '2024-02-10', 120.00, 103),
(4, '2024-02-12', 180.00, 104),
(5, '2024-03-05', 250.00, 105),
(6, '2024-03-22', 220.00, 106),
(7, '2024-04-01', 300.00, 107),
(8, '2024-04-15', 100.00, 108),
(9, '2024-05-03', 400.00, 109),
(10, '2024-05-10', 500.00, 110);

-- Monthly Revenue and Order Volume Analysis

SELECT 
    STRFTIME('%Y', order_date) || '-' || STRFTIME('%m', order_date) AS month,
    'Revenue: ' || SUM(amount) || ', Orders: ' || COUNT(DISTINCT order_id) AS summary
FROM online_sales
GROUP BY STRFTIME('%Y', order_date), STRFTIME('%m', order_date)
ORDER BY month;

-- ✅ Top 3 Months by Total Revenue

SELECT
    'Month | Total Revenue' AS header
UNION ALL
SELECT
    month_year || ' | ' || printf('%.2f', SUM(amount)) AS row
FROM (
    SELECT
        STRFTIME('%Y-%m', order_date) AS month_year,
        amount
    FROM
        online_sales
)
GROUP BY
    month_year
ORDER BY
    SUM(amount) DESC
LIMIT 3;



-- Bonus Query: Top-Selling Product by Revenue Per Month

WITH monthly_product_sales AS (
    SELECT
        STRFTIME('%Y-%m', order_date) AS month,
        product_id,
        SUM(amount) AS total_revenue
    FROM online_sales
    GROUP BY month, product_id
),
ranked_products AS (
    SELECT
        month,
        product_id,
        total_revenue,
        RANK() OVER (PARTITION BY month ORDER BY total_revenue DESC) AS rnk
    FROM monthly_product_sales
)
SELECT
    month,
    product_id,
    total_revenue
FROM ranked_products
WHERE rnk = 1
ORDER BY month;











