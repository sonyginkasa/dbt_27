-- models/orders.sql
select '{{ env_var("DBT_DYNAMIC", "default_value_model") }}' as source_schema
