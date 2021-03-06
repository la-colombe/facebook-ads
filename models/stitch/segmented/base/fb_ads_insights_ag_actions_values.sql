with actions as (

  select * from {{ var('ads_insights_ag_actions_values_table') }}

)

select
  _sdc_level_0_id as id,
  nullif(_sdc_source_key_ad_id,'') as ad_id,
  _sdc_source_key_date_start::date as date_day,
  nullif(_sdc_source_key_age,'') as age,
  nullif(_sdc_source_key_gender,'') as gender,
  nullif(action_destination,'') as action_destination,
  nullif(action_type,'') as action_type,
  value as action_value
from actions
