SELECT DISTINCT
  ac.id AS artist_credit_id,
  ac.name AS artist
FROM artist_credit ac
JOIN release r ON (r.artist_credit = ac.id)
JOIN release_label rl ON (rl.release = r.id)
JOIN label l ON (rl.label = l.id)
JOIN label_alias la ON (la.label = l.id)
WHERE la.name = 'Columbia Record Club'
ORDER BY ac.name;