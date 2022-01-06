SELECT a.nome AS artista, ar.nome AS album, count(ua.id_artista) AS seguidores 
FROM artistas AS a
INNER JOIN album AS ar
ON a.id_artista = ar.id_artista
INNER JOIN user_artista AS ua
ON ua.id_artista = a.id_artista
GROUP BY ar.nome, a.nome
ORDER BY seguidores DESC, artista, album
;
