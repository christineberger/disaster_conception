with births as (
  select * from {{ ref('stg_cdc__births_2003_2018') }}
),

-- Limit disasters to the range of the births data set.
disasters as (
  select *
  from {{ ref('stg_fema__disasters_1994_2020') }}
  where incident_ym >= '2003-01-01'
    and incident_ym < '2019-01-01'
)

select
  births.birth_state_code as state,
  births.birth_conception_ym as year_month,
  births.birth_total as babies_conceived,
  count(distinct incident_id) as disasters_declared
from births

left join disasters
  on births.birth_state_code = disasters.incident_state_code
  and births.birth_conception_ym = disasters.incident_ym

group by 1, 2, 3
