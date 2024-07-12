-- Duplicados en tabla Track in competition

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
