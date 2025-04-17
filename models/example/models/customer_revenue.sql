with customer_orders as (
    select
        o.customer_id,
        sum(od.unit_price * od.quantity) as total_revenue
    from {{ ref('stg_orders') }} o
    join {{ ref('stg_order_details') }} od
        on o.order_id = od.order_id
    group by o.customer_id
)

select
    c.customer_id,
    c.company_name,
    co.total_revenue
from {{ ref('stg_customers') }} c
join customer_orders co
    on c.customer_id = co.customer_id
