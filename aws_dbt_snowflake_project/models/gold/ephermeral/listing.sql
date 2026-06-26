{{config(
    materialized = 'ephemeral',
)}}

with listing as
(
    select 
    LISTING_ID,
    PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    COUNTRY,
    price_per_night_tag,
    LISTING_CREATED_AT

    from {{ref('obt')}}
)
select * from listing
