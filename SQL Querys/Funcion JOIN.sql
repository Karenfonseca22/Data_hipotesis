## FUNCION JOIN
-- Union de tablas con INNER JOIN
  
  SELECT
  T.*,
  S.track_name_limpio,
  S.artist_s__name_limpio,
  S.artist_count,
  S.streams_limpio,
  S.released_year,
  S.released_month,
  S.released_day,
  S.fecha_lanzamiento,
  S.in_spotify_playlists,
  S.in_spotify_charts,
  C.in_apple_charts,
  C.in_apple_playlists,
  C.in_deezer_charts,
  C.in_deezer_playlists,
  C.in_shazam_charts,
  (S.in_spotify_playlists + C.in_deezer_playlists + C.in_apple_playlists) AS total_participation_playlist
FROM
  `proyecto-hipotesis-lab1.dataset.track_in_competition_limpia` AS C
INNER JOIN
  `proyecto-hipotesis-lab1.dataset.track_spotify_limpia` AS S
ON
  C.track_id = S.track_id
INNER JOIN
  `proyecto-hipotesis-lab1.dataset.track_technical_limpia` AS T
ON
  C.track_id = T.track_id
  
--------------------------------------------------------------------------------------------------------------

-- Cambios que mas adelante se hicieron a la tabla principal con LEFT JOIN

WITH
  livechange AS (
  SELECT
    track_id,
    `liveness_%` AS liveness_porcentaje,
    CASE
      WHEN lvn.`liveness_%` >= 60 THEN 'Alto'
      WHEN lvn.`liveness_%` <60
    AND lvn.`liveness_%` >= 40 THEN 'Medio'
      ELSE 'Bajo'
  END
    AS categ_liveness,
  FROM
    `proyecto-hipotesis-lab1.dataset.track_technical_info` AS lvn )
SELECT
  catg.*,
  livechange.categ_liveness,
  livechange.liveness_porcentaje
FROM
  `proyecto-hipotesis-lab1.dataset.categorias` AS catg
LEFT JOIN
  livechange
ON
  livechange.track_id = catg.track_id
