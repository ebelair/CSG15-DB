SELECT * FROM (
  SELECT DISTINCT ON (rg.id)
    ac.name AS artist,
    r.name AS album,
    rc.date_year AS release_year
  FROM release r
  JOIN artist_credit ac ON (ac.id = r.artist_credit)
  JOIN release_country rc ON (r.id = rc.release)
  JOIN release_group rg ON (r.release_group = rg.id)
  JOIN release_group_primary_type rgpt ON (rg.type = rgpt.id)
  LEFT JOIN release_group_secondary_type_join rgstj ON (rgstj.release_group = rg.id)
  LEFT JOIN release_group_secondary_type rgst ON (rgstj.secondary_type = rgst.id)
  WHERE
    ac.name = 'Green Day'
    AND rgpt.name = 'Album'
    AND rgst.id IS NULL
  ORDER BY rg.id
) AS a
ORDER BY release_year;