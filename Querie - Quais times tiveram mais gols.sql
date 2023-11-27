SELECT 
    clube,
   COUNT(*) AS quantidade_gols
FROM gols
GROUP BY clube
ORDER BY quantidade_gols DESC;