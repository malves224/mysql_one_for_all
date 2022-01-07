SELECT nome as nome_musica,
CASE 
	WHEN nome LIKE '%streets' THEN replace(nome, 'Streets', 'Code Review')
	WHEN nome LIKE '%Her Own' THEN replace(nome, 'Her Own', 'Trybe')
	WHEN nome LIKE '%Inner Fire' THEN replace(nome, 'Inner Fire', 'Project')
	WHEN nome LIKE '%Silly' THEN replace(nome, 'Silly', 'Nice')
	WHEN nome LIKE '%Circus' THEN replace(nome, 'Circus', 'Pull Request')
END AS novo_nome
FROM cancoes
WHERE nome LIKE '%Streets' 
or nome LIKE '%Her Own'
or nome LIKE '%Inner Fire'
or nome LIKE '%Silly'
or nome LIKE '%Circus'
ORDER BY nome
;
