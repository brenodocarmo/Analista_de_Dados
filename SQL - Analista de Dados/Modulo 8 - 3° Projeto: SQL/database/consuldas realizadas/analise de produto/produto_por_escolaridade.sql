SELECT 
    escolaridade,
    SUM(qtd_produtos) AS total_produtos
    
FROM credito

where escolaridade <> 'na'
GROUP BY escolaridade;