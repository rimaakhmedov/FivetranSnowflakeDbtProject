
  create or replace   view dbt_hol_dev.public.event
  
   as (
    SELECT
    id as event_id,
    summary,
    calendar_list_id,
    updated,
    start_date_time,
    start_time_zone,
    end_date_time,
    end_time_zone,
    html_link,
    organizer_email,
    status,
    location,
    _fivetran_synced
FROM pc_fivetran_db.google_calendar.event
  );

