{%set flags = 2 %}

select * from {{ref('bronze_booking')}}
{%if flags == 1 %}
    where NIGHTS_BOOKED > 1
{%else %}
    where  NIGHTS_BOOKED = 1
{%endif %}