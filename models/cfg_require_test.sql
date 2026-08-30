{{ config(materialized='table') }}

{% set required_val = config.require('some_required_thing') %}

select 1 as x