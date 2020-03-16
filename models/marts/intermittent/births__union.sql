{{ dbt_utils.union_relations(
    relations=[ref('stg_cdc__births_2003_2006'), ref('stg_cdc__births_2007_2018')]
) }}
