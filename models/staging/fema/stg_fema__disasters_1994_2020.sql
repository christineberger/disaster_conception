with source as (
  select * from {{ source('fema', 'disasters_1994_2020') }}
),

transformed as (
  select distinct
    incident_id,
    substr(incident_id, -2) as incident_state_code,
    date(extract(year from date), extract(month from date), 1) as incident_ym,
    coalesce(declaration_type, 'NA') as incident_declaration,
    incident_type
  from source
  where incident_id is not null
)

select * from transformed
