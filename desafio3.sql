SELECT u.nome AS usuario, COUNT(hr.id_musica) as qtde_musicas_ouvidas, 
round(SUM(m.duracao_segundos)/60, 2)  AS total_minutos
FROM `user` AS u
INNER JOIN `historico_reproducao` AS hr
ON u.id_user = hr.id_user
INNER JOIN `musicas` AS m
ON hr.id_musica = m.id_musica
GROUP BY u.nome
ORDER BY `usuario`
;