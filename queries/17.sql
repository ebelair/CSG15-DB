SELECT
  label_id,
  MIN(l.name) AS label_name,
  ROUND(AVG(release_count), 2) AS average
FROM
(
  SELECT
    count(r.id) AS release_count,
    l.id AS label_id,
    rc.date_year,
    rc.date_month
  FROM label l
  JOIN release_label rl ON (rl.label = l.id)
  JOIN release r ON (rl.release = r.id)
  JOIN release_country rc ON (rc.release = r.id)
  WHERE
    rc.date_year >= 1993
    AND rc.date_year <= 2003
    AND rc.date_month IS NOT NULL
  GROUP BY l.id, rc.date_year, rc.date_month
) a
JOIN label l ON (a.label_id = l.id)
GROUP BY label_id
ORDER BY average DESC
LIMIT 1;