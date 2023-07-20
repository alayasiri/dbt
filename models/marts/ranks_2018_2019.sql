with ranks2018 as (

    select * from {{ ref('stg_2018_ranks') }}
), 

ranks2019 as (

    select * from {{ ref('stg_2019_ranks') }}
),

codes as(
    select * from {{ ref('country_code') }}
),

ranks_2018_2019 as (

    select 
        ranks2018.Country, 
        codes.code as Code,
        ranks2018.Rank as Rank_2018,
        ranks2019.Rank as Rank_2019,
        {{change('ranks2018.Rank', 'ranks2019.Rank')}} as Rank_Change,
        ranks2018.Happiness_Score as Happy_Score_2018,
        ranks2019.Happiness_Score as Happy_Score_2019,
        {{change('ranks2018.Happiness_Score', 'ranks2019.Happiness_Score', 2)}} as Happiness_Score_Change, 
        {{change('ranks2018.Freedom', 'ranks2019.Freedom', 2)}} as Freedom_Score_Change
    from 
        ranks2018, ranks2019, codes
    where 
        ranks2018.Country = ranks2019.Country and 
        ranks2018.Country = codes.Country and
        ranks2019.COuntry = codes.Country
    order by 
        Rank_Change desc
)

select * from ranks_2018_2019