SELECT nome as cancao, COUNT(hr.id_musica) as reproducoes FROM cancoes as c
INNER JOIN historico_reproducao as hr
ON c.id_musica = hr.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;