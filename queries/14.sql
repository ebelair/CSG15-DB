SELECT
  ROUND(AVG(g.length)/60/1000, 2) AS avg_length
FROM (
  SELECT
    t.medium AS medium,
    SUM(t.length) AS length
  FROM track t
  WHERE t.length IS NOT NULL
  GROUP BY t.medium
) g;