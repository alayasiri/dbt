{% macro change(column_name_1, column_name_2, round=0) %}

    round({{column_name_1}} - {{column_name_2}}, {{round}})

{% endmacro %}

{#{{rank_change()}} as Change_in_Ranking#}