WITH orders AS (
  SELECT
    order_id,
    customer_id,
    order_date,
    required_date,
    COALESCE(
      PARSE_DATE(
        '%Y-%m-%d',
        CASE
          WHEN shipped_date = 'NULL' THEN NULL
          ELSE shipped_date
        END
      ),
      DATE '1900-01-01'
    ) AS shipped_date,
    store_id,
    staff_id
  FROM
    {{ ref('stg_local_bike_orders') }}
),

orders_per_customer AS (
  SELECT
    customer_id,
    COUNT(order_id) AS total_orders_by_customer
  FROM
    orders
  GROUP BY
    customer_id
)

SELECT
  o.*,
  c.total_orders_by_customer
FROM
  orders o
JOIN
  orders_per_customer c
ON
  o.customer_id = c.customer_id


