with ranks2018 as (

    select * from {{ ref('stg_2018_ranks') }}
), 

codes as(
    select * from {{ ref('country_code') }}
),


final as (
    select 
        round(ranks2018.Rank, 0) as Rank,
        ranks2018.Country as Country,
        codes.code as code, 
        ranks2018.Happiness_Score as Happiness_Score
    from 
        codes, ranks2018 
    where 
        codes.country = ranks2018.Country
    order by 
        ranks2018.Happiness_Score desc

)

select * from final

/*
r2018 as (
    select Country
    from ranks2018 
), 

codes as (
    select Country, Happiness_Score
    from ranks2019 
), */
