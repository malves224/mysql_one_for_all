SELECT 
COUNT(DISTINCT(c.id_musica)) as cancoes, 
COUNT(DISTINCT(ar.id_artista)) as artistas, 
COUNT(DISTINCT(ab.id_album)) as albuns
FROM cancoes as c, album as ab, artistas as ar;