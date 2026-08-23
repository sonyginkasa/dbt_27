{% macro discounted_price(price, discount) %}
  {{ price }} * (1 - {{ discount }})
{% endmacro %}

select {{ discounted_price(100, 0.1) }} as final_price