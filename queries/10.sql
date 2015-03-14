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
WHERE r.id IN (
  SELECT
    MIN(r.id)
  FROM release r
  JOIN artist_credit ac ON (ac.id = r.artist_credit)
  JOIN release_country rc ON (r.id = rc.release)
  JOIN area a ON (rc.country = a.id)
  JOIN release_group rg ON (r.release_group = rg.id)
  JOIN release_group_primary_type rgpt ON (rg.type = rgpt.id)
  LEFT JOIN release_group_secondary_type_join rgstj ON (rgstj.release_group = rg.id)
  LEFT JOIN release_group_secondary_type rgst ON (rgstj.secondary_type = rgst.id)
  WHERE
    ac.name = 'Billy Talent'
    AND rgpt.name = 'Album'
    AND rgst.id IS NULL
  GROUP BY rg.id
)
ORDER BY rc.date_year, rc.date_month, t.position