with age_gender as (

  select * from {{ref('fb_ads_insights_ag_actions_values')}}

)

select
  id,
  ad_id,
  date_day,
  action_destination,
  action_type,
  'gender' as segment_type,
  gender as segment,
  sum(action_value) as action_value
from
  age_gender
group by 1, 2, 3, 4, 5, 6, 7
