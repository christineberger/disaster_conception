with source as (
  select * from {{ source('cdc', 'births_2003_2006') }}
)

select * from source
