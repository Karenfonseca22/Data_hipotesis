## La función CAST en SQL se utiliza para convertir un valor de un tipo de datos a otro. 
--- Formula para convertir el dato de fechas en STRINGS y asi poder pasarlo al formato de fecha, de año, mes y dia

SELECT
  PARSE_DATE('%Y-%m-%d', CONCAT(CAST(released_year AS STRING), '-', CAST(released_month AS STRING), '-', CAST(released_day AS STRING))) AS fecha_lanzamiento
FROM
  `proyecto-hipotesis-lab1.dataset.track_in_spotify`
