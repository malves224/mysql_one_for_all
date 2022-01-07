SELECT COUNT(hr.id_musica) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducao as hr
INNER JOIN user AS u
ON u.id_user = hr.id_user
WHERE u.nome ="bill";