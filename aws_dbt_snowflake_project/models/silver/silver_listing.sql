{{config(materialized='incremental',
   unique_key = 'LISTING_ID' )
   }}
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
   {{tag('price_per_night')}} as price_per_night_tag,
    CREATED_AT

    from {{ref('bronze_listing')}}