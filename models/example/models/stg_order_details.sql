-- models/stg_order_details.sql

select
    ordernumber as order_number,
    productcode as product_code,
    quantityordered as quantity_ordered,
    priceeach as price_each,
    orderlinenumber as order_line_number
from public.orderdetails
