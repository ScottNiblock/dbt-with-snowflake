

      create or replace transient table DEMO_DB.staging.example_team_details  as
      (

with source_team_details as (
select * from demo_db.PUBLIC.team_locations
),
final as(
select
  source_team_details.name as name,
  source_team_details.city as city,
  source_team_details.state as state,
  'NFL' as league,
  source_team_details.name = 'Redskins' as is_champion

from source_team_details
)
select * from final
      );
    