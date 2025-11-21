# analysing_monthly_revenue_using_sql
E-Commerce Monthly Sales Analysis using SQL

This repository contains a complete data analysis project using SQL on monthly e-commerce sales data downloaded from Kaggle. The dataset includes product-level sales across 12 months, along with pricing, category, review score, and review count.

The project demonstrates:
• Data import and verification in SQL
• Data transformation using UNPIVOT / CTE (monthly columns → rows)
• Time-based analysis (monthly revenue, growth trends)
• Product and category performance evaluation
• Analytical SQL functions such as LAG, LEAD, RANK
• Aggregations using SUM(), AVG(), COUNT(), MAX(), MIN()
• GROUP BY, HAVING filtering
• Insights generation for business decision-making

Suitable For:
✔ SQL practice and portfolio projects  
✔ Interview preparation (SQL window functions & CTEs)  
✔ Academic mini-project or use case  
✔ Data analysis using pure SQL (no Python or BI tools)

Dataset Reference:
- Kaggle monthly e-commerce sales data
- Fields: product_id, product_name, category, price, review_score, review_count, sales_month_1 … sales_month_12

Quick Highlights:
• Monthly revenue trending
• Top & worst performing products
• Category-wise sales contribution
• Effect of review score on sales
• Month-over-month sales growth using SQL window functions

Recommended SQL Tools:
✔ Oracle / PostgreSQL / MySQL  
✔ SQL Developer / DBeaver / VS Code SQL Extension

Sample Query:
```sql
WITH monthly_sales AS (
    SELECT product_id, product_name, category, price,
           review_score, review_count,
           sales_month_1 AS sales, 1 AS month_no FROM product_sales UNION ALL
    -- Repeat for months 2 to 12
)
SELECT month_no, SUM(sales * price) AS total_revenue
FROM monthly_sales
GROUP BY month_no
ORDER BY month_no;
