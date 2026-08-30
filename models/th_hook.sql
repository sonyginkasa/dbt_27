{{ config(
    materialized='table',
    post_hook="insert into KITTUDB.KITTUSCHEMA.MODEL_AUDIT values ('{{ this.identifier }}', 'BUILT', current_timestamp(), '{{ invocation_id }}')"
) }}

select * from KITTUDB.KITTUSCHEMA.EMPLOYEE_DATA limit 3