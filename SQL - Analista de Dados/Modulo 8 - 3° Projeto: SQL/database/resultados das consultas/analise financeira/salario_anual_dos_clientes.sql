SELECT salario_anual,
	COUNT(*) AS qtd_clientes
FROM default.credito
where salario_anual <> 'na'
GROUP BY salario_anual;