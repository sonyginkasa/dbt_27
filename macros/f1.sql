{% macro shout(message) %}
    {{ message | upper }}
{% endmacro %}

