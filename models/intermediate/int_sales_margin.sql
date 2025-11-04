WITH sub AS (
    SELECT products_id, date_date, orders_id, revenue,quantity, purchase_price,
(quantity*purchase_price) AS purchase_cost
FROM {{ ref('stg_raw__sales') }}
LEFT JOIN {{ ref('stg_raw__product') }}
USING (products_id)
)
, add_margin AS (
SELECT *,
ROUND((revenue - purchase_cost),2) AS margin
FROM sub)

SELECT *
FROM add_margin