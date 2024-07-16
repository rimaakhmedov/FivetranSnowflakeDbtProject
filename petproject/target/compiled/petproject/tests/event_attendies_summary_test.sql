WITH test_results AS (
    SELECT
        event_id,
        num_confirmed_attendees,
        num_invited_attendees
    FROM dbt_hol_dev.public.event_attendies_summary
)

SELECT *
FROM test_results
WHERE num_confirmed_attendees > num_invited_attendees