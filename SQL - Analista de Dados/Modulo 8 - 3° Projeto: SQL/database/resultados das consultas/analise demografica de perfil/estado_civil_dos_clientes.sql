SELECT estado_civil,
	COUNT(*) AS qtd_clientes
FROM default.credito
where estado_civil <> 'na'
GROUP BY estado_civil;