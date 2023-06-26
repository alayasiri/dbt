{# comments syntax#}

{#
{% set x = 'wow!' %}
{% set y = 'jinja!' %}
{% set z = 100 %}

{{x}}
{{y}}
I want to write for {{z}}


{% set my_animals = ['dog', 'cat', 'rabbit', 'hamster']%}

{%for animal in my_animals%}

    My favorite animal is the {{animal}}!

{%endfor%}


{% set temp = 45 %}

{% if temp < 65 %}
    capp
{% else %}
    cold brew

{% endif %}



{%- set foods = ['carrot', 'tomato', 'hotdog', 'bell pepper'] -%}

{%- for food in foods -%}

    {% if food == 'hotdog' %}
        {{food}} is a snack
    {% else %}
        {{food}} is a veg
    {%endif%}

{%-endfor-%}



{% set web_disct = {
    'word' : 'data', 
    'speech part': 'noun', 
    'definition': 'ifykyk'
}%}

{{web_disct ['word']}}

#}

