{{ dbt_utils.union_relations(
    relations=[
      ref('base_cdc__births_2003_2006'),
      ref('base_cdc__births_2007_2018')
    ],
    exclude="_dbt_source_relation"
) }}
