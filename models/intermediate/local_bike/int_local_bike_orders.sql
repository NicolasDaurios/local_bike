SELECT

  order_id,
  customer_id,
  order_date,
  required_date,
  COALESCE(PARSE_DATE('%Y-%m-%d',
      CASE 
        WHEN shipped_date = 'NULL' THEN NULL
        ELSE shipped_date
      END
    ),
    DATE '1900-01-01'
  ) AS shipped_date,
  store_id,
  staff_id

FROM {{ ref("stg_local_bike_orders") }}
