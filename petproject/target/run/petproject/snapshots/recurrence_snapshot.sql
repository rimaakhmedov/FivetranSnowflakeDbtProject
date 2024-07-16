
      
  
    

        create or replace transient table dbt_hol_dev.snapshots.recurrence_snapshot
         as
        (

    select *,
        md5(coalesce(cast(event_id as varchar ), '')
         || '|' || coalesce(cast(to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as varchar ), '')
        ) as dbt_scd_id,
        to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_updated_at,
        to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_from,
        nullif(to_timestamp_ntz(convert_timezone('UTC', current_timestamp())), to_timestamp_ntz(convert_timezone('UTC', current_timestamp()))) as dbt_valid_to
    from (
        



select * from pc_fivetran_db.google_calendar.recurrence

    ) sbq



        );
      
  
  