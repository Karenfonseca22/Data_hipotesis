-- Asignarle valores especificos para crear categorias.
WITH
  categorias AS (
  SELECT
    utw.track_id,
    CASE
      WHEN utw.danceability_porcentaje >= 70 THEN 'Alto'
      WHEN utw.danceability_porcentaje <70
    AND utw.danceability_porcentaje >= 40 THEN 'Medio'
      ELSE 'Bajo'
  END
    AS categ_dance,
    CASE
      WHEN utw.valence_porcentaje >=60 THEN 'Alto'
      WHEN utw.valence_porcentaje <60
    AND utw.valence_porcentaje >=30 THEN 'Medio'
      ELSE 'Bajo'
  END
    AS categ_valance,
    CASE
      WHEN utw.energy_porcentaje >= 70 THEN 'Alto'
      WHEN utw.energy_porcentaje <70
      AND utw.energy_porcentaje >=40 THEN 'Medio'
      ELSE 'Bajo'
    END
    AS categ_energy,
    CASE
    WHEN utw.acousic_porcentaje >=70 THEN 'Alto'
    WHEN utw.acousic_porcentaje <70 
    AND utw.acousic_porcentaje >= 30 THEN 'Medio'
    ELSE 'Bajo'
    END
    AS categ_acoustic,
    CASE
    WHEN utw.instrumental_porcentaje >=50 THEN 'Alto'
    WHEN utw.instrumental_porcentaje <50 
    AND utw.instrumental_porcentaje >= 20 THEN 'Medio'
    ELSE 'Bajo'
    END
    AS categ_instrumental,
    CASE
    WHEN utw.speech_porcentaje <66 
    AND utw.speech_porcentaje >= 33 THEN 'Medio'
    ELSE 'Bajo'
    END
    AS categ_speech
  FROM
    `proyecto-hipotesis-lab1.dataset.union_tablas_with` AS utw
  WHERE
    utw.streams_limpio IS NOT NULL )
SELECT
  ut.*,
  categorias.categ_dance,
  categorias.categ_valance,
  categorias.categ_energy,
  categorias.categ_acoustic,
  categorias.categ_instrumental,
  categorias.categ_speech
FROM
  `proyecto-hipotesis-lab1.dataset.union_tablas_with` AS ut
RIGHT JOIN
  categorias
ON
  categorias.track_id = ut.track_id
