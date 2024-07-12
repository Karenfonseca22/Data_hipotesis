## Datos discrepantes
--- Formula para pasar de STRING A INTEGER con CAST
SELECT *,
IF
  (REGEXP_CONTAINS(streams, r'^[0-9]+$'), CAST(streams AS INT64), NULL) AS stream_limpio
FROM
  `proyecto-hipotesis-lab1.dataset.track_in_spotify`
WHERE
  streams NOT LIKE '%[^0-9]%'

-- Formula para sacar el AVG, MAX y MIN

  SELECT
MAX(stream_limpio) AS maximo,
MIN(stream_limpio) AS minimo,
AVG (stream_limpio) AS promedio,
FROM `proyecto-hipotesis-lab1.dataset.cast_integer_stream`
