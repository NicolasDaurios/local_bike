select 
customer_id,
email, 
CONCAT(city, ', ', state, ', USA') AS city,
state

from {{ ref ("stg_local_bike_customers") }}