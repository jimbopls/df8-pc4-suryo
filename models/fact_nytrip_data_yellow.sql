select * from {{ source('practice_case_4','external_raw_nyt_yellowtrip') }}
where 
    VendorID is not null
    and RatecodeID is not null
    and payment_type is not null
    and trip_distance is not null
    and tpep_pickup_datetime is not null
    and tpep_dropoff_datetime is not null
    and PULocationID is not null
    and DOLocationID is not null
    and passenger_count is not null
order by tpep_pickup_datetime DESC

-- ratecode, paymenttype, tripdistance, pikcup, dropoff
-- location ids
-- must not be nulls
-- ordered by pickup datetime in descending order