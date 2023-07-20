{% macro get_column_values(table_name, column_name, order_by) %}

select {{ column_name }}, {{ order_by }}
from {{ table_name }}
order by {{ order_by }}

{%endmacro%}