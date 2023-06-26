with ranks2018 as (

    select * from {{ ref('stg_2018_ranks') }}
), 

ranks2019 as (

    select * from {{ ref('stg_2019_ranks') }}
),

ranks_2018_2019 as (

    select 
        ranks2018.Country, 
        ranks2018.Rank as Rank_2018,
        ranks2019.Rank as Rank_2019, 
        {{rank_change()}} as Rank_Change
    from 
        ranks2018
    join
        ranks2019 
    on 
        ranks2018.Country = ranks2019.Country
    order by 
        Rank_Change desc
)

select * from ranks_2018_2019