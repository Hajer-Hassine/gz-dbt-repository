SELECT 
EXTRACT(MONTH FROM date_date) AS datemonth,
ROUND(SUM(operational_margin - ads_cost),2) AS ads_margin,
ROUND(SUM(average_basket),2) AS average_basket,
ROUND(SUM(operational_margin),2) AS operational_margin,
SUM(ads_cost)AS ads_cost,
SUM(ads_impression) AS ads_impression,
sUM(ads_clicks) AS ads_clicks, 
SUM(quantity)AS quantity,
ROUND(SUM(revenue),2) AS revenue,
ROUND(SUM (purchase_cost),2) AS purchase_cost,
ROUND(SUM(shipping_fee),2) AS shipping_fee,
ROUND(SUM(log_cost),2) AS log_cost,
SUM(ship_cost) AS ship_cost,
ROUND(SUM(margin),2) AS margin
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth