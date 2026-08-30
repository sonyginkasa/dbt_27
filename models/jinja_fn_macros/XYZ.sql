{% set results = run_query("select distinct department from KITTUDB.KITTUSCHEMA.EMPLOYEE_DATA") %}

{% if execute %}
  {% set depts = results.columns['DEPARTMENT'].values_without_nulls() | sort %}
{% else %}
  {% set depts = [] %}
{% endif %}

select
  job_title,
  {% for d in depts %}
  count(case when department = '{{ d }}' then 1 end) as {{ d | lower | replace(' ', '_') }}{% if not loop.last %},{% endif %}
  {% endfor %}
from KITTUDB.KITTUSCHEMA.EMPLOYEE_DATA
group by job_title