select
staff_id,
first_name,
last_name,
email,
store_id,
CAST(COALESCE(NULLIF(manager_id, 'NULL'), '1') AS INT64) AS manager_id,
CONCAT(staff_id, '_', first_name, '_', last_name) as staff_unique_id

FROM {{ ref("stg_local_bike_staffs") }}