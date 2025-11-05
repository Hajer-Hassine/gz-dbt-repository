SELECT date_date,
COUNT(orders_id) AS number_of_transactions,
ROUND(SUM(revenue),2) AS revenue,
ROUND(AVG(revenue),2) AS Average_Basket,
ROUND(SUM(Operational_margin),2) AS Operational_Margin,
ROUND(SUM(purchase_cost),2) AS purchase_cost,
ROUND(SUM(shipping_fee),2) AS shipping_fee,
ROUND(SUM(logcost),2) AS log_cost,
SUM(quantity) AS quantity
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date

