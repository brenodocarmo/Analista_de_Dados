SELECT 
    sexo,
    min(valor_transacoes_12m) AS menor_valor_gast,
    avg(valor_transacoes_12m) AS avg_valor_gasto,
    max(valor_transacoes_12m) AS max_valor_gast
    
FROM credito

GROUP BY sexo;
