
    
    

with all_values as (

    select
        VendorID as value_field,
        count(*) as n_records

    from `suryo-df8`.`practice_case_4`.`external_raw_nyt_yellowtrip`
    group by VendorID

)

select *
from all_values
where value_field not in (
    '1','2'
)


