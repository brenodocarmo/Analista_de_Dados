SELECT tipo_cartao, AVG(qtd_produtos) AS media_produtos
FROM default.credito
GROUP BY tipo_cartao
ORDER BY media_produtos DESC;