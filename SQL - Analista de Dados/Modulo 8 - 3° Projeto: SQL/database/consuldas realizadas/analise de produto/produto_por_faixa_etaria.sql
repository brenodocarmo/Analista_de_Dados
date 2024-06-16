SELECT 
    CASE 
        WHEN idade >= 20 AND idade <= 30 THEN 'Idade entre 20 a 30 anos'
        WHEN idade >= 31 AND idade <= 40 THEN 'Idade entre 31 a 40 anos'
        WHEN idade >= 41 AND idade <= 50 THEN 'Idade entre 41 a 50 anos'
        WHEN idade >= 51 AND idade <= 60 THEN 'Idade entre 51 a 60 anos'
        WHEN idade >= 61 AND idade <= 70 THEN 'Idade entre 61 a 70 anos'
        WHEN idade >= 71 THEN 'Idade maior que 71 anos'
    END AS faixa_etaria,
    AVG(qtd_produtos) AS media_produtos
FROM default.credito
GROUP BY 
    CASE 
        WHEN idade >= 20 AND idade <= 30 THEN 'Idade entre 20 a 30 anos'
        WHEN idade >= 31 AND idade <= 40 THEN 'Idade entre 31 a 40 anos'
        WHEN idade >= 41 AND idade <= 50 THEN 'Idade entre 41 a 50 anos'
        WHEN idade >= 51 AND idade <= 60 THEN 'Idade entre 51 a 60 anos'
        WHEN idade >= 61 AND idade <= 70 THEN 'Idade entre 61 a 70 anos'
        WHEN idade >= 71 THEN 'Idade maior que 71 anos'
    END

order by media_produtos desc