SELECT
  a.name AS artist_name,
  aa.name AS alias
FROM artist a
JOIN artist_alias aa ON (a.id = aa.artist)
WHERE a.name = 'Elton John' OR a.name = 'Stevie Wonder'
ORDER BY artist_name, alias;