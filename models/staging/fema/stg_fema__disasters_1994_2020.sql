with source as (
  select * from {{ source('fema', 'disasters_1994_2020') }}
),

transformed as (
  select
    incident_id,
    substr(incident_id, -2) as incident_state,
    date(extract(year from date), extract(month from date), 1) as incident_ym,
    declaration_type as incident_declaration,
    incident_type
  from source
)

select * from transformed
