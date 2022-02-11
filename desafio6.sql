SELECT
	CONCAT(CONVERT(MIN(p.valor), CHAR), '.00') AS faturamento_minimo,
    CONVERT(MAX(p.valor), CHAR) AS faturamento_maximo,
    CONVERT(ROUND(AVG(p.valor), 2), CHAR) AS faturamento_medio,
    CONVERT(ROUND(SUM(p.valor), 2), CHAR) AS faturamento_total
FROM SpotifyClone.plano AS p
	JOIN SpotifyClone.pessoa_usuaria AS p_u
		ON p.plano_id = p_u.plano_id;