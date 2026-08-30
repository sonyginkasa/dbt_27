{% macro post_build_tasks() %}
  {% set statements %}
    alter table {{ this }} cluster by (department);
    grant select on {{ this }} to role ACCOUNTADMIN;
  {% endset %}
  {{ return(statements) }}
{% endmacro %}