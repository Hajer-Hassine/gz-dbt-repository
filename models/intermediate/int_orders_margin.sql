SELECT orders_id, date_date,
ROUND(SUM(revenue),2) AS revenue,
SUM (quantity) AS quantity, 
ROUND(SUM(margin),2) AS margin, 
ROUND(SUM(purchase_cost),2) AS purchase_cost
FROM {{ ref('int_sales_margin') }}
GROUP BY orders_id,date_date
