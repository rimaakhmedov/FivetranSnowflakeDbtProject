
    
    

select
    id as unique_field,
    count(*) as n_records

from pc_fivetran_db.google_calendar.event
where id is not null
group by id
having count(*) > 1


