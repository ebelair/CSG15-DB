SELECT
  r.id AS release_id,
  r.name AS album,
  ac.name AS artist,
  rc.date_year AS release_year,
  a.name AS country
FROM release r
JOIN artist_credit ac ON (r.artist_credit = ac.id)
JOIN release_country rc ON (rc.release = r.id)
JOIN area a ON (rc.country = a.id)
WHERE ac.name = 'Aerosmith' AND a.name = 'Australia'
ORDER BY r.name;