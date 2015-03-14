SELECT
  MIN(r.name) AS album,
  MIN(ac.name) AS artist,
  COUNT(DISTINCT(m.format)) AS different_formats
FROM release r
JOIN medium m ON (m.release = r.id)
JOIN artist_credit ac ON (r.artist_credit = ac.id)
JOIN release_country rc ON (rc.release = r.id)
JOIN area a ON (rc.country = a.id)
WHERE a.name = '[Worldwide]'
GROUP BY r.id
ORDER BY different_formats DESC
LIMIT 1;