
  create or replace   view dbt_hol_dev.public.attendee
  
   as (
    SELECT
    event_id,
    email,
    response_status,
    _fivetran_synced
FROM pc_fivetran_db.google_calendar.attendee
  );

