##FORMULA Y QUERY PARA QUITAR CARACTERES ESPECIALES
  
SELECT *
EXCEPT (mode,`liveness_%`)
FROM `proyecto-hipotesis-lab1.dataset.track_technical_info`
