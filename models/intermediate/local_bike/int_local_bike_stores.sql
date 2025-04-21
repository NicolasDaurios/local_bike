select
store_id,
store_name,
email,
CONCAT(city, ', ', state, ', USA') AS city,
state

from {{ ref ("stg_local_bike_stores") }}