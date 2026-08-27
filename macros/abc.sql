{% macro count_rows(model_name) %}
    SELECT COUNT(*) FROM {{ ref('model_name') }}
{% endmacro %}