SELECT
  COUNT(r.id) AS count
FROM recording r
JOIN artist_credit ac ON (r.artist_credit = ac.id)
WHERE r.name = 'Stairway to Heaven' and ac.name = 'Led Zeppelin';