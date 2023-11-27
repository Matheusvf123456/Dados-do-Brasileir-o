SELECT 
    clube,
    COUNT(*) AS Maiores_vencedores
FROM (
    SELECT
        CASE 
            WHEN vencedor = mandante THEN mandante
            WHEN vencedor = visitante THEN visitante
            ELSE NULL
        END AS clube
    FROM partidas
    WHERE vencedor IS NOT NULL
) AS vitorias_por_clube
GROUP BY clube
ORDER BY Maiores_vencedores DESC;