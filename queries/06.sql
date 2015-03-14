SELECT
  MIN(r.id) AS release_id,
  MIN(r.name) AS album,
  MIN(ac.name) AS artist,
  MIN(rc.date_year) AS release_year,
  MIN(l.name) AS label
FROM release r
JOIN artist_credit ac ON (r.artist_credit = ac.id)
JOIN release_label rl ON (rl.release = r.id)
JOIN release_country rc ON (rc.release = r.id)
JOIN label l ON (rl.label = l.id)
JOIN release_group rg ON (r.release_group = rg.id)
JOIN release_group_primary_type rgpt ON (rg.type = rgpt.id)
WHERE
  ac.name = 'Styx'
  AND l.name = 'Wooden Nickel'
  AND rgpt.name = 'Album'
GROUP BY rg.id
ORDER BY MIN(rc.date_year), MIN(rc.date_month);