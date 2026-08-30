{{ config(
    materialized='table',
    meta={'custom_setting': 'my_value'}
) }}

{% set wrong_way = config.get('custom_setting') %}
{% set right_way = config.meta_get('custom_setting') %}

{{ log("via config.get()      : " ~ wrong_way, info=true) }}
{{ log("via config.meta_get() : " ~ right_way, info=true) }}

select 1 as x