with 

source as (
    
    select * from {{source('HappyIndex', 'index_2018')}}
),
 

ranks2018 as (

    select 
        Overall_rank as Rank, 
        Country_or_region as Country, 
        Score as Happiness_Score,
        GDP_per_capita as GDP_Per_Capita,
        Social_support as Social_Support,
        Healthy_life_expectancy as Healthy_LE,
        Freedom_to_make_life_choices as Freedom,
        Generosity,
        Perceptions_of_corruption as Corruption
    from 
        `HappyIndex.index_2018`
    order by 
        Overall_rank

)

select * from ranks2018