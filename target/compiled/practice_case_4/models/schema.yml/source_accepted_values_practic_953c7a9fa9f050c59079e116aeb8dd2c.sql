
    
    

with all_values as (

    select
        RatecodeID as value_field,
        count(*) as n_records

    from `suryo-df8`.`practice_case_4`.`external_raw_nyt_yellowtrip`
    group by RatecodeID

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5','6'
)


