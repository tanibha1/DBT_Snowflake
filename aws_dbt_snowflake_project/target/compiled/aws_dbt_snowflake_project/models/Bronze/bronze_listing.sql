


 //  we can use this meterialization insted of flag.
select * from AIRBNB.staging.listings
 // Instend of this we can use is_incremental()

    where CREATED_AT > (select COALESCE(max(CREATED_AT), '1900-01-01') from AIRBNB.bronze.bronze_listing)
