select
concat(cast(order_id as string), '_', cast(product_id as string)) as order_unique_id,
order_id,
product_id,
item_id as references_by_order,
quantity as product_quantity,
list_price as product_price,
discount

from {{source ('local_bike', 'order_items')}}