

with validation as (

    select
        city as city,
        name

    from DEMO_DB.staging.example_team_details

),

validation_errors as (

    select
        city

    from validation

    where city = 'Los Angeles'
      and name not in('Rams', 'Chargers')

)

select  count(*)
from validation_errors


