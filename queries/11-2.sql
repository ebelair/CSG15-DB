SELECT DISTINCT
  mf.id,
  mf.name
FROM release r
JOIN medium m ON (m.release = r.id)
JOIN medium_format mf ON (mf.id = m.format)
WHERE r.id = 1520240
ORDER BY mf.id;