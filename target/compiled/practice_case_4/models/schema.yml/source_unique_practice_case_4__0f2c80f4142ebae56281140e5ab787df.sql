
    
    

with dbt_test__target as (

  select payment_type as unique_field
  from `suryo-df8`.`practice_case_4`.`external_raw_nyt_yellowtrip`
  where payment_type is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


