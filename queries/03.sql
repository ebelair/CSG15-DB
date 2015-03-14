SELECT 
  MIN(r.id) AS release_id,
  r.name AS album_name,
  MIN(ac.name) AS artist
FROM release r
JOIN artist_credit ac ON (r.artist_credit = ac.id)
WHERE ac.name = 'Pharrell Williams'
GROUP BY r.name
ORDER BY album_name;