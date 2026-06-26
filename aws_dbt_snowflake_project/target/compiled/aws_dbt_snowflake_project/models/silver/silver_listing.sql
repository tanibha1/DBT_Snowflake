
   select
   LISTING_ID,
   HOST_ID,
   PROPERTY_TYPE,
   ROOM_TYPE,
   CITY,
   COUNTRY,
   ACCOMMODATES,
   BEDROOMS,
   BATHROOMS,
   PRICE_PER_NIGHT,
   

CASE
    WHEN price_per_night < 100 THEN 'low'
    WHEN price_per_night < 200 THEN 'medium'
    ELSE 'high'
END

 as price_per_night_tag,
    CREATED_AT

    from AIRBNB.bronze.bronze_listing