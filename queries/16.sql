SELECT
  ac.name AS artist,
  r.name AS album,
  p.name AS studio,
  split_part(p.address, ',', 1) AS address,
  a1.name AS district,
  a2.name AS borough,
  a3.name AS city,
  a4.name AS country
FROM place p
JOIN area a1 ON (p.area = a1.id)
JOIN l_area_area aa1 ON (aa1.entity1 = a1.id)
JOIN area a2 ON (aa1.entity0 = a2.id)
JOIN l_area_area aa2 ON (aa2.entity1 = a2.id)
JOIN area a3 ON (aa2.entity0 = a3.id)
JOIN l_area_area aa3 ON (aa3.entity1 = a3.id)
JOIN area a4 ON (aa3.entity0 = a4.id)
JOIN l_place_release pr ON (pr.entity0 = p.id)
JOIN release r ON (pr.entity1 = r.id)
JOIN artist_credit ac ON (r.artist_credit = ac.id)
WHERE
  ac.name = 'Pink Floyd'
  AND r.name = 'The Dark Side of the Moon'
ORDER BY ac.name, r.name, p.name;