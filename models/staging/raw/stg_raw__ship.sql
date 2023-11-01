with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select orders_id
    , CAST(shipping_fee as float64) as shipping_fee
    , CAST(logCost as float64) as logcost
    , CAST(ship_cost as float64) as ship_cost

    from source

)

select * from renamed
