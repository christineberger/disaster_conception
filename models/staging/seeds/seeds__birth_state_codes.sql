with source as (
  select * from {{ source('seeds', 'us_state_codes') }}
),

transformed as (
  select
    upper(state) as birth_state,
    upper(code) as birth_state_code
  from source
)

select * from transformed
