with source as (
  select * from {{ source('cdc', 'births_2003_2006') }}
),

birth_states_list as (
  select * from {{ ref('stg_seeds__birth_state_codes') }}
),

transformed_births as (
  select
    upper(state) as birth_state,
    year as birth_year,
    month_code as birth_month,
    coalesce(births, 0) as birth_total
  from source
  where notes is null
)

select
  transformed_births.birth_state,
  birth_states_list.birth_state_code,
  transformed_births.birth_year,
  transformed_births.birth_month,
  transformed_births.birth_total
from transformed_births
left join birth_states_list using (birth_state)
