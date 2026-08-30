{% macro f4() %}

    {{ log("Value of execute (always logged): " ~ execute, info=True) }}

    {% if execute %}
        {{ log("Inside execute block - this means we're truly running, not just parsing", info=True) }}
        {% set results = run_query('SELECT DISTINCT JOB_TITLE from KITTUDB.KITTUSCHEMA.EMPLOYEE_DATA') %}
        {{ log("Row count: " ~ (results | length), info=True) }}
    {% else %}
        {{ log("Skipped run_query - execute is False right now", info=True) }}
    {% endif %}

{% endmacro %}

















