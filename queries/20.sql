SELECT
  t.relname AS table_name,
  i.relname AS index_name,
  a.attname AS column_name
FROM pg_class t
JOIN pg_index ix ON (t.oid = ix.indrelid)
JOIN pg_class i ON (i.oid = ix.indexrelid)
JOIN pg_attribute a ON (t.oid = a.attrelid)
WHERE
  a.attnum = ANY(ix.indkey)
  AND t.relkind = 'r'
ORDER BY t.relname, i.relname;