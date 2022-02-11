SELECT
	art.nome AS artista,
    alb.titulo AS album,
    COUNT(s.user_id) AS seguidores
FROM SpotifyClone.artista AS art
	JOIN SpotifyClone.album AS alb
		ON alb.artista_id = art.artista_id
	JOIN SpotifyClone.seguindo AS s
		ON s.artista_id = art.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista, album;