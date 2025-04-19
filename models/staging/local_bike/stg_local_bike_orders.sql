select order_id,
customer_id,
order_date,
required_date,
NULLIF(shipped_date, '') AS shipped_date,
store_id,
staff_id

from {{ source("local_bike", "orders")}}

