
-- Use the `ref` function to select from other models

select *
from {{ ref('dbt_test_model') }}
where id = 1
