{{ config(materialized='table') }}

with geo as (

    select distinct *
    from (select geolocation_zip_code_prefix,
        geolocation_state
        from `project-capstone-422211.order.olist_geolocation_dataset` as geo)
),

geo_new as (
    
    select geolocation_zip_code_prefix,
    bs.State as geolocation_state,
    bs.Latitude as geolocation_lat,
    bs.Longitude as geolocation_lng,
    from geo
    left join `project-capstone-422211.order.brazil_state` as bs
    on geolocation_state = bs.UF

),
customers as (

    select distinct customer_id,
    c.customer_zip_code_prefix,
    customer_city,
    geo.geolocation_state as customer_state,
    geo.geolocation_lat as customer_lat,
    geo.geolocation_lng as customer_long,
    from `project-capstone-422211.order.olist_customers_dataset` as c
    left join geo_new as geo
    on c.customer_zip_code_prefix = geo.geolocation_zip_code_prefix

),

orders as (

    select o.order_id,
    customer_id,
    order_status,
    order_purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    order_estimated_delivery_date,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date,
    price
    from `project-capstone-422211.order.partitioned_olist_orders_dataset` as o
    join `project-capstone-422211.order.olist_items_dataset` as oi on o.order_id = oi.order_id

),
products as (

    select p.product_id, p.product_category_name, pc.product_category_name_english
    from `project-capstone-422211.order.olist_products_dataset` as p
    left join `project-capstone-422211.order.product_category_name_translation` as pc
    on p.product_category_name = pc.product_category_name

),
sellers as (

    select distinct seller_id,
    s.seller_zip_code_prefix,
    seller_city,
    geo.geolocation_state as seller_state,
    geo.geolocation_lat as seller_lat,
    geo.geolocation_lng as seller_long,
    from `project-capstone-422211.order.olist_sellers_dataset` as s
    left join geo_new as geo
    on s.seller_zip_code_prefix = geo.geolocation_zip_code_prefix

),

olist_obt as (

    select o.order_id,
    o.order_purchase_timestamp,
    o.order_status,
    o.order_approved_at,
    o.order_item_id,
    o.product_id,
    case
    when p.product_category_name_english is null then p.product_category_name
    else p.product_category_name_english end as product_category_name,
    o.price,
    o.order_delivered_carrier_date,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date,
    o.customer_id,
    c.customer_zip_code_prefix,
    c.customer_city,
    c.customer_state,
    c.customer_lat,
    c.customer_long,
    o.seller_id,
    o.shipping_limit_date,
    s.seller_zip_code_prefix,
    s.seller_city,
    s.seller_state,
    s.seller_lat,
    s.seller_long,

    from orders as o 
    left join customers as c on c.customer_id = o.customer_id
    left join products as p on p.product_id = o.product_id
    left join sellers as s on s.seller_id = o.seller_id

)

select * from olist_obt 
where order_purchase_timestamp between "2017-01-01" and "2018-08-30"
order by order_purchase_timestamp