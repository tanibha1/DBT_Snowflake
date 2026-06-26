{# {% set incremental_flag = 1 %} // This flag is used to control whether the incremental logic should be applied or not. If set to 1, the model will only load new records based on the CREATED_AT column. If set to 0, it will load all records. #}
{# {%set incremental_col = 'CREATED_AT'%} // This variable defines the column that will be used for incremental loading. In this case, it's the CREATED_AT column. #}

{{config(materialized='incremental')}} //  we can use this meterialization insted of flag.
select * from {{ source ('staging', 'listings') }}
{# {%if incremental_flag == 1%} #} // Instend of this we can use is_incremental()
{% if is_incremental() %}
    where CREATED_AT > (select COALESCE(max(CREATED_AT), '1900-01-01') from {{ this }})
{% endif %}