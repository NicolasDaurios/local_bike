select customer_id,
phone,
email,
city,
state

from {{source ("local_bike", "customers")}}