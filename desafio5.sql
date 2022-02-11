SELECT
	f.titulo AS cancao,
    COUNT(h.faixa_id) AS reproducoes
FROM SpotifyClone.faixa AS f
	JOIN SpotifyClone.historico AS h
		ON h.faixa_id = f.faixa_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;