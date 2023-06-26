with ranking as (
    select * from {{ref('stg_2018_ranks')}}
)

select 
    Country
from
    ranking
where 
    Rank > 156