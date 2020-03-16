with source as (
  select * from {{ source('seeds', 'us_state_codes') }}
),

select * from source
