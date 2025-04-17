select discount
from {{ref ('stg_local_bike_order_items')}}
group by 1
having discount > 0.5