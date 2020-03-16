with source as (
  select * from {{ source('fema', 'disasters_1994_2020') }}
)

select * from source
