-- Correlación de las variables Streams y Danceability; y streams y total participation playlist

SELECT
  CORR(streams_limpio, danceability_porcentaje) AS corr_dance_streams,
  CORR( streams_limpio , total_participation_playlist) AS corr_parti_streams
FROM
  `proyecto-hipotesis-lab1.dataset.union_tablas_with`

-- Correlación de la hipotesis 4, con datos generales y también con datos especificamente del año 2023.

WITH artist_songs AS (
  SELECT
    artist_s__name_limpio,
    COUNT(DISTINCT track_id) AS tracks_totales,
    SUM(streams_limpio) AS total_streams
  FROM `proyecto-hipotesis-lab1.dataset.tabla_general`
  WHERE released_year = 2023
  GROUP BY artist_s__name_limpio
),

correlacion_canciones_total_streams AS (
  SELECT
    CORR(tracks_totales, total_streams) AS hipo_4_2023
  FROM artist_songs
),

correlacion_streams_tracks_per_artist AS (
  SELECT
    CORR(streams_per_artist, num_tracks) AS hipo_4
  FROM `proyecto-hipotesis-lab1.dataset.streams _tracks_per_artist`
)

SELECT
  (SELECT hipo_4_2023 FROM correlacion_canciones_total_streams) AS hipo_4_2023,
  (SELECT hipo_4 FROM correlacion_streams_tracks_per_artist) AS hipo_4
