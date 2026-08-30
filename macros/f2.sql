{% macro w(args) %}
    

{% set res = run_query("
  select
    count(*)          as row_count,
    count(department) as non_null_depts,
    min(salary)       as min_sal,
    max(salary)       as max_sal,
    avg(salary)       as avg_sal
  from KITTUDB.KITTUSCHEMA.EMPLOYEE_DATA
") %}

{% set row = res.rows[0] %}
{{ log("rows: " ~ row['ROW_COUNT'] ~ " | avg: " ~ row['AVG_SAL'], info=true) }}

{% endmacro %}