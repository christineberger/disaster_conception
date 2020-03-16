with source as (
  select * from {{ source('cdc', 'births_2007_2018') }}
),

birth_states_list as (
  select * from {{ ref('stg_seeds__birth_state_codes') }}
),

transformed_births as (
  select
    upper(state) as birth_state,
    date(year, month_code, 1) as birth_ym,
    date_add(date(year, month_code, 1), interval -9 month) as birth_conception_ym,
    coalesce(births, 0) as birth_total
  from source
  where notes is null
)

select
  transformed_births.birth_state,
  birth_states_list.birth_state_code,
  transformed_births.birth_ym,
  transformed_births.birth_conception_ym,
  transformed_births.birth_total
from transformed_births
left join birth_states_list using (birth_state)
