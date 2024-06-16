SELECT tipo_cartao, COUNT(*) AS qtd_clientes
FROM default.credito
GROUP BY tipo_cartao
ORDER BY qtd_clientes DESC;