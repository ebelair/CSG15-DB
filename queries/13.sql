SELECT
  ac.id AS artist_id,
  ac.name AS artist,
  r.id AS release_id,
  r.name AS album,
  m.id AS medium_id
FROM release r
JOIN artist_credit ac ON (r.artist_credit = ac.id)
JOIN medium m ON (m.release = r.id)
JOIN medium_cdtoc mc ON (mc.medium = m.id)
WHERE mc.cdtoc = (
  SELECT id
  FROM cdtoc
  ORDER BY subarray(sort_desc(track_offset), 0, 1) DESC
  LIMIT 1
);