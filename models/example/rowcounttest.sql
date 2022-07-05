SELECT SUM(row_count) total_row_count, listagg(table_name, ' ') tab_list, count(*) num_tabs
FROM   "ELIJAH_DB"."INFORMATION_SCHEMA".tables
WHERE  table_catalog = 'ELIJAH_DB'
AND    table_schema = 'ELIJAH_SQL_SERVER_ANIMAL_CROSSING'
