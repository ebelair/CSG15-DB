SELECT
  r.name AS track,
  ac.name AS artist,
  e.name AS venue
FROM event e
JOIN l_event_recording er ON (er.entity0 = e.id)
JOIN recording r ON (er.entity1 = r.id)
JOIN artist_credit ac ON (r.artist_credit = ac.id)
WHERE e.name LIKE '%Festival%' AND e.name LIKE '%Jazz%'AND e.name LIKE '%Montréal%'
ORDER BY r.name;