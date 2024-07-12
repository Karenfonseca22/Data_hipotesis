## Traer tablas limpias
Tabla Track techincal information (Limpia)

SELECT
--- traeme solo las columnas siguientes a mencionar
track_id,
bpm,
--- cambia los nombres de las columnas
`danceability_%` AS danceability_porcentaje,
`valence_%` AS valence_porcentaje,
`energy_%` AS energy_porcentaje,
`acousticness_%` AS acousic_porcentaje,
`instrumentalness_%` AS instrumental_porcentaje,
`speechiness_%` AS speech_porcentaje
FROM `proyecto-hipotesis-lab1.dataset.track_technical_info`

-------------------------------------------------------------
Tabla Track Spotify (Limpia)
--- Formula para pasar de STRING A INTEGER
SELECT
track_id,
IF
  (REGEXP_CONTAINS(streams, r'^[0-9]+$'), CAST(streams AS INT64), NULL) AS streams_limpio,
REGEXP_REPLACE(track_name,r'[^a-zA-Z0-9]', ' ') AS track_name_limpio,
REGEXP_REPLACE(artist_s__name,r'[^a-zA-Z0-9]', ' ') AS artist_s__name_limpio,
artist_count,
released_year,
released_month,
released_day,
PARSE_DATE('%Y-%m-%d', CONCAT(CAST(released_year AS STRING), '-', CAST(released_month AS STRING), '-', CAST(released_day AS STRING))) AS fecha_lanzamiento,
in_spotify_playlists,
in_spotify_charts,
FROM
  `proyecto-hipotesis-lab1.dataset.track_in_spotify`
--- '%[^0-9]%' Significa caracteres no numericos

---------------------------------------------------------------
Tabla Track Competition (Limpia)

SELECT *
FROM `proyecto-hipotesis-lab1.dataset.track-in-competition`
