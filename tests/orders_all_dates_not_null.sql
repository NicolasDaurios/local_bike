SELECT *
FROM {{ ref('mrt_local_bike_orders') }}
WHERE order_date IS NULL
OR required_date IS NULL
OR shipped_date IS NULL
