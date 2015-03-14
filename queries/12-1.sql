SELECT
  ac.id AS artist_credit_id,
  ac.name AS artist,
  COUNT(DISTINCT(r.language)) AS different_languages
FROM artist_credit ac
JOIN release r ON (r.artist_credit = ac.id)
JOIN language l ON (r.language = l.id)
WHERE
  ac.name <> 'Various Artists'
  AND ac.name NOT LIKE '[%'
GROUP BY ac.id
HAVING COUNT(DISTINCT(r.language)) > 10
ORDER BY different_languages DESC, artist_credit_id ASC;