
-- Use the `ref` function to select from other models

select sum(id*15) as sum_test
from {{ ref('dbt_test_model') }}
where id = 1
    group by id
