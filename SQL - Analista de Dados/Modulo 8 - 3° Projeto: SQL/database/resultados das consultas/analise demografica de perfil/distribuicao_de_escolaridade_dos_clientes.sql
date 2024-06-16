SELECT escolaridade,
	COUNT(*) AS qtd_clientes
FROM default.credito
where escolaridade <> 'na'
GROUP BY escolaridade
order by qtd_clientes desc;