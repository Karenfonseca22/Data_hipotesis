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
  OR in_shazam_charts IS NULL;

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
