with ranks2019 as (

    select * from {{ ref('stg_2019_ranks') }}
), 

codes as(
    select * from {{ ref('country_code') }}
),


final as (
    select 
        round(ranks2019.Rank, 0) as Rank,
        ranks2019.Country as Country,
        codes.code as code, 
        ranks2019.Happiness_Score as Happiness_Score
    from 
        codes, ranks2019 
    where 
        codes.country = ranks2019.Country
    order by 
        ranks2019.Happiness_Score desc

)

select * from final

/*
r2018 as (
    select Country
    from ranks2019 
), 

codes as (
    select Country, Happiness_Score
    from ranks2019 
), */
