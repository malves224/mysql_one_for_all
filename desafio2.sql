SELECT 
COUNT(DISTINCT(m.id_musica)) as cancoes, 
COUNT(DISTINCT(ar.id_artista)) as artistas, 
COUNT(DISTINCT(ab.id_album)) as albuns
FROM musicas as m, album as ab, artistas as ar;