SELECT 
MIN(valor) AS faturamento_minimo, 
MAX(valor) AS faturamento_maximo, 
ROUND(AVG(valor), 2) AS faturamento_medio, 
ROUND(SUM(valor), 2) AS faturamento_total
FROM user AS u
INNER JOIN planos AS p
ON u.id_plano = p.id_plano;