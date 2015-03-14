SELECT
  MIN(l.name) AS language,
  COUNT(r.id) AS published_releases
FROM release r
JOIN language l ON (r.language = l.id)
GROUP BY l.id
ORDER BY published_releases DESC
LIMIT 3;