SELECT tipo_cartao, AVG(valor_transacoes_12m) AS valor_medio_transacoes
FROM default.credito
GROUP BY tipo_cartao
ORDER BY tipo_cartao desc;