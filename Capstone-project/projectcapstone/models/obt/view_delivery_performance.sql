select *,
case
    when carrier_take < 4 then "Very Fast"
	when carrier_take >= 4 and carrier_take < 8 then "Fast"
	when carrier_take >= 8 and carrier_take < 15 then "Normal"
	when carrier_take >= 15 and carrier_take < 22 then "Slow"
    when carrier_take is null then "-"
	else "Very Slow"
end as carrier_take_bin,
case
    when ontinme_delivery < 0 then "On-time"
    when ontinme_delivery >= 1 then "Late"
    when ontinme_delivery is null then "-"
    else "On-time"
end as ontinme_delivery_bin
from (select order_id,
    order_status,
    product_id,
    product_category_name,
    customer_lat,
    customer_long,
    customer_city,
    customer_state,
    seller_lat,seller_long,
    seller_city,
    seller_state,
    order_purchase_timestamp,
    order_approved_at,
    date_diff(order_approved_at, order_purchase_timestamp, day) as approved_time,
    order_delivered_carrier_date,
    date_diff(order_delivered_carrier_date, order_approved_at, day) as seller_prepare,
    order_estimated_delivery_date,
    order_delivered_customer_date,
    date_diff(order_delivered_customer_date, order_delivered_carrier_date, day) as carrier_take,
    date_diff(order_delivered_customer_date, order_purchase_timestamp, day) as delivery_time,
    date_diff(order_delivered_customer_date, order_estimated_delivery_date, day) as ontinme_delivery
from {{ ref('olist_obt') }} )
