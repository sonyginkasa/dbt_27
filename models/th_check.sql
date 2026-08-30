{{ config(materialized='table') }}

{{ log("ref(th_target)          : " ~ ref('th_target'), info=true) }}
{{ log("ref(th_target).database : " ~ ref('th_target').database, info=true) }}

select 1 as x