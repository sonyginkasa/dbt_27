{% set my_table = "orders" %}

select * from {{ my_table }}


select
{% for month in ["Jan","Feb","Mar"] %}
  sum(case when month_name = '{{ month }}' then sales else 0 end) as {{ month }}_sales{{ "," if not loop.last }}
{% endfor %}
from sales_data


