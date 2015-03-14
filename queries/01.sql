SELECT DISTINCT ON (ac.name)
  ac.name AS artist
FROM track t
JOIN artist_credit ac ON (t.artist_credit = ac.id)
WHERE t.name = 'Stand By Me'
ORDER BY ac.name;