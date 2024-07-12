-- Creacion de tabla auxiliar usando WITH

WITH
  total_canciones_solistas AS(
  SELECT
  IF
    (artist_count = 1, artist_s__name_limpio,'NO SOLISTA') AS solista,
    COUNT (*) AS total_canciones
  FROM
    `proyecto-hipotesis-lab1.dataset.union_tablas`
  GROUP BY
    solista)
SELECT
  ut.*,
  IFNULL(tcs.solista, 'No es solista') AS solista,
  IFNULL(tcs.total_canciones,0) AS total_canciones_solista_
FROM
  `proyecto-hipotesis-lab1.dataset.union_tablas` AS ut
LEFT JOIN
  total_canciones_solistas AS tcs
ON
  tcs.solista = ut.artist_s__name_limpio
