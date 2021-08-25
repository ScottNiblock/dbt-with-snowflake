{{config(materialized = 'table', query_tag = 'dbt_special')}}

with source_team_details as (
select * from {{source('demo_db', 'team_locations')}}
),
final as(
select
  source_team_details.name as name,
  source_team_details.city as city,
  source_team_details.state as state,
  'NFL' as league,
  source_team_details.name = '{{var("current_champion")}}' as is_champion

from source_team_details
)
select * from final
