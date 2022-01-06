SELECT nome as usuario, 
if(year(MAX(hr.data)) = '2021', 'Usuário ativo', 'Usuário inativo') as `condicao_usuario`
FROM user AS u
INNER JOIN historico_reproducao as hr
ON hr.id_user = u.id_user
GROUP BY nome
ORDER BY nome 
;
