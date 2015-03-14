SELECT DISTINCT
  ac.id AS artist_credit_id,
  ac.name AS artist_credit_name,
  r.name AS recording_name,
  COALESCE(ae.name, '-- unknown --') AS artist_country
FROM work w
JOIN l_recording_work rw ON (w.id = rw.entity1)
JOIN recording r ON (r.id = rw.entity0)
JOIN artist_credit ac ON (r.artist_credit = ac.id)
JOIN artist_credit_name acn ON (ac.id = acn.artist_credit)
JOIN artist a ON (acn.artist = a.id)
LEFT JOIN area ae ON (a.area = ae.id)
WHERE w.comment = 'Rick Astley song' AND ac.name <> 'Rick Astley'
ORDER BY ac.name ASC;