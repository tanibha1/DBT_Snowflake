

select

    silver_booking.*,
    
    silver_listing.HOST_ID,silver_listing.PROPERTY_TYPE,silver_listing.ROOM_TYPE,silver_listing.CITY,silver_listing.COUNTRY,silver_listing.ACCOMMODATES,silver_listing.BEDROOMS,silver_listing.BATHROOMS,silver_listing.PRICE_PER_NIGHT,silver_listing.PRICE_PER_NIGHT_TAG, silver_listing.CREATED_AT AS LISTING_CREATED_AT,
    
    silver_hosts.HOST_NAME,silver_hosts.HOST_SINCE,silver_hosts.IS_SUPERHOST,silver_hosts.RESPONSE_RATE,silver_hosts.RESPONSE_RATE_QUALITY, silver_hosts.CREATED_AT AS HOST_CREATED_AT
    

from
    
    
    AIRBNB.silver.silver_BOOKING as silver_booking
    
    
    
    LEFT JOIN AIRBNB.silver.silver_LISTING as silver_listing ON silver_booking.listing_id = silver_listing.listing_id
    
    
    
    LEFT JOIN AIRBNB.silver.silver_HOSTS as silver_hosts ON silver_listing.host_id = silver_hosts.host_id
    
    