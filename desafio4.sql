SELECT
	p.nome AS usuario,
    IF(MAX(h.data_reproducao) LIKE '2021%',
		'Usuário ativo', 'Usuário inativo'
	) AS condicao_usuario
FROM SpotifyClone.pessoa_usuaria AS p
	JOIN SpotifyClone.historico AS h
		ON p.user_id = h.user_id
GROUP BY usuario
ORDER BY usuario;