SELECT 
    salario_anual, 
    tipo_cartao, 
    COUNT(*) AS qtd_clientes
FROM default.credito

where salario_anual <> 'na'
GROUP BY salario_anual, tipo_cartao
ORDER BY salario_anual asc, qtd_clientes desc;
