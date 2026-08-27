{{ config(materialized='ephemeral') }}
SELECT order_id, customer_id, status FROM raw_orders