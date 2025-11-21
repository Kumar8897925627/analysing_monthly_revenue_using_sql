SELECT * FROM MONTHLY_SALES;

SELECT DISTINCT (CATEGORY)AS TYPES_OF_CATEGORIES FROM MONTHLY_SALES;

SELECT COUNT(*) FROM MONTHLY_SALES;

SELECT MAX(PRICE)FROM monthly_sales;

SELECT MIN(PRICE) FROM monthly_sales;

SELECT * FROM MONTHLY_SALES WHERE REVIEW_COUNT IN (SELECT MAX(REVIEW_COUNT)FROM monthly_sales);

SELECT * FROM monthly_sales WHERE CATEGORY IN (SELECT DISTINCT(CATEGORY) FROM monthly_sales);

SELECT SUM(CASE WHEN price < 0 THEN 1 ELSE 0 END) AS negative_prices,
    SUM(CASE WHEN review_score NOT BETWEEN 1 AND 5 THEN 1 ELSE 0 END) AS invalid_reviews
FROM monthly_sales;

WITH SALES AS (
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_1 AS sales, 1 AS month_no FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_2, 2 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_3, 3 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_4, 4 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_5, 5 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_6, 6 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_7, 7 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_8, 8 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_9, 9 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_10, 10 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_11, 11 FROM monthly_sales UNION ALL
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_12, 12 FROM monthly_sales
)
SELECT * FROM SALES;


SELECT * FROM monthly_sales;








