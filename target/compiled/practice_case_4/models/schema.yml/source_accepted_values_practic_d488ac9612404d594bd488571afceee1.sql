
    
    

with all_values as (

    select
        payment_type as value_field,
        count(*) as n_records

    from `suryo-df8`.`practice_case_4`.`external_raw_nyt_yellowtrip`
    group by payment_type

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5','6'
)


