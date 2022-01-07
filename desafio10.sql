SELECT c.nome AS nome, COUNT(c.id_musica) AS reproducoes
FROM historico_reproducao AS hr
INNER JOIN user AS u
ON hr.id_user = u.id_user
INNER JOIN cancoes as c
ON c.id_musica = hr.id_musica
INNER JOIN planos AS p
ON u.id_plano = p.id_plano
WHERE p.nome = 'gratuito' OR p.nome = 'pessoal'
GROUP BY c.nome
ORDER BY c.nome 
;