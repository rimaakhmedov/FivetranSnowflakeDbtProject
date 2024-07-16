
  
    

        create or replace transient table dbt_hol_dev.public.event_utc
         as
        (

SELECT
    event_id,
    summary,
    calendar_list_id,
    updated,
    CONVERT_TIMEZONE(start_time_zone, 'UTC', start_date_time::timestamp_ntz) AS utc_start_date_time,
    CONVERT_TIMEZONE(end_time_zone, 'UTC', end_date_time::timestamp_ntz) AS utc_end_date_time,
    html_link,
    organizer_email,
    status,
    location,
    _fivetran_synced
FROM dbt_hol_dev.public.event

        );
      
  