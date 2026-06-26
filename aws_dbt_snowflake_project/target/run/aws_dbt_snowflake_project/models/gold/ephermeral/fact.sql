
  
    

create or replace transient table AIRBNB.gold.fact
    
    
    
    as (

select

    gold_obt.booking_id, gold_obt.listing_id,gold_obt.host_id,gold_obt.TOTAL_BOOKING_AMOUNT,GOLD_OBT.SERVICE_FEE,GOLD_OBT.CLEANING_FEE,GOLD_OBT.ACCOMMODATES,GOLD_OBT.BEDROOMS,GOLD_OBT.BATHROOMS,GOLD_OBT.PRICE_PER_NIGHT,GOLD_OBT.RESPONSE_RATE_QUALITY
    

from
    
    
    AIRBNB.gold.obt as gold_obt
    
    
    
    LEFT JOIN AIRBNB.gold.dim_listing as dim_listing ON gold_obt.listing_id = dim_listing.listing_id
    
    
    
    LEFT JOIN AIRBNB.gold.dim_host as dim_host ON gold_obt.host_id = dim_host.host_id
    
    
    )
;


  