-- models/stg_customers.sql

select
    customernumber as customer_number,
    customername as customer_name,
    contactlastname as contact_last_name,
    contactfirstname as contact_first_name,
    phone,
    addressline1,
    city,
    country
from public.customers
