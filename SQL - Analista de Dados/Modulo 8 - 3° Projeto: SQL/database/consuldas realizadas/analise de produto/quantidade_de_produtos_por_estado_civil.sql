SELECT estado_civil,
	AVG(qtd_produtos) AS media_produtos
FROM default.credito
where estado_civil <> 'na'
GROUP BY estado_civil
ORDER BY media_produtos DESC;