with ranks2018 as (
    select * from {{ ref('stg_2018_ranks') }}
),

ranks2019 as (
    select * from {{ ref('stg_2019_ranks') }}
),

avg_score_2018 as (
    select Country, Happiness_Score
    from ranks2018 
), 

avg_score_2019 as (
    select Country, Happiness_Score
    from ranks2019 
), 

final as (
    select round(avg(avg_score_2018.Happiness_Score), 2) as average_2018, round(avg(avg_score_2019.Happiness_Score), 2) as average_2019, 
    from avg_score_2018
    join avg_score_2019
    on avg_score_2018.Country = avg_score_2019.Country

)

select * from final