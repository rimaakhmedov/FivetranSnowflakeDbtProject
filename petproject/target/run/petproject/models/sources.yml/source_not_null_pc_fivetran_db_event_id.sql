select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from pc_fivetran_db.google_calendar.event
where id is null



      
    ) dbt_internal_test