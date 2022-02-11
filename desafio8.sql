SELECT
	art.nome AS artista,
    alb.titulo AS album
FROM SpotifyClone.artista AS art
	JOIN SpotifyClone.album AS alb
		ON alb.artista_id = art.artista_id
			WHERE art.nome = 'Walter Phoenix';