
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with source_data as (

    select 
        1 as id,
        'First' as FName,
        'Test' as LName,
        '01/01/2022' as Event_Date
    union all
    select null as id,
            null as FName,
            null as LName,
            null as Event_Date

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
