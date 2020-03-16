with source as (
  select * from {{ source('cdc', 'births_2007_2018') }}
)

select * from source
