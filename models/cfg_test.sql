{{ config(materialized='table', unique_key='employee_id') }}

{% set uk_present = config.get('unique_key') %}
{% set uk_missing = config.get('does_not_exist') %}
{% set uk_missing_default = config.get('does_not_exist', default='fallback_val') %}

{{ log("present        : " ~ uk_present, info=true) }}
{{ log("missing (None) : " ~ uk_missing, info=true) }}
{{ log("missing+default: " ~ uk_missing_default, info=true) }}

select * from KITTUDB.KITTUSCHEMA.EMPLOYEE_DATA limit 3