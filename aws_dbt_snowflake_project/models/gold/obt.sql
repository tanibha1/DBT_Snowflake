{%set configs = [
    {
        "table" : "AIRBNB.silver.silver_BOOKING",
        "columns" : "silver_booking.*",
        "alias" : "silver_booking"

    },
    {
        "table" : "AIRBNB.silver.silver_LISTING",
        "columns" : "silver_listing.HOST_ID,silver_listing.PROPERTY_TYPE,silver_listing.ROOM_TYPE,silver_listing.CITY,silver_listing.COUNTRY,silver_listing.ACCOMMODATES,silver_listing.BEDROOMS,silver_listing.BATHROOMS,silver_listing.PRICE_PER_NIGHT,silver_listing.PRICE_PER_NIGHT_TAG, silver_listing.CREATED_AT AS LISTING_CREATED_AT",
        "alias" : "silver_listing",
        "join_condition" : "silver_booking.listing_id = silver_listing.listing_id"
    }
    ,
    {
        "table" : "AIRBNB.silver.silver_HOSTS",
        "columns" : "silver_hosts.HOST_NAME,silver_hosts.HOST_SINCE,silver_hosts.IS_SUPERHOST,silver_hosts.RESPONSE_RATE,silver_hosts.RESPONSE_RATE_QUALITY, silver_hosts.CREATED_AT AS HOST_CREATED_AT",
        "alias" : "silver_hosts",
        "join_condition" : "silver_listing.host_id = silver_hosts.host_id"
    }
]
%}

select
{% for config in configs%}
    {{ config.columns }}{% if not loop.last %},{% endif %}
    {% endfor %}

from
    {% for config in configs%}
    {% if loop.first %}
    {{config['table'] }} as {{config['alias']}}
    {%else %}
    LEFT JOIN {{config['table'] }} as {{config['alias'] }} ON {{config['join_condition'] }}
    {%endif %}
    {% endfor %}