SELECT u.nome AS usuario, COUNT(hr.id_musica) as qtde_musicas_ouvidas, 
round(SUM(c.duracao_segundos)/60, 2)  AS total_minutos
FROM `user` AS u
INNER JOIN `historico_reproducao` AS hr
ON u.id_user = hr.id_user
INNER JOIN `cancoes` AS c
ON hr.id_musica = c.id_musica
GROUP BY u.nome
ORDER BY `usuario`
;