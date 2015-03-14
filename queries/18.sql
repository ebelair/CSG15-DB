SELECT
  published_vinyls,
  published_cds,
  ROUND(CAST(published_vinyls AS NUMERIC) / CAST(published_cds AS NUMERIC), 2) AS ratio,
  release_year
FROM (
SELECT
  SUM(CASE WHEN mf.name = '12" Vinyl' THEN 1 ELSE 0 END) AS published_vinyls,
  SUM(CASE WHEN mf.name = 'CD' THEN 1 ELSE 0 END) AS published_cds,
  rc.date_year AS release_year
FROM medium m
JOIN medium_format mf ON (m.format = mf.id)
JOIN release r ON (m.release = r.id)
JOIN release_country rc ON (rc.release = r.id)
WHERE
  rc.date_year >= 1960
  AND rc.date_year <= 2014
GROUP BY rc.date_year
ORDER BY rc.date_year DESC
) a