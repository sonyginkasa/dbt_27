{{ config(
    materialized='table',
    snowflake_warehouse='BIG_WH'
) }}

select * from KITTUDB.KITTUSCHEMA.EMPLOYEE_DATA