{% docs mrt_local_bike_orders %}

This model represents the **fact table** and centralizes all orders from the three stores.

In the `shipped_date` column:
- The original CSV contains `NULL` values.
- These `NULL` values were replaced with `"1900-01-01"` to identify **click & collect** orders.
- Orders with a normal shipped date represent **home delivery**.

{% enddocs %}