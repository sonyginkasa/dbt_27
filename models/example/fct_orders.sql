-- models/fct_orders.sql
SELECT * FROM {{ ref('stg_o_ephermal') }} WHERE status = 'completed'