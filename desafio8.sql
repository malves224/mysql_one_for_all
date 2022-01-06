SELECT a.nome as artista, ar.nome as album FROM artistas AS a
INNER JOIN album AS ar
ON a.id_artista = ar.id_artista
WHERE a.nome = "Walter Phoenix"
ORDER BY a.nome DESC
;

