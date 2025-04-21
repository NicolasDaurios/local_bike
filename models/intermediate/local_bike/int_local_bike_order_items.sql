select
order_unique_id,
order_id,
product_id,
references_by_order,
product_quantity,
product_price,
discount, 
ROUND(product_quantity * product_price * (1 - discount), 2) AS total_price

from {{ref ("stg_local_bike_order_items") }}