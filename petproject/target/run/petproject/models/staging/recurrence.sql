
  create or replace   view dbt_hol_dev.public.recurrence
  
   as (
    SELECT
    event_id,
    recurrence,
    _fivetran_synced
FROM pc_fivetran_db.google_calendar.recurrence
  );

