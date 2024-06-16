SELECT sexo, COUNT(*) AS qtd_clientes
FROM default.credito
GROUP BY sexo;