Calcular cuartiles y asignarle un titulo, ejemplo alto y bajo
WITH
  Quartiles AS(
  SELECT
    streams_limpio,
    energy_porcentaje,
    valence_porcentaje,
    acousic_porcentaje,
    instrumental_porcentaje,
    speech_porcentaje,
    track_id,
    NTILE(4) OVER (ORDER BY streams_limpio) AS cuartil_streams,
    NTILE(4) OVER (ORDER BY energy_porcentaje) AS cuartil_energy,
    NTILE(4) OVER (ORDER BY valence_porcentaje) AS cuartil_valance,
    NTILE(4) OVER (ORDER BY acousic_porcentaje) AS cuartil_acoustic,
    NTILE(4) OVER (ORDER BY instrumental_porcentaje) AS cuartil_instrumental,
    NTILE(4) OVER (ORDER BY speech_porcentaje) AS cuartil_speech,
    NTILE(4) OVER (ORDER BY liveness_porcentaje) AS cuartil_liveness
  FROM
    `proyecto-hipotesis-lab1.dataset.tabla_general`)
SELECT
  ut.*,
IF
  (Quartiles.cuartil_streams = 4, "alto", "bajo") AS categ_streams,
IF
  (Quartiles.cuartil_energy = 4, "alto", "bajo") AS categ_energy,
IF
  (Quartiles.cuartil_valance = 4, "alto", "bajo") AS categ_valance,
IF
  (Quartiles.cuartil_acoustic = 4, "alto", "bajo") AS categ_acoustic,
IF
  (Quartiles.cuartil_instrumental = 4, "alto", "bajo") AS categ_instrumental,
IF
  (Quartiles.cuartil_speech = 4, "alto", "bajo") AS categ_speech,
IF
  (Quartiles.cuartil_liveness = 4, "alto", "bajo") AS categ_liveness
FROM
  `proyecto-hipotesis-lab1.dataset.tabla_general` ut
LEFT JOIN
  Quartiles
ON
  Quartiles.track_id = ut.track_id

-------------------------------------------------------------------------

Manejo de cuartiles en la variable STREAMS

WITH
  Quartiles AS(
  SELECT
    streams_limpio,
    NTILE(4) OVER (ORDER BY streams_limpio) AS quartile_streams
  FROM
    `proyecto-hipotesis-lab1.dataset.union_tablas_with`
  )

  SELECT
  a.*,
  Quartiles.quartile_streams
  FROM `proyecto-hipotesis-lab1.dataset.union_tablas_with` a

  LEFT JOIN Quartiles
  ON a.streams_limpio = Quartiles.streams_limpio
