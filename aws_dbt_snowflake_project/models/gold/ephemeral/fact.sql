{%set configs = [
    {
        "table" : "AIRBNB.gold.obt",
        "columns" : "gold_obt.booking_id, gold_obt.listing_id,gold_obt.host_id,gold_obt.TOTAL_BOOKING_AMOUNT,GOLD_OBT.SERVICE_FEE,GOLD_OBT.CLEANING_FEE,GOLD_OBT.ACCOMMODATES,GOLD_OBT.BEDROOMS,GOLD_OBT.BATHROOMS,GOLD_OBT.PRICE_PER_NIGHT,GOLD_OBT.RESPONSE_RATE_QUALITY",
        "alias" : "gold_obt"

    },
    {
        "table" : "AIRBNB.gold.dim_listing",
        "columns" : "",
        "alias" : "dim_listing",
        "join_condition" : "gold_obt.listing_id = dim_listing.listing_id"
    }
    ,
    {
        "table" : "AIRBNB.gold.dim_host",
        "columns" : "",
        "alias" : "dim_host",
        "join_condition" : "gold_obt.host_id = dim_host.host_id"
    }
]
%}

select

    {{ configs[0]['columns'] }}
    

from
    {% for config in configs%}
    {% if loop.first %}
    {{config['table'] }} as {{config['alias']}}
    {%else %}
    LEFT JOIN {{config['table'] }} as {{config['alias'] }} ON {{config['join_condition'] }}
    {%endif %}
    {% endfor %}