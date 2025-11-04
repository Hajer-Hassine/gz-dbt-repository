WITH SUB AS (SELECT *
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_raw__ship') }}
USING (orders_id))

SELECT*,
margin + shipping_fee - logcost - ship_cost AS Operational_margin
FROM SUB