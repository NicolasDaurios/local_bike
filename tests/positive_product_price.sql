select product_price
from {{ref ('stg_local_bike_order_items')}}
group by 1
having product_price < 0