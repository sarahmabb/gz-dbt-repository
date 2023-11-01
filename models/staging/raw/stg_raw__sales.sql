with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
    date_date,
    orders_id,
    pdt_id as products_id,
    CAST(revenue as float64) as revenue,
    CAST(quantity as float64) as quantity

    from source

)

select * from renamed
