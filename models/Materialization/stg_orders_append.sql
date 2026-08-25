{{
  config(
    materialized='incremental',
    incremental_strategy='append',
    unique_key='order_id'
  )
}}

select
    order_id,
    customer_name,
    order_status,
    order_amount,
    updated_at
from {{ source('ORDERS_SOURCE', 'RAW_ORDERS') }}

{% if is_incremental() %}
  where updated_at > (select max(updated_at) from {{ this }})
{% endif %}