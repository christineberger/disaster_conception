### Disaster-induced Conceptions

##### _Hypothesis_:<br /><br />
  There is an increase in conception due to the bonds circumstances of major disasters
  (via bonding/co-habitation time increase).

##### _Data based on_:
  - FEMA's data on declared disasters and the dates they occurred from 1994-2020
  - CDC's Vital Statistics System datasets on total live births by state, year, and month

##### _Learning Objectives_:
  - Do some light data cleaning using python and pandas - this cleaning can all be done with SQL, but I
    wanted to practice some things I've learned. More info:
    - This can be found in python/fema_disasters_1994_2020.ipynb.
    - This file is an ipython/jupyter notebook, from which I exported a .csv
    - The resulting .csv was imported in to BigQuery.
  - Test what I learned following the dbt 'Getting Started' tutorial:
    (my project: https://github.com/christineberger/dbt-tutorial)
    (tutorial reference: https://docs.getdbt.com/)
  - Reinforce my implementation of the basic dbt project structure and best practices:
    (structure: https://discourse.getdbt.com/t/how-we-structure-our-dbt-projects/355)
    (best practices: https://docs.getdbt.com/docs/best-practices)
    
##### _Resources_:
- FEMA.gov:
    - Declared Disasters data set:
      https://www.fema.gov/openfema-dataset-disaster-declarations-summaries-v2
    - Disaster declaration type documentation:
      https://www.fema.gov/pdf/library/2300_15ch7.pdf

- CDC.gov:
    - Historical birth statistics:
      https://wonder.cdc.gov/natality.html
