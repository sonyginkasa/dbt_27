-- models/stg_events_microbatch.sql
{{
  config(
    materialized='incremental',
    incremental_strategy='microbatch',
    event_time='event_occurred_at',
    batch_size='day',
    begin='2026-08-20',
    lookback=1,
    full_refresh=false
  )
}}

select
    event_id,
    customer_id,
    event_type,
    event_occurred_at,
    current_timestamp() as loaded_at
from {{ source('EVENTS_SOURCE', 'RAW_EVENTS') }}