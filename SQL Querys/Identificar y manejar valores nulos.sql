-- Nulos en tabla de competencia de Spotify

SELECT
  COUNT(*) AS cantidad_nulos
FROM
  `proyecto-hipotesis-lab1.dataset.track-in-competition`
WHERE
  track_id IS NULL
  OR in_apple_playlists IS NULL
  OR in_apple_charts IS NULL
  OR in_deezer_charts IS NULL
  OR in_shazam_charts IS NULL

-- Nulos en tabla de Track in Spotify

SELECT
  COUNT (*) AS cantidad_nulos
FROM
  `proyecto-hipotesis-lab1.dataset.track_in_spotify`
WHERE
  track_id IS NULL
  OR track_name IS NULL
  OR artist_s__name IS NULL
  OR artist_count IS NULL
  OR released_year IS NULL
  OR released_month IS NULL
  OR released_day IS NULL
  OR in_spotify_playlists IS NULL
  OR in_spotify_charts IS NULL
  OR streams IS NULL

-- Nulos en la tabla de track technical information, la consulta a continuación permite ver la cantidad de nulos POR COLUMNA

SELECT
  COUNT(CASE WHEN key IS NULL THEN 1 END) AS nulos_key,
  SUM(CASE WHEN bpm IS NULL THEN 1 ELSE 0 END) AS nulos_bpm,
  SUM(CASE WHEN track_id IS NULL THEN 1 ELSE 0 END) AS nulos_track_id,
  SUM(CASE WHEN MODE IS NULL THEN 1 ELSE 0 END) AS nulos_mode,
  SUM(CASE WHEN `danceability_%` IS NULL THEN 1 ELSE 0 END) AS `nulos_danceability_%`, --si el nombre de la columna contiene caracteres especiales como %, debes rodear el nombre de la columna con comillas invertidas (`)
  SUM(CASE WHEN `valence_%` IS NULL THEN 1 ELSE 0 END) AS `valence_%`,
  SUM(CASE WHEN `energy_%` IS NULL THEN 1 ELSE 0 END) AS `energy_%`,
  SUM(CASE WHEN `acousticness_%` IS NULL THEN 1 ELSE 0 END) AS `acousticness_%`,
  SUM(CASE WHEN `instrumentalness_%` IS NULL THEN 1 ELSE 0 END) AS `instrumentalness_%`,
  SUM(CASE WHEN `liveness_%` IS NULL THEN 1 ELSE 0 END) AS `liveness_%`,
  SUM(CASE WHEN `speechiness_%` IS NULL THEN 1 ELSE 0 END) AS `spechiness_%`,
FROM
  `proyecto-hipotesis-lab1.dataset.track_technical_info`
