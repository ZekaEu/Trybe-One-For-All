SELECT
	p.nome AS usuario,
    COUNT(h.faixa_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(f.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.pessoa_usuaria AS p
	JOIN SpotifyClone.historico AS h
		ON p.user_id = h.user_id
	JOIN SpotifyClone.faixa AS f
		ON h.faixa_id = f.faixa_id
GROUP BY usuario
ORDER BY usuario;