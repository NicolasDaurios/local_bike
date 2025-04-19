select
product_id,
REGEXP_REPLACE(product_name, r' - \d{4}$', '') AS product_name,
brand_id,
category_id,
model_year,
list_price

from {{ ref ("stg_local_bike_products") }}