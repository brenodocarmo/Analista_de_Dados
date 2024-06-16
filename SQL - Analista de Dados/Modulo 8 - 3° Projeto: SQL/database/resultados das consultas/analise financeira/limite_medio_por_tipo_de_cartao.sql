SELECT tipo_cartao, AVG(limite_credito) AS limite_medio
FROM default.credito
GROUP BY tipo_cartao
ORDER BY tipo_cartao desc;