--- Duplicados en tabla Track in competition

  SELECT
  track_id,
  COUNT(*) AS num_tracks
FROM
  `proyecto-hipotesis-lab1.dataset.track-in-competition`
GROUP BY
  track_id
HAVING
num_tracks >1

-- Duplicados en tabla de Spotify y con la cantidad de duplicados que hay en artist_name, y en track_id

WITH
  duplicated_tracks AS (
  SELECT
    track_name,
    artist_s__name,
    COUNT(*) AS cantidad
  FROM
    `proyecto-hipotesis-lab1.dataset.track_in_spotify`
  GROUP BY
    track_name,
    artist_s__name
  HAVING
    cantidad > 1 )
SELECT
  t.track_id,
  t.track_name,
  t.artist_s__name,
  d.cantidad
FROM
  `proyecto-hipotesis-lab1.dataset.track_in_spotify` t
JOIN
  duplicated_tracks d
ON
  t.track_name = d.track_name
  AND t.artist_s__name = d.artist_s__name

-- Duplicados en la tabla TRack technical information

SELECT 
track_id,
COUNT(*) AS num_tracks
FROM `proyecto-hipotesis-lab1.dataset.track_technical_info`
GROUP BY
track_id
HAVING
num_tracks >1

### QUERYS PARA SABER LA INFORMACIÓN EN LA TABLA DE LOS DUPLICADOS

-- Informacion para saber los valores de la tabla competition en los track id seleccionados de la tabla Track in Spotify

SELECT
  Tc.track_id,
  Ts.artist_s__name,
  Ts.track_name,
  Tc.in_apple_charts,
  Tc.in_apple_playlists,
  Tc.in_deezer_charts,
  Tc.in_deezer_playlists,
  Tc.in_shazam_charts,
FROM `proyecto-hipotesis-lab1.dataset.track-in-competition` AS Tc
JOIN
`proyecto-hipotesis-lab1.dataset.track_in_spotify` AS Ts
ON
TC.track_id = Ts.track_id
WHERE
  tc.track_id = '7173596'
OR
  tc.track_id = '5080031'
  OR
  tc.track_id ='3814670'
  OR
  tc.track_id = '5675634'
  OR
  tc.track_id ='8173823'
  OR
  tc.track_id = '4967469'
  OR
  tc.track_id ='1119309'
   OR
  tc.track_id ='4586215'
  ORDER BY
CASE
    WHEN track_id = '7173596' THEN 1
    WHEN track_id = '5080031' THEN 2
    WHEN track_id = '3814670' THEN 3
    WHEN track_id = '5675634' THEN 4
    WHEN track_id = '8173823' THEN 5
    WHEN track_id = '4967469' THEN 6
    WHEN track_id = '1119309' THEN 7
    WHEN track_id = '4586215' THEN 8
END;

-- Información de la tabla Technical cuando tiene track id especificos

SELECT
  *
FROM
  `proyecto-hipotesis-lab1.dataset.track_technical_info`
WHERE
  track_id = '5675634'
  OR track_id = '3814670'
  OR track_id = '7173596'
  OR track_id = '5080031'
  OR track_id = '1119309'
  OR track_id = '4586215'
  OR track_id = '4967469'
  OR track_id = '8173823'
ORDER BY
  CASE
    WHEN track_id = '7173596' THEN 3
    WHEN track_id = '5080031' THEN 4
    WHEN track_id = '3814670' THEN 2
    WHEN track_id = '5675634' THEN 1
    WHEN track_id = '8173823' THEN 8
    WHEN track_id = '4967469' THEN 7
    WHEN track_id = '1119309' THEN 5
    WHEN track_id = '4586215' THEN 6
END
  ;

