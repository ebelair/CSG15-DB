SELECT
  row_number() OVER () AS num,
  t.name AS title,
  ac.name AS artist,
  t.position || ' / ' || m.track_count AS position,
  r.name AS album,
  rc.date_year AS release_year
FROM track t
JOIN medium m ON (m.id = t.medium)
JOIN medium_format mf ON (mf.id = m.format)
JOIN release r ON (r.id = m.release)
JOIN artist_credit ac ON (ac.id = r.artist_credit)
JOIN release_country rc ON (r.id = rc.release)
JOIN area a on (a.id = rc.country)
WHERE
  ac.name = 'Michael Jackson'
  AND r.name = 'Thriller'
  AND mf.name = '12" Vinyl'
ORDER BY artist, album, t.position;
